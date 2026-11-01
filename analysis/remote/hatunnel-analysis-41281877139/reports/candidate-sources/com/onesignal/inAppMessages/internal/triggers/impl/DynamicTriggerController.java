package com.onesignal.inAppMessages.internal.triggers.impl;

import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.common.events.EventProducer;
import com.onesignal.common.events.IEventNotifier;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.internal.Trigger;
import com.onesignal.inAppMessages.internal.state.InAppStateService;
import com.onesignal.inAppMessages.internal.triggers.ITriggerHandler;
import com.onesignal.session.internal.session.ISessionService;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017J \u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0018\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0002H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController;", "Lcom/onesignal/common/events/IEventNotifier;", "Lcom/onesignal/inAppMessages/internal/triggers/ITriggerHandler;", "_state", "Lcom/onesignal/inAppMessages/internal/state/InAppStateService;", "_session", "Lcom/onesignal/session/internal/session/ISessionService;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/inAppMessages/internal/state/InAppStateService;Lcom/onesignal/session/internal/session/ISessionService;Lcom/onesignal/core/internal/time/ITime;)V", "events", "Lcom/onesignal/common/events/EventProducer;", "getEvents", "()Lcom/onesignal/common/events/EventProducer;", "hasSubscribers", "", "getHasSubscribers", "()Z", "scheduledMessages", "", "", "dynamicTriggerShouldFire", "trigger", "Lcom/onesignal/inAppMessages/internal/Trigger;", "evaluateTimeIntervalWithOperator", "timeInterval", "", "currentTimeInterval", "operator", "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;", "roughlyEqual", "left", "right", "subscribe", "", "handler", "unsubscribe", "Companion", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicTriggerController implements IEventNotifier<ITriggerHandler> {
    private static final long DEFAULT_LAST_IN_APP_TIME_AGO = 999999;
    private static final double REQUIRED_ACCURACY = 0.3d;
    private final ISessionService _session;
    private final InAppStateService _state;
    private final ITime _time;
    private final EventProducer<ITriggerHandler> events;
    private final List<String> scheduledMessages;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;
        public static final int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Trigger.OSTriggerKind.values().length];
            try {
                iArr[Trigger.OSTriggerKind.SESSION_TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Trigger.OSTriggerKind.TIME_SINCE_LAST_IN_APP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Trigger.OSTriggerOperator.values().length];
            try {
                iArr2[Trigger.OSTriggerOperator.LESS_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Trigger.OSTriggerOperator.LESS_THAN_OR_EQUAL_TO.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Trigger.OSTriggerOperator.GREATER_THAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Trigger.OSTriggerOperator.GREATER_THAN_OR_EQUAL_TO.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Trigger.OSTriggerOperator.EQUAL_TO.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Trigger.OSTriggerOperator.NOT_EQUAL_TO.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public DynamicTriggerController(InAppStateService inAppStateService, ISessionService iSessionService, ITime iTime) {
        Intrinsics.checkNotNullParameter(inAppStateService, ProtectedFastSSH.s("ꂹ"));
        Intrinsics.checkNotNullParameter(iSessionService, ProtectedFastSSH.s("ꂺ"));
        Intrinsics.checkNotNullParameter(iTime, ProtectedFastSSH.s("ꂻ"));
        this._state = inAppStateService;
        this._session = iSessionService;
        this._time = iTime;
        this.events = new EventProducer<>();
        this.scheduledMessages = new ArrayList();
    }

    public static final List access$getScheduledMessages$p(DynamicTriggerController dynamicTriggerController) {
        return dynamicTriggerController.scheduledMessages;
    }

    private final boolean evaluateTimeIntervalWithOperator(double timeInterval, double currentTimeInterval, Trigger.OSTriggerOperator operator) {
        switch (WhenMappings.$EnumSwitchMapping$1[operator.ordinal()]) {
            case 1:
                return currentTimeInterval < timeInterval;
            case 2:
                return currentTimeInterval <= timeInterval || roughlyEqual(timeInterval, currentTimeInterval);
            case 3:
                return currentTimeInterval >= timeInterval;
            case 4:
                return currentTimeInterval >= timeInterval || roughlyEqual(timeInterval, currentTimeInterval);
            case 5:
                return roughlyEqual(timeInterval, currentTimeInterval);
            case 6:
                return !roughlyEqual(timeInterval, currentTimeInterval);
            default:
                Logging.error$default(ProtectedFastSSH.s("ꂼ") + operator, null, 2, null);
                return false;
        }
    }

    private final boolean roughlyEqual(double left, double right) {
        return Math.abs(left - right) < REQUIRED_ACCURACY;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0089 A[Catch: all -> 0x00bb, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0018, B:11:0x0022, B:27:0x0067, B:29:0x0089, B:36:0x009e, B:40:0x00a8, B:16:0x0038, B:20:0x0042, B:23:0x004e, B:25:0x0065, B:24:0x0059), top: B:46:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0097  */
    /* JADX WARN: Code duplicated, block: B:34:0x009c A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:36:0x009e A[Catch: all -> 0x00bb, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0018, B:11:0x0022, B:27:0x0067, B:29:0x0089, B:36:0x009e, B:40:0x00a8, B:16:0x0038, B:20:0x0042, B:23:0x004e, B:25:0x0065, B:24:0x0059), top: B:46:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a6 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a8 A[Catch: all -> 0x00bb, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0018, B:11:0x0022, B:27:0x0067, B:29:0x0089, B:36:0x009e, B:40:0x00a8, B:16:0x0038, B:20:0x0042, B:23:0x004e, B:25:0x0065, B:24:0x0059), top: B:46:0x0018 }] */
    public final boolean dynamicTriggerShouldFire(Trigger trigger) {
        long currentTimeMillis;
        long startTime;
        long j;
        long j2;
        String triggerId;
        long jDoubleValue;
        long j3;
        Intrinsics.checkNotNullParameter(trigger, ProtectedFastSSH.s("ꂽ"));
        if (trigger.getValue() == null) {
            return false;
        }
        synchronized (this.scheduledMessages) {
            if (!(trigger.getValue() instanceof Number)) {
                return false;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[trigger.getKind().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    j2 = 0;
                } else {
                    if (this._state.getInAppMessageIdShowing() != null) {
                        return false;
                    }
                    Long lastTimeInAppDismissed = this._state.getLastTimeInAppDismissed();
                    if (lastTimeInAppDismissed == null) {
                        j = DEFAULT_LAST_IN_APP_TIME_AGO;
                    } else {
                        currentTimeMillis = this._time.getCurrentTimeMillis();
                        startTime = lastTimeInAppDismissed.longValue();
                    }
                    j2 = j;
                }
                triggerId = trigger.getTriggerId();
                Number number = (Number) trigger.getValue();
                Intrinsics.checkNotNull(number);
                jDoubleValue = (long) (number.doubleValue() * ((double) 1000));
                if (evaluateTimeIntervalWithOperator(jDoubleValue, j2, trigger.getOperatorType())) {
                    this.events.fire(new DynamicTriggerController$dynamicTriggerShouldFire$1$1(triggerId));
                    return true;
                }
                j3 = jDoubleValue - j2;
                if (j3 <= 0) {
                    return false;
                }
                if (this.scheduledMessages.contains(triggerId)) {
                    return false;
                }
                DynamicTriggerTimer.INSTANCE.scheduleTrigger(new DynamicTriggerController$dynamicTriggerShouldFire$1$2(this, triggerId), triggerId, j3);
                this.scheduledMessages.add(triggerId);
                return false;
            }
            currentTimeMillis = this._time.getCurrentTimeMillis();
            startTime = this._session.getStartTime();
            j = currentTimeMillis - startTime;
            j2 = j;
            triggerId = trigger.getTriggerId();
            Number number2 = (Number) trigger.getValue();
            Intrinsics.checkNotNull(number2);
            jDoubleValue = (long) (number2.doubleValue() * ((double) 1000));
            if (evaluateTimeIntervalWithOperator(jDoubleValue, j2, trigger.getOperatorType())) {
                this.events.fire(new DynamicTriggerController$dynamicTriggerShouldFire$1$1(triggerId));
                return true;
            }
            j3 = jDoubleValue - j2;
            if (j3 <= 0) {
                return false;
            }
            if (this.scheduledMessages.contains(triggerId)) {
                return false;
            }
            DynamicTriggerTimer.INSTANCE.scheduleTrigger(new DynamicTriggerController$dynamicTriggerShouldFire$1$2(this, triggerId), triggerId, j3);
            this.scheduledMessages.add(triggerId);
            return false;
        }
    }

    public final EventProducer<ITriggerHandler> getEvents() {
        return this.events;
    }

    @Override
    public boolean getHasSubscribers() {
        return this.events.getHasSubscribers();
    }

    public void subscribe2(ITriggerHandler handler) {
        Intrinsics.checkNotNullParameter(handler, ProtectedFastSSH.s("ꂾ"));
        this.events.subscribe(handler);
    }

    @Override
    public void subscribe(ITriggerHandler iTriggerHandler) {
        subscribe2(iTriggerHandler);
    }

    public void unsubscribe2(ITriggerHandler handler) {
        Intrinsics.checkNotNullParameter(handler, ProtectedFastSSH.s("ꂾ"));
        this.events.unsubscribe(handler);
    }

    @Override
    public void unsubscribe(ITriggerHandler iTriggerHandler) {
        unsubscribe2(iTriggerHandler);
    }
}
