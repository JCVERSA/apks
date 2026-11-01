package com.onesignal.session.internal.outcomes.impl;

import android.content.ContentValues;
import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.core.internal.database.ICursor;
import com.onesignal.core.internal.database.IDatabase;
import com.onesignal.core.internal.database.IDatabaseProvider;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.session.internal.influence.Influence;
import com.onesignal.session.internal.influence.InfluenceChannel;
import com.onesignal.session.internal.influence.InfluenceType;
import com.onesignal.session.internal.outcomes.migrations.RemoveInvalidSessionTimeRecords;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONArray;
import org.json.JSONException;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J \u0010\u000e\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u000e\u0010\u0011\u001a\u00020\u0006H\u0096@¢\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0096@¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u0018H\u0096@¢\u0006\u0002\u0010\u0012J4\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0002J*\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00182\u0006\u0010$\u001a\u00020 2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020#0\u0018H\u0096@¢\u0006\u0002\u0010&J*\u0010'\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010)\u001a\u00020 H\u0002J\u0016\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0015H\u0096@¢\u0006\u0002\u0010\u0016J\u0016\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0015H\u0096@¢\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsRepository;", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsRepository;", "_databaseProvider", "Lcom/onesignal/core/internal/database/IDatabaseProvider;", "(Lcom/onesignal/core/internal/database/IDatabaseProvider;)V", "addIdToListFromChannel", "", "cachedUniqueOutcomes", "", "Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;", "channelIds", "Lorg/json/JSONArray;", "channel", "Lcom/onesignal/session/internal/influence/InfluenceChannel;", "addIdsToListFromSource", "sourceBody", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;", "cleanCachedUniqueOutcomeEventNotifications", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOldOutcomeEvent", "event", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;", "(Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllEventsToSend", "", "getIAMInfluenceSource", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;", "iamInfluenceType", "Lcom/onesignal/session/internal/influence/InfluenceType;", "directSourceBody", "indirectSourceBody", "iamIds", "", "source", "getNotCachedUniqueInfluencesForOutcome", "Lcom/onesignal/session/internal/influence/Influence;", "name", "influences", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getNotificationInfluenceSource", "notificationInfluenceType", "notificationIds", "saveOutcomeEvent", "eventParams", "saveUniqueOutcomeEventParams", "com.onesignal.core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OutcomeEventsRepository implements IOutcomeEventsRepository {
    private final IDatabaseProvider _databaseProvider;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

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
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$cleanCachedUniqueOutcomeEventNotifications$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final String $notificationIdColumnName;
        final String $notificationTableName;
        int label;
        final OutcomeEventsRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, String str2, OutcomeEventsRepository outcomeEventsRepository, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$notificationTableName = str;
            this.$notificationIdColumnName = str2;
            this.this$0 = outcomeEventsRepository;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$notificationTableName, this.$notificationIdColumnName, this.this$0, continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return invoke2(coroutineScope, continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꞃ"));
            }
            ResultKt.throwOnFailure(obj);
            StringBuilder sb = new StringBuilder(ProtectedFastSSH.s("ꝼ"));
            sb.append(this.$notificationTableName);
            sb.append(ProtectedFastSSH.s("Ᵹ"));
            sb.append(this.$notificationIdColumnName);
            sb.append(ProtectedFastSSH.s("Ꝿ"));
            String nameValue = InfluenceChannel.NOTIFICATION.getNameValue();
            Locale locale = Locale.ROOT;
            Intrinsics.checkNotNullExpressionValue(locale, ProtectedFastSSH.s("ꝿ"));
            String lowerCase = nameValue.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, ProtectedFastSSH.s("Ꞁ"));
            sb.append(lowerCase);
            sb.append(ProtectedFastSSH.s("ꞁ"));
            OutcomeEventsRepository.access$get_databaseProvider$p(this.this$0).getOs().delete(ProtectedFastSSH.s("Ꞃ"), sb.toString(), null);
            return Unit.INSTANCE;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$deleteOldOutcomeEvent$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02942 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final OutcomeEventParams $event;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02942(OutcomeEventParams outcomeEventParams, Continuation<? super C02942> continuation) {
            super(2, continuation);
            this.$event = outcomeEventParams;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OutcomeEventsRepository.this.new C02942(this.$event, continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return invoke2(coroutineScope, continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02942) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꞇ"));
            }
            ResultKt.throwOnFailure(obj);
            OutcomeEventsRepository.access$get_databaseProvider$p(OutcomeEventsRepository.this).getOs().delete(ProtectedFastSSH.s("Ꞅ"), ProtectedFastSSH.s("ꞅ"), new String[]{String.valueOf(this.$event.getTimestamp())});
            return Unit.INSTANCE;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository", f = "OutcomeEventsRepository.kt", i = {0}, l = {104}, m = "getAllEventsToSend", n = {"events"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsRepository.this.getAllEventsToSend(this);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getAllEventsToSend$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02952 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final List<OutcomeEventParams> $events;
        int label;

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "cursor", "Lcom/onesignal/core/internal/database/ICursor;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
        static final class AnonymousClass1 extends Lambda implements Function1<ICursor, Unit> {
            final List<OutcomeEventParams> $events;
            final OutcomeEventsRepository this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(OutcomeEventsRepository outcomeEventsRepository, List<OutcomeEventParams> list) {
                super(1);
                this.this$0 = outcomeEventsRepository;
                this.$events = list;
            }

            @Override
            public Unit invoke(ICursor iCursor) {
                invoke2(iCursor);
                return Unit.INSTANCE;
            }

            public final void invoke2(ICursor iCursor) {
                Intrinsics.checkNotNullParameter(iCursor, ProtectedFastSSH.s("ꞇ"));
                if (iCursor.moveToFirst()) {
                    do {
                        InfluenceType influenceTypeFromString = InfluenceType.INSTANCE.fromString(iCursor.getString(ProtectedFastSSH.s("ꞈ")));
                        InfluenceType influenceTypeFromString2 = InfluenceType.INSTANCE.fromString(iCursor.getString(ProtectedFastSSH.s("꞉")));
                        String optString = iCursor.getOptString(ProtectedFastSSH.s("꞊"));
                        String strS = ProtectedFastSSH.s("Ꞌ");
                        if (optString == null) {
                            optString = strS;
                        }
                        String optString2 = iCursor.getOptString(ProtectedFastSSH.s("ꞌ"));
                        String str = optString2 == null ? strS : optString2;
                        String string = iCursor.getString(ProtectedFastSSH.s("Ɥ"));
                        float f = iCursor.getFloat(ProtectedFastSSH.s("ꞎ"));
                        long j = iCursor.getLong(ProtectedFastSSH.s("ꞏ"));
                        long j2 = iCursor.getLong(ProtectedFastSSH.s("Ꞑ"));
                        try {
                            OutcomeSourceBody outcomeSourceBody = new OutcomeSourceBody(null, null, 3, null);
                            OutcomeSourceBody outcomeSourceBody2 = new OutcomeSourceBody(null, null, 3, null);
                            OutcomeSource outcomeSourceAccess$getNotificationInfluenceSource = OutcomeEventsRepository.access$getNotificationInfluenceSource(this.this$0, influenceTypeFromString, outcomeSourceBody, outcomeSourceBody2, optString);
                            OutcomeEventsRepository.access$getIAMInfluenceSource(this.this$0, influenceTypeFromString2, outcomeSourceBody, outcomeSourceBody2, str, outcomeSourceAccess$getNotificationInfluenceSource);
                            if (outcomeSourceAccess$getNotificationInfluenceSource == null) {
                                outcomeSourceAccess$getNotificationInfluenceSource = new OutcomeSource(null, null);
                            }
                            this.$events.add(new OutcomeEventParams(string, outcomeSourceAccess$getNotificationInfluenceSource, f, j2, j));
                        } catch (JSONException e) {
                            Logging.error(ProtectedFastSSH.s("ꞑ"), e);
                        }
                    } while (iCursor.moveToNext());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02952(List<OutcomeEventParams> list, Continuation<? super C02952> continuation) {
            super(2, continuation);
            this.$events = list;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OutcomeEventsRepository.this.new C02952(this.$events, continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return invoke2(coroutineScope, continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02952) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꞓ"));
            }
            ResultKt.throwOnFailure(obj);
            RemoveInvalidSessionTimeRecords.INSTANCE.run(OutcomeEventsRepository.access$get_databaseProvider$p(OutcomeEventsRepository.this));
            IDatabase.DefaultImpls.query$default(OutcomeEventsRepository.access$get_databaseProvider$p(OutcomeEventsRepository.this).getOs(), ProtectedFastSSH.s("Ꞓ"), null, null, null, null, null, null, null, new AnonymousClass1(OutcomeEventsRepository.this, this.$events), 254, null);
            return Unit.INSTANCE;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository", f = "OutcomeEventsRepository.kt", i = {0}, l = {286}, m = "getNotCachedUniqueInfluencesForOutcome", n = {"uniqueInfluences"}, s = {"L$0"})
    static final class C02961 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        C02961(Continuation<? super C02961> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsRepository.this.getNotCachedUniqueInfluencesForOutcome(null, null, this);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getNotCachedUniqueInfluencesForOutcome$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02972 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final List<Influence> $influences;
        final String $name;
        final List<Influence> $uniqueInfluences;
        int label;
        final OutcomeEventsRepository this$0;

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/onesignal/core/internal/database/ICursor;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
        static final class AnonymousClass1 extends Lambda implements Function1<ICursor, Unit> {
            final JSONArray $availableInfluenceIds;
            final String $channelInfluenceId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(JSONArray jSONArray, String str) {
                super(1);
                this.$availableInfluenceIds = jSONArray;
                this.$channelInfluenceId = str;
            }

            @Override
            public Unit invoke(ICursor iCursor) {
                invoke2(iCursor);
                return Unit.INSTANCE;
            }

            public final void invoke2(ICursor iCursor) {
                Intrinsics.checkNotNullParameter(iCursor, ProtectedFastSSH.s("ꞔ"));
                if (iCursor.getCount() == 0) {
                    this.$availableInfluenceIds.put(this.$channelInfluenceId);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02972(List<Influence> list, String str, OutcomeEventsRepository outcomeEventsRepository, List<Influence> list2, Continuation<? super C02972> continuation) {
            super(2, continuation);
            this.$influences = list;
            this.$name = str;
            this.this$0 = outcomeEventsRepository;
            this.$uniqueInfluences = list2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02972(this.$influences, this.$name, this.this$0, this.$uniqueInfluences, continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return invoke2(coroutineScope, continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02972) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꞙ"));
            }
            ResultKt.throwOnFailure(obj);
            try {
                for (Influence influence : this.$influences) {
                    JSONArray jSONArray = new JSONArray();
                    JSONArray ids = influence.getIds();
                    if (ids != null) {
                        int length = ids.length();
                        for (int i = 0; i < length; i++) {
                            String string = ids.getString(i);
                            InfluenceChannel influenceChannel = influence.getInfluenceChannel();
                            IDatabase.DefaultImpls.query$default(OutcomeEventsRepository.access$get_databaseProvider$p(this.this$0).getOs(), ProtectedFastSSH.s("Ꞗ"), new String[0], ProtectedFastSSH.s("ꞕ"), new String[]{string, influenceChannel.getNameValue(), this.$name}, null, null, null, ProtectedFastSSH.s("ꞗ"), new AnonymousClass1(jSONArray, string), 112, null);
                        }
                        if (jSONArray.length() > 0) {
                            Influence influenceCopy = influence.copy();
                            influenceCopy.setIds(jSONArray);
                            this.$uniqueInfluences.add(influenceCopy);
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return Unit.INSTANCE;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroid/content/ContentValues;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$saveOutcomeEvent$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02982 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ContentValues>, Object> {
        final OutcomeEventParams $eventParams;
        int label;
        final OutcomeEventsRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02982(OutcomeEventParams outcomeEventParams, OutcomeEventsRepository outcomeEventsRepository, Continuation<? super C02982> continuation) {
            super(2, continuation);
            this.$eventParams = outcomeEventParams;
            this.this$0 = outcomeEventsRepository;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02982(this.$eventParams, this.this$0, continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super ContentValues> continuation) {
            return invoke2(coroutineScope, continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super ContentValues> continuation) {
            return ((C02982) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r1v0, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r2v0, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r3v0, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r3v7, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r3v9, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r4v1, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r4v3, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r4v4, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r4v6, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r5v5, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r5v7, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            OutcomeSourceBody indirectBody;
            OutcomeSourceBody directBody;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꞥ"));
            }
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new JSONArray();
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = new JSONArray();
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            objectRef3.element = InfluenceType.UNATTRIBUTED;
            Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
            objectRef4.element = InfluenceType.UNATTRIBUTED;
            OutcomeSource outcomeSource = this.$eventParams.getOutcomeSource();
            if (outcomeSource != null && (directBody = outcomeSource.getDirectBody()) != null) {
                ?? notificationIds = directBody.getNotificationIds();
                if (notificationIds != 0 && notificationIds.length() > 0) {
                    objectRef3.element = InfluenceType.DIRECT;
                    objectRef.element = notificationIds;
                }
                ?? inAppMessagesIds = directBody.getInAppMessagesIds();
                if (inAppMessagesIds != 0 && inAppMessagesIds.length() > 0) {
                    objectRef4.element = InfluenceType.DIRECT;
                    objectRef2.element = inAppMessagesIds;
                }
            }
            OutcomeSource outcomeSource2 = this.$eventParams.getOutcomeSource();
            if (outcomeSource2 != null && (indirectBody = outcomeSource2.getIndirectBody()) != null) {
                ?? notificationIds2 = indirectBody.getNotificationIds();
                if (notificationIds2 != 0 && notificationIds2.length() > 0) {
                    objectRef3.element = InfluenceType.INDIRECT;
                    objectRef.element = notificationIds2;
                }
                ?? inAppMessagesIds2 = indirectBody.getInAppMessagesIds();
                if (inAppMessagesIds2 != 0 && inAppMessagesIds2.length() > 0) {
                    objectRef4.element = InfluenceType.INDIRECT;
                    objectRef2.element = inAppMessagesIds2;
                }
            }
            ContentValues contentValues = new ContentValues();
            OutcomeEventParams outcomeEventParams = this.$eventParams;
            contentValues.put(ProtectedFastSSH.s("ꞙ"), ((JSONArray) objectRef.element).toString());
            contentValues.put(ProtectedFastSSH.s("Ꞛ"), ((JSONArray) objectRef2.element).toString());
            String string = ((InfluenceType) objectRef3.element).toString();
            Locale locale = Locale.ROOT;
            String strS = ProtectedFastSSH.s("ꞛ");
            Intrinsics.checkNotNullExpressionValue(locale, strS);
            String lowerCase = string.toLowerCase(locale);
            String strS2 = ProtectedFastSSH.s("Ꞝ");
            Intrinsics.checkNotNullExpressionValue(lowerCase, strS2);
            contentValues.put(ProtectedFastSSH.s("ꞝ"), lowerCase);
            String string2 = ((InfluenceType) objectRef4.element).toString();
            Locale locale2 = Locale.ROOT;
            Intrinsics.checkNotNullExpressionValue(locale2, strS);
            String lowerCase2 = string2.toLowerCase(locale2);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, strS2);
            contentValues.put(ProtectedFastSSH.s("Ꞟ"), lowerCase2);
            contentValues.put(ProtectedFastSSH.s("ꞟ"), outcomeEventParams.getOutcomeId());
            contentValues.put(ProtectedFastSSH.s("Ꞡ"), Boxing.boxFloat(outcomeEventParams.getWeight()));
            contentValues.put(ProtectedFastSSH.s("ꞡ"), Boxing.boxLong(outcomeEventParams.getTimestamp()));
            contentValues.put(ProtectedFastSSH.s("Ꞣ"), Boxing.boxLong(outcomeEventParams.getSessionTime()));
            OutcomeEventsRepository.access$get_databaseProvider$p(this.this$0).getOs().insert(ProtectedFastSSH.s("ꞣ"), null, contentValues);
            return contentValues;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$saveUniqueOutcomeEventParams$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02992 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final OutcomeEventParams $eventParams;
        int label;
        final OutcomeEventsRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02992(OutcomeEventParams outcomeEventParams, OutcomeEventsRepository outcomeEventsRepository, Continuation<? super C02992> continuation) {
            super(2, continuation);
            this.$eventParams = outcomeEventParams;
            this.this$0 = outcomeEventsRepository;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02992(this.$eventParams, this.this$0, continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return invoke2(coroutineScope, continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02992) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException(ProtectedFastSSH.s("ꞩ"));
            }
            ResultKt.throwOnFailure(obj);
            String outcomeId = this.$eventParams.getOutcomeId();
            ArrayList<CachedUniqueOutcome> arrayList = new ArrayList();
            OutcomeSource outcomeSource = this.$eventParams.getOutcomeSource();
            OutcomeSourceBody directBody = outcomeSource != null ? outcomeSource.getDirectBody() : null;
            OutcomeSource outcomeSource2 = this.$eventParams.getOutcomeSource();
            OutcomeSourceBody indirectBody = outcomeSource2 != null ? outcomeSource2.getIndirectBody() : null;
            OutcomeEventsRepository.access$addIdsToListFromSource(this.this$0, arrayList, directBody);
            OutcomeEventsRepository.access$addIdsToListFromSource(this.this$0, arrayList, indirectBody);
            for (CachedUniqueOutcome cachedUniqueOutcome : arrayList) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(ProtectedFastSSH.s("ꞥ"), cachedUniqueOutcome.getInfluenceId());
                contentValues.put(ProtectedFastSSH.s("Ꞧ"), cachedUniqueOutcome.getChannel().getNameValue());
                contentValues.put(ProtectedFastSSH.s("ꞧ"), outcomeId);
                OutcomeEventsRepository.access$get_databaseProvider$p(this.this$0).getOs().insert(ProtectedFastSSH.s("Ꞩ"), null, contentValues);
            }
            return Unit.INSTANCE;
        }
    }

    public OutcomeEventsRepository(IDatabaseProvider iDatabaseProvider) {
        Intrinsics.checkNotNullParameter(iDatabaseProvider, ProtectedFastSSH.s("Ɦ"));
        this._databaseProvider = iDatabaseProvider;
    }

    public static final void access$addIdsToListFromSource(OutcomeEventsRepository outcomeEventsRepository, List list, OutcomeSourceBody outcomeSourceBody) {
        outcomeEventsRepository.addIdsToListFromSource(list, outcomeSourceBody);
    }

    public static final OutcomeSource access$getIAMInfluenceSource(OutcomeEventsRepository outcomeEventsRepository, InfluenceType influenceType, OutcomeSourceBody outcomeSourceBody, OutcomeSourceBody outcomeSourceBody2, String str, OutcomeSource outcomeSource) {
        return outcomeEventsRepository.getIAMInfluenceSource(influenceType, outcomeSourceBody, outcomeSourceBody2, str, outcomeSource);
    }

    public static final OutcomeSource access$getNotificationInfluenceSource(OutcomeEventsRepository outcomeEventsRepository, InfluenceType influenceType, OutcomeSourceBody outcomeSourceBody, OutcomeSourceBody outcomeSourceBody2, String str) {
        return outcomeEventsRepository.getNotificationInfluenceSource(influenceType, outcomeSourceBody, outcomeSourceBody2, str);
    }

    public static final IDatabaseProvider access$get_databaseProvider$p(OutcomeEventsRepository outcomeEventsRepository) {
        return outcomeEventsRepository._databaseProvider;
    }

    private final void addIdToListFromChannel(List<CachedUniqueOutcome> cachedUniqueOutcomes, JSONArray channelIds, InfluenceChannel channel) {
        if (channelIds != null) {
            int length = channelIds.length();
            for (int i = 0; i < length; i++) {
                try {
                    String string = channelIds.getString(i);
                    Intrinsics.checkNotNull(string);
                    cachedUniqueOutcomes.add(new CachedUniqueOutcome(string, channel));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private final void addIdsToListFromSource(List<CachedUniqueOutcome> cachedUniqueOutcomes, OutcomeSourceBody sourceBody) {
        if (sourceBody != null) {
            JSONArray inAppMessagesIds = sourceBody.getInAppMessagesIds();
            JSONArray notificationIds = sourceBody.getNotificationIds();
            addIdToListFromChannel(cachedUniqueOutcomes, inAppMessagesIds, InfluenceChannel.IAM);
            addIdToListFromChannel(cachedUniqueOutcomes, notificationIds, InfluenceChannel.NOTIFICATION);
        }
    }

    private final OutcomeSource getIAMInfluenceSource(InfluenceType iamInfluenceType, OutcomeSourceBody directSourceBody, OutcomeSourceBody indirectSourceBody, String iamIds, OutcomeSource source) {
        OutcomeSource directBody;
        OutcomeSource indirectBody;
        int i = WhenMappings.$EnumSwitchMapping$0[iamInfluenceType.ordinal()];
        if (i == 1) {
            directSourceBody.setInAppMessagesIds(new JSONArray(iamIds));
            return (source == null || (directBody = source.setDirectBody(directSourceBody)) == null) ? new OutcomeSource(directSourceBody, null) : directBody;
        }
        if (i != 2) {
            return source;
        }
        indirectSourceBody.setInAppMessagesIds(new JSONArray(iamIds));
        return (source == null || (indirectBody = source.setIndirectBody(indirectSourceBody)) == null) ? new OutcomeSource(null, indirectSourceBody) : indirectBody;
    }

    private final OutcomeSource getNotificationInfluenceSource(InfluenceType notificationInfluenceType, OutcomeSourceBody directSourceBody, OutcomeSourceBody indirectSourceBody, String notificationIds) {
        int i = WhenMappings.$EnumSwitchMapping$0[notificationInfluenceType.ordinal()];
        if (i == 1) {
            directSourceBody.setNotificationIds(new JSONArray(notificationIds));
            return new OutcomeSource(directSourceBody, null);
        }
        if (i != 2) {
            return null;
        }
        indirectSourceBody.setNotificationIds(new JSONArray(notificationIds));
        return new OutcomeSource(null, indirectSourceBody);
    }

    @Override
    public Object cleanCachedUniqueOutcomeEventNotifications(Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(ProtectedFastSSH.s("Ɜ"), ProtectedFastSSH.s("Ɡ"), this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    @Override
    public Object deleteOldOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02942(outcomeEventParams, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override
    public Object getAllEventsToSend(Continuation<? super List<OutcomeEventParams>> continuation) throws Throwable {
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
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ɬ"));
            }
            List list = (List) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            return list;
        }
        ResultKt.throwOnFailure(obj);
        ArrayList arrayList = new ArrayList();
        CoroutineDispatcher io = Dispatchers.getIO();
        C02952 c02952 = new C02952(arrayList, null);
        anonymousClass1.L$0 = arrayList;
        anonymousClass1.label = 1;
        return BuildersKt.withContext(io, c02952, anonymousClass1) == coroutine_suspended ? coroutine_suspended : arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override
    public Object getNotCachedUniqueInfluencesForOutcome(String str, List<Influence> list, Continuation<? super List<Influence>> continuation) throws Throwable {
        C02961 c02961;
        if (continuation instanceof C02961) {
            c02961 = (C02961) continuation;
            if ((c02961.label & Integer.MIN_VALUE) != 0) {
                c02961.label -= Integer.MIN_VALUE;
            } else {
                c02961 = new C02961(continuation);
            }
        } else {
            c02961 = new C02961(continuation);
        }
        Object obj = c02961.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02961.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ɬ"));
            }
            List list2 = (List) c02961.L$0;
            ResultKt.throwOnFailure(obj);
            return list2;
        }
        ResultKt.throwOnFailure(obj);
        ArrayList arrayList = new ArrayList();
        CoroutineDispatcher io = Dispatchers.getIO();
        C02972 c02972 = new C02972(list, str, this, arrayList, null);
        c02961.L$0 = arrayList;
        c02961.label = 1;
        return BuildersKt.withContext(io, c02972, c02961) == coroutine_suspended ? coroutine_suspended : arrayList;
    }

    @Override
    public Object saveOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02982(outcomeEventParams, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    @Override
    public Object saveUniqueOutcomeEventParams(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) {
        Logging.debug$default(ProtectedFastSSH.s("Ɪ") + outcomeEventParams + ')', null, 2, null);
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02992(outcomeEventParams, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
