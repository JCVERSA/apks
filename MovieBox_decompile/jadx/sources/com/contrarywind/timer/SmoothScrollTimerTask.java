package com.contrarywind.timer;

import com.contrarywind.view.WheelView;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.util.TimerTask;

public final class SmoothScrollTimerTask extends TimerTask {
    private int offset;
    private final WheelView wheelView;
    private int realTotalOffset = Integer.MAX_VALUE;
    private int realOffset = 0;

    public SmoothScrollTimerTask(WheelView wheelView, int i10) {
        this.wheelView = wheelView;
        this.offset = i10;
    }

    @Override
    public final void run() {
        if (this.realTotalOffset == Integer.MAX_VALUE) {
            this.realTotalOffset = this.offset;
        }
        int i10 = this.realTotalOffset;
        int i11 = (int) (i10 * 0.1f);
        this.realOffset = i11;
        if (i11 == 0) {
            if (i10 < 0) {
                this.realOffset = -1;
            } else {
                this.realOffset = 1;
            }
        }
        if (Math.abs(i10) <= 1) {
            this.wheelView.cancelFuture();
            this.wheelView.getHandler().sendEmptyMessage(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
            return;
        }
        WheelView wheelView = this.wheelView;
        wheelView.setTotalScrollY(wheelView.getTotalScrollY() + this.realOffset);
        if (!this.wheelView.isLoop()) {
            float itemHeight = this.wheelView.getItemHeight();
            float f10 = (-this.wheelView.getInitPosition()) * itemHeight;
            float itemsCount = ((this.wheelView.getItemsCount() - 1) - this.wheelView.getInitPosition()) * itemHeight;
            if (this.wheelView.getTotalScrollY() <= f10 || this.wheelView.getTotalScrollY() >= itemsCount) {
                WheelView wheelView2 = this.wheelView;
                wheelView2.setTotalScrollY(wheelView2.getTotalScrollY() - this.realOffset);
                this.wheelView.cancelFuture();
                this.wheelView.getHandler().sendEmptyMessage(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
                return;
            }
        }
        this.wheelView.getHandler().sendEmptyMessage(1000);
        this.realTotalOffset -= this.realOffset;
    }
}
