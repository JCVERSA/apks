package com.onesignal.inAppMessages.internal.triggers.impl;

import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.debug.internal.logging.Logging;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer;", "", "()V", "scheduleTrigger", "", "task", "Ljava/util/TimerTask;", "triggerId", "", "delay", "", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicTriggerTimer {
    public static final DynamicTriggerTimer INSTANCE = new DynamicTriggerTimer();

    private DynamicTriggerTimer() {
    }

    public final void scheduleTrigger(TimerTask task, String triggerId, long delay) {
        Intrinsics.checkNotNullParameter(triggerId, ProtectedFastSSH.s("ꂿ"));
        Logging.debug$default(ProtectedFastSSH.s("ꃀ") + triggerId + ProtectedFastSSH.s("ꃁ") + delay, null, 2, null);
        StringBuilder sb = new StringBuilder(ProtectedFastSSH.s("ꃂ"));
        sb.append(triggerId);
        new Timer(sb.toString()).schedule(task, delay);
    }
}
