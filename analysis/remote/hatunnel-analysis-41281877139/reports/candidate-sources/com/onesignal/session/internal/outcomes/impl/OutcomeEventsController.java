package com.onesignal.session.internal.outcomes.impl;

import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.common.NetworkUtils;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.session.internal.influence.IInfluenceManager;
import com.onesignal.session.internal.influence.Influence;
import com.onesignal.session.internal.influence.InfluenceChannel;
import com.onesignal.session.internal.influence.InfluenceType;
import com.onesignal.session.internal.outcomes.IOutcomeEventsController;
import com.onesignal.session.internal.session.ISessionLifecycleHandler;
import com.onesignal.session.internal.session.ISessionService;
import com.onesignal.user.internal.backend.SubscriptionObjectType;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.subscriptions.ISubscriptionManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BU\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J,\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u001b2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020#H\u0016J\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\u0016\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0082@¢\u0006\u0002\u0010,J\u0010\u0010-\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0002J\b\u0010.\u001a\u00020#H\u0002J\u0010\u0010/\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0002J6\u00100\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020&2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@¢\u0006\u0002\u00105J\u0018\u00106\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u00107J \u00108\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u00102\u001a\u000203H\u0096@¢\u0006\u0002\u00109J\u0016\u0010:\u001a\u00020#2\u0006\u0010;\u001a\u00020+H\u0082@¢\u0006\u0002\u0010,J\u000e\u0010<\u001a\u00020#H\u0082@¢\u0006\u0002\u0010=J\u0018\u0010>\u001a\u0004\u0018\u0001012\u0006\u0010%\u001a\u00020&H\u0096@¢\u0006\u0002\u0010?J\u0018\u0010@\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u00107J&\u0010@\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001b2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@¢\u0006\u0002\u0010!J\u0018\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u001e2\u0006\u0010E\u001a\u00020CH\u0002J\b\u0010F\u001a\u00020#H\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsController;", "Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;", "Lcom/onesignal/core/internal/startup/IStartableService;", "Lcom/onesignal/session/internal/session/ISessionLifecycleHandler;", "_session", "Lcom/onesignal/session/internal/session/ISessionService;", "_influenceManager", "Lcom/onesignal/session/internal/influence/IInfluenceManager;", "_outcomeEventsCache", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsRepository;", "_outcomeEventsPreferences", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsPreferences;", "_outcomeEventsBackend", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsBackendService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "_subscriptionManager", "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/session/internal/session/ISessionService;Lcom/onesignal/session/internal/influence/IInfluenceManager;Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsRepository;Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsPreferences;Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsBackendService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/core/internal/time/ITime;)V", "unattributedUniqueOutcomeEventsSentOnSession", "", "", "getUniqueIds", "", "Lcom/onesignal/session/internal/influence/Influence;", "name", "influences", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSessionActive", "", "onSessionEnded", "duration", "", "onSessionStarted", "removeDisabledInfluences", "requestMeasureOutcomeEvent", "eventParams", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;", "(Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveAttributedUniqueOutcomeNotifications", "saveUnattributedUniqueOutcomeEvents", "saveUniqueOutcome", "sendAndCreateOutcomeEvent", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEvent;", "weight", "", "sessionTime", "(Ljava/lang/String;FJLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendOutcomeEvent", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendOutcomeEventWithValue", "(Ljava/lang/String;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendSavedOutcomeEvent", "event", "sendSavedOutcomes", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendSessionEndOutcomeEvent", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendUniqueOutcomeEvent", "sessionInfluences", "setSourceChannelIds", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;", "influence", "sourceBody", "start", "com.onesignal.core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OutcomeEventsController implements IOutcomeEventsController, IStartableService, ISessionLifecycleHandler {
    private final ConfigModelStore _configModelStore;
    private final IDeviceService _deviceService;
    private final IdentityModelStore _identityModelStore;
    private final IInfluenceManager _influenceManager;
    private final IOutcomeEventsBackendService _outcomeEventsBackend;
    private final IOutcomeEventsRepository _outcomeEventsCache;
    private final IOutcomeEventsPreferences _outcomeEventsPreferences;
    private final ISessionService _session;
    private final ISubscriptionManager _subscriptionManager;
    private final ITime _time;
    private Set<String> unattributedUniqueOutcomeEventsSentOnSession;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;
        public static final int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[InfluenceType.values().length];
            try {
                iArr[InfluenceType.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InfluenceType.INDIRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InfluenceType.UNATTRIBUTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InfluenceType.DISABLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[InfluenceChannel.values().length];
            try {
                iArr2[InfluenceChannel.IAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[InfluenceChannel.NOTIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {}, l = {298}, m = "getUniqueIds", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.access$getUniqueIds(OutcomeEventsController.this, null, null, this);
        }
    }

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$saveAttributedUniqueOutcomeNotifications$1", f = "OutcomeEventsController.kt", i = {}, l = {279}, m = "invokeSuspend", n = {}, s = {})
    static final class C02891 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final OutcomeEventParams $eventParams;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02891(OutcomeEventParams outcomeEventParams, Continuation<? super C02891> continuation) {
            super(1, continuation);
            this.$eventParams = outcomeEventParams;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return OutcomeEventsController.this.new C02891(this.$eventParams, continuation);
        }

        @Override
        public Object invoke(Continuation<? super Unit> continuation) {
            return invoke2(continuation);
        }

        public final Object invoke2(Continuation<? super Unit> continuation) {
            return ((C02891) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (OutcomeEventsController.access$get_outcomeEventsCache$p(OutcomeEventsController.this).saveUniqueOutcomeEventParams(this.$eventParams, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException(ProtectedFastSSH.s("Ꝝ"));
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 0, 0, 0}, l = {214, 229, 232}, m = "sendAndCreateOutcomeEvent", n = {"this", "name", "eventParams", "timestampSeconds"}, s = {"L$0", "L$1", "L$2", "J$0"})
    static final class C02901 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        C02901(Continuation<? super C02901> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.access$sendAndCreateOutcomeEvent(OutcomeEventsController.this, null, 0.0f, 0L, null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 0, 1, 1}, l = {74, 76, 85}, m = "sendSavedOutcomeEvent", n = {"this", "event", "this", "event"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C02911 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C02911(Continuation<? super C02911> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.access$sendSavedOutcomeEvent(OutcomeEventsController.this, null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 1}, l = {66, 68}, m = "sendSavedOutcomes", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C02921 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C02921(Continuation<? super C02921> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.access$sendSavedOutcomes(OutcomeEventsController.this, this);
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 0, 0}, l = {138, 151, 167}, m = "sendUniqueOutcomeEvent", n = {"this", "name", "influences"}, s = {"L$0", "L$1", "L$2"})
    static final class AnonymousClass2 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.access$sendUniqueOutcomeEvent(OutcomeEventsController.this, null, null, this);
        }
    }

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$start$1", f = "OutcomeEventsController.kt", i = {}, l = {45, 46}, m = "invokeSuspend", n = {}, s = {})
    static final class C02931 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        C02931(Continuation<? super C02931> continuation) {
            super(1, continuation);
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return OutcomeEventsController.this.new C02931(continuation);
        }

        @Override
        public Object invoke(Continuation<? super Unit> continuation) {
            return invoke2(continuation);
        }

        public final Object invoke2(Continuation<? super Unit> continuation) {
            return ((C02931) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        
            if (com.onesignal.session.internal.outcomes.impl.OutcomeEventsController.access$get_outcomeEventsCache$p(r4.this$0).cleanCachedUniqueOutcomeEventNotifications(r4) == r0) goto L15;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (OutcomeEventsController.access$sendSavedOutcomes(OutcomeEventsController.this, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException(ProtectedFastSSH.s("ꝝ"));
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
            this.label = 2;
        }
    }

    public OutcomeEventsController(ISessionService iSessionService, IInfluenceManager iInfluenceManager, IOutcomeEventsRepository iOutcomeEventsRepository, IOutcomeEventsPreferences iOutcomeEventsPreferences, IOutcomeEventsBackendService iOutcomeEventsBackendService, ConfigModelStore configModelStore, IdentityModelStore identityModelStore, ISubscriptionManager iSubscriptionManager, IDeviceService iDeviceService, ITime iTime) {
        LinkedHashSet mutableSet;
        Intrinsics.checkNotNullParameter(iSessionService, ProtectedFastSSH.s("Ꝟ"));
        Intrinsics.checkNotNullParameter(iInfluenceManager, ProtectedFastSSH.s("ꝟ"));
        Intrinsics.checkNotNullParameter(iOutcomeEventsRepository, ProtectedFastSSH.s("Ꝡ"));
        Intrinsics.checkNotNullParameter(iOutcomeEventsPreferences, ProtectedFastSSH.s("ꝡ"));
        Intrinsics.checkNotNullParameter(iOutcomeEventsBackendService, ProtectedFastSSH.s("Ꝣ"));
        Intrinsics.checkNotNullParameter(configModelStore, ProtectedFastSSH.s("ꝣ"));
        Intrinsics.checkNotNullParameter(identityModelStore, ProtectedFastSSH.s("Ꝥ"));
        Intrinsics.checkNotNullParameter(iSubscriptionManager, ProtectedFastSSH.s("ꝥ"));
        Intrinsics.checkNotNullParameter(iDeviceService, ProtectedFastSSH.s("Ꝧ"));
        Intrinsics.checkNotNullParameter(iTime, ProtectedFastSSH.s("ꝧ"));
        this._session = iSessionService;
        this._influenceManager = iInfluenceManager;
        this._outcomeEventsCache = iOutcomeEventsRepository;
        this._outcomeEventsPreferences = iOutcomeEventsPreferences;
        this._outcomeEventsBackend = iOutcomeEventsBackendService;
        this._configModelStore = configModelStore;
        this._identityModelStore = identityModelStore;
        this._subscriptionManager = iSubscriptionManager;
        this._deviceService = iDeviceService;
        this._time = iTime;
        this.unattributedUniqueOutcomeEventsSentOnSession = new LinkedHashSet();
        Set<String> unattributedUniqueOutcomeEventsSentByChannel = iOutcomeEventsPreferences.getUnattributedUniqueOutcomeEventsSentByChannel();
        this.unattributedUniqueOutcomeEventsSentOnSession = (unattributedUniqueOutcomeEventsSentByChannel == null || (mutableSet = CollectionsKt.toMutableSet(unattributedUniqueOutcomeEventsSentByChannel)) == null) ? new LinkedHashSet() : mutableSet;
        iSessionService.subscribe(this);
    }

    public static final Object access$getUniqueIds(OutcomeEventsController outcomeEventsController, String str, List list, Continuation continuation) {
        return outcomeEventsController.getUniqueIds(str, list, continuation);
    }

    public static final IOutcomeEventsRepository access$get_outcomeEventsCache$p(OutcomeEventsController outcomeEventsController) {
        return outcomeEventsController._outcomeEventsCache;
    }

    public static final Object access$requestMeasureOutcomeEvent(OutcomeEventsController outcomeEventsController, OutcomeEventParams outcomeEventParams, Continuation continuation) {
        return outcomeEventsController.requestMeasureOutcomeEvent(outcomeEventParams, continuation);
    }

    public static final Object access$sendAndCreateOutcomeEvent(OutcomeEventsController outcomeEventsController, String str, float f, long j, List list, Continuation continuation) {
        return outcomeEventsController.sendAndCreateOutcomeEvent(str, f, j, list, continuation);
    }

    public static final Object access$sendSavedOutcomeEvent(OutcomeEventsController outcomeEventsController, OutcomeEventParams outcomeEventParams, Continuation continuation) {
        return outcomeEventsController.sendSavedOutcomeEvent(outcomeEventParams, continuation);
    }

    public static final Object access$sendSavedOutcomes(OutcomeEventsController outcomeEventsController, Continuation continuation) {
        return outcomeEventsController.sendSavedOutcomes(continuation);
    }

    public static final Object access$sendUniqueOutcomeEvent(OutcomeEventsController outcomeEventsController, String str, List list, Continuation continuation) {
        return outcomeEventsController.sendUniqueOutcomeEvent(str, list, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    private final Object getUniqueIds(String str, List<Influence> list, Continuation<? super List<Influence>> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object notCachedUniqueInfluencesForOutcome = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(notCachedUniqueInfluencesForOutcome);
            IOutcomeEventsRepository iOutcomeEventsRepository = this._outcomeEventsCache;
            anonymousClass1.label = 1;
            notCachedUniqueInfluencesForOutcome = iOutcomeEventsRepository.getNotCachedUniqueInfluencesForOutcome(str, list, anonymousClass1);
            if (notCachedUniqueInfluencesForOutcome == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꝩ"));
            }
            ResultKt.throwOnFailure(notCachedUniqueInfluencesForOutcome);
        }
        List list2 = (List) notCachedUniqueInfluencesForOutcome;
        if (list2.isEmpty()) {
            return null;
        }
        return list2;
    }

    private final List<Influence> removeDisabledInfluences(List<Influence> influences) {
        List<Influence> mutableList = CollectionsKt.toMutableList((Collection) influences);
        for (Influence influence : influences) {
            if (influence.getInfluenceType().isDisabled()) {
                Logging.debug$default(ProtectedFastSSH.s("ꝩ") + influence.getInfluenceChannel(), null, 2, null);
                mutableList.remove(influence);
            }
        }
        return mutableList;
    }

    private final Object requestMeasureOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) throws BackendException {
        Boolean boolBoxBoolean;
        String appId = this._configModelStore.getModel().getAppId();
        String id = this._subscriptionManager.getSubscriptions().getPush().getId();
        String value = SubscriptionObjectType.INSTANCE.fromDeviceType(this._deviceService.getDeviceType()).getValue();
        if (id.length() == 0 || value.length() == 0) {
            throw new BackendException(0, null, null, 6, null);
        }
        OutcomeEvent outcomeEventFromOutcomeEventParamstoOutcomeEvent = OutcomeEvent.INSTANCE.fromOutcomeEventParamstoOutcomeEvent(outcomeEventParams);
        int i = WhenMappings.$EnumSwitchMapping$0[outcomeEventFromOutcomeEventParamstoOutcomeEvent.getSession().ordinal()];
        if (i != 1) {
            boolBoxBoolean = i != 2 ? null : Boxing.boxBoolean(false);
        } else {
            boolBoxBoolean = Boxing.boxBoolean(true);
        }
        Object objSendOutcomeEvent = this._outcomeEventsBackend.sendOutcomeEvent(appId, this._identityModelStore.getModel().getOnesignalId(), id, value, boolBoxBoolean, outcomeEventFromOutcomeEventParamstoOutcomeEvent, continuation);
        return objSendOutcomeEvent == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSendOutcomeEvent : Unit.INSTANCE;
    }

    private final void saveAttributedUniqueOutcomeNotifications(OutcomeEventParams eventParams) {
        ThreadUtilsKt.suspendifyOnIO(new C02891(eventParams, null));
    }

    private final void saveUnattributedUniqueOutcomeEvents() {
        this._outcomeEventsPreferences.setUnattributedUniqueOutcomeEventsSentByChannel(this.unattributedUniqueOutcomeEventsSentOnSession);
    }

    private final void saveUniqueOutcome(OutcomeEventParams eventParams) {
        if (eventParams.isUnattributed()) {
            saveUnattributedUniqueOutcomeEvents();
        } else {
            saveAttributedUniqueOutcomeNotifications(eventParams);
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0150  */
    /* JADX WARN: Code duplicated, block: B:64:0x017c  */
    /* JADX WARN: Code duplicated, block: B:66:0x01a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:67:0x01a5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Instruction removed from duplicated block: B:61:0x0150, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:64:0x017c, please report this as an issue */
    private final Object sendAndCreateOutcomeEvent(String str, float f, long j, List<Influence> list, Continuation<? super OutcomeEvent> continuation) throws Throwable {
        C02901 c02901;
        String str2;
        long j2;
        OutcomeEventParams outcomeEventParams;
        OutcomeEventsController outcomeEventsController;
        String str3;
        NetworkUtils.ResponseStatusType responseStatusType;
        String str4;
        IOutcomeEventsRepository iOutcomeEventsRepository;
        IOutcomeEventsRepository iOutcomeEventsRepository2;
        if (continuation instanceof C02901) {
            c02901 = (C02901) continuation;
            if ((c02901.label & Integer.MIN_VALUE) != 0) {
                c02901.label -= Integer.MIN_VALUE;
            } else {
                c02901 = new C02901(continuation);
            }
        } else {
            c02901 = new C02901(continuation);
        }
        Object obj = c02901.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02901.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long currentTimeMillis = this._time.getCurrentTimeMillis() / ((long) 1000);
            boolean z = false;
            OutcomeSourceBody sourceChannelIds = null;
            OutcomeSourceBody sourceChannelIds2 = null;
            for (Influence influence : list) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[influence.getInfluenceType().ordinal()];
                if (i2 == 1) {
                    if (sourceChannelIds == null) {
                        sourceChannelIds = new OutcomeSourceBody(null, null, 3, null);
                    }
                    sourceChannelIds = setSourceChannelIds(influence, sourceChannelIds);
                } else if (i2 == 2) {
                    if (sourceChannelIds2 == null) {
                        sourceChannelIds2 = new OutcomeSourceBody(null, null, 3, null);
                    }
                    sourceChannelIds2 = setSourceChannelIds(influence, sourceChannelIds2);
                } else if (i2 == 3) {
                    z = true;
                } else if (i2 == 4) {
                    Logging.verbose$default(ProtectedFastSSH.s("Ꝫ") + influence.getInfluenceChannel(), null, 2, null);
                }
            }
            if (sourceChannelIds == null && sourceChannelIds2 == null && !z) {
                Logging.verbose$default(ProtectedFastSSH.s("ꝫ"), null, 2, null);
                return null;
            }
            OutcomeEventParams outcomeEventParams2 = new OutcomeEventParams(str, new OutcomeSource(sourceChannelIds, sourceChannelIds2), f, j, 0L);
            try {
                c02901.L$0 = this;
                str2 = str;
                try {
                    c02901.L$1 = str2;
                    c02901.L$2 = outcomeEventParams2;
                    c02901.J$0 = currentTimeMillis;
                    c02901.label = 1;
                    if (requestMeasureOutcomeEvent(outcomeEventParams2, c02901) != coroutine_suspended) {
                        j2 = currentTimeMillis;
                        outcomeEventParams = outcomeEventParams2;
                        str3 = str2;
                        outcomeEventsController = this;
                    }
                } catch (BackendException e) {
                    e = e;
                    j2 = currentTimeMillis;
                    outcomeEventParams = outcomeEventParams2;
                    outcomeEventsController = this;
                    responseStatusType = NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode());
                    str4 = ProtectedFastSSH.s("Ꝭ") + str2 + ProtectedFastSSH.s("ꝭ") + e.getStatusCode() + ProtectedFastSSH.s("Ꝯ") + e.getResponse();
                    if (responseStatusType != NetworkUtils.ResponseStatusType.RETRYABLE) {
                        Logging.info$default(str4 + ProtectedFastSSH.s("ꝯ"), null, 2, null);
                        outcomeEventParams.setTimestamp(j2);
                        iOutcomeEventsRepository2 = outcomeEventsController._outcomeEventsCache;
                        c02901.L$0 = null;
                        c02901.L$1 = null;
                        c02901.L$2 = null;
                        c02901.label = 2;
                        if (iOutcomeEventsRepository2.saveOutcomeEvent(outcomeEventParams, c02901) != coroutine_suspended) {
                            return null;
                        }
                    } else {
                        Logging.warn$default(str4 + ProtectedFastSSH.s("ꝰ"), null, 2, null);
                        iOutcomeEventsRepository = outcomeEventsController._outcomeEventsCache;
                        c02901.L$0 = null;
                        c02901.L$1 = null;
                        c02901.L$2 = null;
                        c02901.label = 3;
                        if (iOutcomeEventsRepository.deleteOldOutcomeEvent(outcomeEventParams, c02901) != coroutine_suspended) {
                            return null;
                        }
                    }
                }
            } catch (BackendException e2) {
                e = e2;
                str2 = str;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2 && i != 3) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꝩ"));
            }
            ResultKt.throwOnFailure(obj);
            return null;
        }
        j2 = c02901.J$0;
        outcomeEventParams = (OutcomeEventParams) c02901.L$2;
        str3 = (String) c02901.L$1;
        outcomeEventsController = (OutcomeEventsController) c02901.L$0;
        try {
            ResultKt.throwOnFailure(obj);
        } catch (BackendException e3) {
            e = e3;
            str2 = str3;
            responseStatusType = NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode());
            str4 = ProtectedFastSSH.s("Ꝭ") + str2 + ProtectedFastSSH.s("ꝭ") + e.getStatusCode() + ProtectedFastSSH.s("Ꝯ") + e.getResponse();
            if (responseStatusType != NetworkUtils.ResponseStatusType.RETRYABLE) {
                Logging.warn$default(str4 + ProtectedFastSSH.s("ꝰ"), null, 2, null);
                iOutcomeEventsRepository = outcomeEventsController._outcomeEventsCache;
                c02901.L$0 = null;
                c02901.L$1 = null;
                c02901.L$2 = null;
                c02901.label = 3;
                if (iOutcomeEventsRepository.deleteOldOutcomeEvent(outcomeEventParams, c02901) != coroutine_suspended) {
                    return coroutine_suspended;
                }
                return null;
            }
            Logging.info$default(str4 + ProtectedFastSSH.s("ꝯ"), null, 2, null);
            outcomeEventParams.setTimestamp(j2);
            iOutcomeEventsRepository2 = outcomeEventsController._outcomeEventsCache;
            c02901.L$0 = null;
            c02901.L$1 = null;
            c02901.L$2 = null;
            c02901.label = 2;
            if (iOutcomeEventsRepository2.saveOutcomeEvent(outcomeEventParams, c02901) != coroutine_suspended) {
                return coroutine_suspended;
            }
            return null;
        }
        outcomeEventsController.saveUniqueOutcome(outcomeEventParams);
        return OutcomeEvent.INSTANCE.fromOutcomeEventParamstoOutcomeEvent(outcomeEventParams);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
    
        if (r10.deleteOldOutcomeEvent(r9, r0) == r1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fe, code lost:
    
        if (r10.deleteOldOutcomeEvent(r9, r0) == r1) goto L39;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Object sendSavedOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) throws Throwable {
        C02911 c02911;
        OutcomeEventsController outcomeEventsController;
        if (continuation instanceof C02911) {
            c02911 = (C02911) continuation;
            if ((c02911.label & Integer.MIN_VALUE) != 0) {
                c02911.label -= Integer.MIN_VALUE;
            } else {
                c02911 = new C02911(continuation);
            }
        } else {
            c02911 = new C02911(continuation);
        }
        Object obj = c02911.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        OutcomeEventsController outcomeEventsController2 = c02911.label;
        try {
            if (outcomeEventsController2 != 0) {
                if (outcomeEventsController2 == 1) {
                    outcomeEventParams = (OutcomeEventParams) c02911.L$1;
                    outcomeEventsController = (OutcomeEventsController) c02911.L$0;
                    ResultKt.throwOnFailure(obj);
                } else if (outcomeEventsController2 == 2) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (outcomeEventsController2 != 3) {
                        throw new IllegalStateException(ProtectedFastSSH.s("Ꝩ"));
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            try {
                c02911.L$0 = this;
                c02911.L$1 = outcomeEventParams;
                c02911.label = 1;
                if (requestMeasureOutcomeEvent(outcomeEventParams, c02911) != coroutine_suspended) {
                    outcomeEventsController = this;
                }
            } catch (BackendException e) {
                e = e;
                outcomeEventsController2 = this;
                NetworkUtils.ResponseStatusType responseStatusType = NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode());
                String str = ProtectedFastSSH.s("ꝱ") + outcomeEventParams.getOutcomeId() + ProtectedFastSSH.s("ꝭ") + e.getStatusCode() + ProtectedFastSSH.s("Ꝯ") + e.getResponse();
                if (responseStatusType == NetworkUtils.ResponseStatusType.RETRYABLE) {
                    Logging.info$default(str + ProtectedFastSSH.s("ꝯ"), null, 2, null);
                } else {
                    Logging.warn$default(str + ProtectedFastSSH.s("ꝰ"), null, 2, null);
                    IOutcomeEventsRepository iOutcomeEventsRepository = outcomeEventsController2._outcomeEventsCache;
                    c02911.L$0 = null;
                    c02911.L$1 = null;
                    c02911.label = 3;
                }
            }
            return coroutine_suspended;
            IOutcomeEventsRepository iOutcomeEventsRepository2 = outcomeEventsController._outcomeEventsCache;
            c02911.L$0 = outcomeEventsController;
            c02911.L$1 = outcomeEventParams;
            c02911.label = 2;
        } catch (BackendException e2) {
            e = e2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0068  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:? A[LOOP:0: B:21:0x0062->B:31:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    private final Object sendSavedOutcomes(Continuation<? super Unit> continuation) throws Throwable {
        C02921 c02921;
        OutcomeEventsController outcomeEventsController;
        OutcomeEventsController outcomeEventsController2;
        Iterator it;
        OutcomeEventParams outcomeEventParams;
        if (continuation instanceof C02921) {
            c02921 = (C02921) continuation;
            if ((c02921.label & Integer.MIN_VALUE) != 0) {
                c02921.label -= Integer.MIN_VALUE;
            } else {
                c02921 = new C02921(continuation);
            }
        } else {
            c02921 = new C02921(continuation);
        }
        Object allEventsToSend = c02921.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02921.label;
        if (i == 0) {
            ResultKt.throwOnFailure(allEventsToSend);
            IOutcomeEventsRepository iOutcomeEventsRepository = this._outcomeEventsCache;
            c02921.L$0 = this;
            c02921.label = 1;
            allEventsToSend = iOutcomeEventsRepository.getAllEventsToSend(c02921);
            if (allEventsToSend != coroutine_suspended) {
                outcomeEventsController = this;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            outcomeEventsController = (OutcomeEventsController) c02921.L$0;
            ResultKt.throwOnFailure(allEventsToSend);
        } else {
            if (i != 2) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꝩ"));
            }
            it = (Iterator) c02921.L$1;
            outcomeEventsController2 = (OutcomeEventsController) c02921.L$0;
            ResultKt.throwOnFailure(allEventsToSend);
        }
        while (it.hasNext()) {
            outcomeEventParams = (OutcomeEventParams) it.next();
            c02921.L$0 = outcomeEventsController2;
            c02921.L$1 = it;
            c02921.label = 2;
            if (outcomeEventsController2.sendSavedOutcomeEvent(outcomeEventParams, c02921) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
        outcomeEventsController2 = outcomeEventsController;
        it = ((List) allEventsToSend).iterator();
        while (it.hasNext()) {
            outcomeEventParams = (OutcomeEventParams) it.next();
            c02921.L$0 = outcomeEventsController2;
            c02921.L$1 = it;
            c02921.label = 2;
            if (outcomeEventsController2.sendSavedOutcomeEvent(outcomeEventParams, c02921) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    private final Object sendUniqueOutcomeEvent(String str, List<Influence> list, Continuation<? super OutcomeEvent> continuation) throws Throwable {
        AnonymousClass2 anonymousClass2;
        List<Influence> listRemoveDisabledInfluences;
        OutcomeEventsController outcomeEventsController;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(continuation);
        }
        AnonymousClass2 anonymousClass3 = anonymousClass2;
        Object uniqueIds = anonymousClass3.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass3.label;
        String strS = ProtectedFastSSH.s("ꝲ");
        String strS2 = ProtectedFastSSH.s("ꝳ");
        if (i == 0) {
            ResultKt.throwOnFailure(uniqueIds);
            listRemoveDisabledInfluences = removeDisabledInfluences(list);
            if (listRemoveDisabledInfluences.isEmpty()) {
                Logging.debug$default(ProtectedFastSSH.s("ꝴ"), null, 2, null);
                return null;
            }
            Iterator<Influence> it = listRemoveDisabledInfluences.iterator();
            do {
                if (!it.hasNext()) {
                    if (this.unattributedUniqueOutcomeEventsSentOnSession.contains(str)) {
                        Logging.debug$default(StringsKt.trimIndent(ProtectedFastSSH.s("ꝶ") + InfluenceType.UNATTRIBUTED + strS2 + str + strS), null, 2, null);
                        return null;
                    }
                    this.unattributedUniqueOutcomeEventsSentOnSession.add(str);
                    anonymousClass3.label = 3;
                    Object objSendAndCreateOutcomeEvent = sendAndCreateOutcomeEvent(str, 0.0f, 0L, listRemoveDisabledInfluences, anonymousClass3);
                    if (objSendAndCreateOutcomeEvent != coroutine_suspended) {
                        return objSendAndCreateOutcomeEvent;
                    }
                }
            } while (!it.next().getInfluenceType().isAttributed());
            anonymousClass3.L$0 = this;
            anonymousClass3.L$1 = str;
            anonymousClass3.L$2 = listRemoveDisabledInfluences;
            anonymousClass3.label = 1;
            uniqueIds = getUniqueIds(str, listRemoveDisabledInfluences, anonymousClass3);
            if (uniqueIds != coroutine_suspended) {
                outcomeEventsController = this;
            }
        }
        if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(uniqueIds);
                return uniqueIds;
            }
            if (i != 3) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꝩ"));
            }
            ResultKt.throwOnFailure(uniqueIds);
            return uniqueIds;
        }
        List<Influence> list2 = (List) anonymousClass3.L$2;
        String str2 = (String) anonymousClass3.L$1;
        outcomeEventsController = (OutcomeEventsController) anonymousClass3.L$0;
        ResultKt.throwOnFailure(uniqueIds);
        listRemoveDisabledInfluences = list2;
        str = str2;
        List<Influence> list3 = (List) uniqueIds;
        if (list3 != null) {
            anonymousClass3.L$0 = null;
            anonymousClass3.L$1 = null;
            anonymousClass3.L$2 = null;
            anonymousClass3.label = 2;
            Object objSendAndCreateOutcomeEvent2 = outcomeEventsController.sendAndCreateOutcomeEvent(str, 0.0f, 0L, list3, anonymousClass3);
            return objSendAndCreateOutcomeEvent2 == coroutine_suspended ? coroutine_suspended : objSendAndCreateOutcomeEvent2;
        }
        Logging.debug$default(StringsKt.trimIndent(ProtectedFastSSH.s("ꝵ") + listRemoveDisabledInfluences + strS2 + str + strS), null, 2, null);
        return null;
    }

    private final OutcomeSourceBody setSourceChannelIds(Influence influence, OutcomeSourceBody sourceBody) {
        int i = WhenMappings.$EnumSwitchMapping$1[influence.getInfluenceChannel().ordinal()];
        if (i == 1) {
            sourceBody.setInAppMessagesIds(influence.getIds());
            return sourceBody;
        }
        if (i != 2) {
            return sourceBody;
        }
        sourceBody.setNotificationIds(influence.getIds());
        return sourceBody;
    }

    @Override
    public void onSessionActive() {
    }

    @Override
    public void onSessionEnded(long duration) {
    }

    @Override
    public void onSessionStarted() {
        Logging.debug$default(ProtectedFastSSH.s("ꝷ"), null, 2, null);
        this.unattributedUniqueOutcomeEventsSentOnSession = new LinkedHashSet();
        saveUnattributedUniqueOutcomeEvents();
    }

    @Override
    public Object sendOutcomeEvent(String str, Continuation<? super OutcomeEvent> continuation) {
        return sendAndCreateOutcomeEvent(str, 0.0f, 0L, this._influenceManager.getInfluences(), continuation);
    }

    @Override
    public Object sendOutcomeEventWithValue(String str, float f, Continuation<? super OutcomeEvent> continuation) {
        return sendAndCreateOutcomeEvent(str, f, 0L, this._influenceManager.getInfluences(), continuation);
    }

    @Override
    public Object sendSessionEndOutcomeEvent(long j, Continuation<? super OutcomeEvent> continuation) {
        return sendAndCreateOutcomeEvent(ProtectedFastSSH.s("ꝸ"), 0.0f, j, this._influenceManager.getInfluences(), continuation);
    }

    @Override
    public Object sendUniqueOutcomeEvent(String str, Continuation<? super OutcomeEvent> continuation) {
        return sendUniqueOutcomeEvent(str, this._influenceManager.getInfluences(), continuation);
    }

    @Override
    public void start() {
        ThreadUtilsKt.suspendifyOnIO(new C02931(null));
    }
}
