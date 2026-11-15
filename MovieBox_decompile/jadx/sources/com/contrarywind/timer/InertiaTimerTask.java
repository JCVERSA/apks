package com.contrarywind.timer;

import com.contrarywind.view.WheelView;
import java.util.TimerTask;

public final class InertiaTimerTask extends TimerTask {
    private float mCurrentVelocityY = 2.14748365E9f;
    private final float mFirstVelocityY;
    private final WheelView mWheelView;

    public InertiaTimerTask(WheelView wheelView, float f10) {
        this.mWheelView = wheelView;
        this.mFirstVelocityY = f10;
    }

    @Override
    public final void run() {
        if (this.mCurrentVelocityY == 2.14748365E9f) {
            if (Math.abs(this.mFirstVelocityY) > 2000.0f) {
                this.mCurrentVelocityY = this.mFirstVelocityY <= 0.0f ? -2000.0f : 2000.0f;
            } else {
                this.mCurrentVelocityY = this.mFirstVelocityY;
            }
        }
        if (Math.abs(this.mCurrentVelocityY) >= 0.0f && Math.abs(this.mCurrentVelocityY) <= 20.0f) {
            this.mWheelView.cancelFuture();
            this.mWheelView.getHandler().sendEmptyMessage(2000);
            return;
        }
        int i10 = (int) (this.mCurrentVelocityY / 100.0f);
        WheelView wheelView = this.mWheelView;
        float f10 = i10;
        wheelView.setTotalScrollY(wheelView.getTotalScrollY() - f10);
        if (!this.mWheelView.isLoop()) {
            float itemHeight = this.mWheelView.getItemHeight();
            float totalScrollY = (-this.mWheelView.getInitPosition()) * itemHeight;
            float itemsCount = ((this.mWheelView.getItemsCount() - 1) - this.mWheelView.getInitPosition()) * itemHeight;
            double d10 = ((double) itemHeight) * 0.25d;
            if (((double) this.mWheelView.getTotalScrollY()) - d10 < totalScrollY) {
                totalScrollY = this.mWheelView.getTotalScrollY() + f10;
            } else if (((double) this.mWheelView.getTotalScrollY()) + d10 > itemsCount) {
                itemsCount = this.mWheelView.getTotalScrollY() + f10;
            }
            if (this.mWheelView.getTotalScrollY() <= totalScrollY) {
                this.mCurrentVelocityY = 40.0f;
                this.mWheelView.setTotalScrollY((int) totalScrollY);
            } else if (this.mWheelView.getTotalScrollY() >= itemsCount) {
                this.mWheelView.setTotalScrollY((int) itemsCount);
                this.mCurrentVelocityY = -40.0f;
            }
        }
        float f11 = this.mCurrentVelocityY;
        if (f11 < 0.0f) {
            this.mCurrentVelocityY = f11 + 20.0f;
        } else {
            this.mCurrentVelocityY = f11 - 20.0f;
        }
        this.mWheelView.getHandler().sendEmptyMessage(1000);
    }
}
