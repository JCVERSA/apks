package com.mgadplus.media;

public class SlideBinderPlayer extends BinderPlayer {
    public boolean K;

    @Override
    public void e() {
        if (!this.B && this.x != null && !this.K) {
            super.e();
        } else {
            if (this.K) {
                return;
            }
            if (this.C) {
                a(0.0f, 0.0f);
            } else {
                a(1.0f, 1.0f);
            }
        }
    }
}
