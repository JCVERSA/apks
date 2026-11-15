package com.bytedance.adsdk.ugeno.uA.sP;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;

public class sP extends com.bytedance.adsdk.ugeno.sP.Sj<com.bytedance.adsdk.ugeno.uA.sP.Sj> {
    private com.bytedance.adsdk.ugeno.uA.sP.Sj AVc;

    public static class Sj extends com.bytedance.adsdk.ugeno.sP.Sj.C0184Sj {
        protected int wE;

        public Sj(com.bytedance.adsdk.ugeno.sP.Sj sj2) {
            super(sj2);
            this.wE = -1;
        }

        private int sP(String str) {
            str.hashCode();
            switch (str) {
                case "bottom":
                    return 80;
                case "center":
                    return 17;
                case "center_vertical":
                    return 16;
                case "top":
                    return 48;
                case "left":
                    return 3;
                case "right":
                    return 5;
                case "center_horizontal":
                    return 1;
                default:
                    return -1;
            }
        }

        @Override
        public void Sj(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.Sj(context, str, str2);
            if (TextUtils.equals(str, "layoutGravity")) {
                this.wE = Sj(str2);
            }
        }

        @Override
        public FrameLayout.LayoutParams Sj() {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) this.Sj, (int) this.sP);
            layoutParams.leftMargin = (int) this.vS;
            layoutParams.rightMargin = (int) this.Jcg;
            layoutParams.topMargin = (int) this.Dq;
            layoutParams.bottomMargin = (int) this.uA;
            layoutParams.gravity = this.wE;
            return layoutParams;
        }

        private int Sj(String str) {
            String[] strArrSplit;
            if (TextUtils.isEmpty(str) || (strArrSplit = str.split("\\|")) == null || strArrSplit.length <= 0) {
                return -1;
            }
            int iSP = 0;
            for (String str2 : strArrSplit) {
                iSP |= sP(str2);
            }
            return iSP;
        }
    }

    public sP(Context context) {
        super(context);
    }

    @Override
    public com.bytedance.adsdk.ugeno.sP.Sj.C0184Sj TEQ() {
        return new Sj(this);
    }

    @Override
    public com.bytedance.adsdk.ugeno.uA.sP.Sj Sj() {
        com.bytedance.adsdk.ugeno.uA.sP.Sj sj2 = new com.bytedance.adsdk.ugeno.uA.sP.Sj(this.sP);
        this.AVc = sj2;
        sj2.Sj(this);
        return this.AVc;
    }

    @Override
    public void sP() {
        this.AVc.setEventMap(this.QZ);
        super.sP();
    }
}
