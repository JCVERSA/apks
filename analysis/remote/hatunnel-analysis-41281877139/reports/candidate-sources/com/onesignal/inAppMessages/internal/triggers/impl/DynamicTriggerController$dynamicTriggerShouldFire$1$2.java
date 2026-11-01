package com.onesignal.inAppMessages.internal.triggers.impl;

import java.util.TimerTask;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController$dynamicTriggerShouldFire$1$2", "Ljava/util/TimerTask;", "run", "", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicTriggerController$dynamicTriggerShouldFire$1$2 extends TimerTask {
    final String $triggerId;
    final DynamicTriggerController this$0;

    DynamicTriggerController$dynamicTriggerShouldFire$1$2(DynamicTriggerController dynamicTriggerController, String str) {
        this.this$0 = dynamicTriggerController;
        this.$triggerId = str;
    }

    @Override
    public void run() {
        DynamicTriggerController.access$getScheduledMessages$p(this.this$0).remove(this.$triggerId);
        this.this$0.getEvents().fire(new DynamicTriggerController$dynamicTriggerShouldFire$1$2$run$1(this.$triggerId));
    }
}
