package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.EjP.Ym;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import java.util.Map;

public class TKC extends Sj {
    private int Fmk;
    private float Ym;

    private float f20192aa;
    private String sef;

    public TKC(Context context) {
        super(context);
        this.Fmk = 0;
        this.sef = "up";
    }

    @Override
    public boolean Sj(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        Map<String, String> map = this.HiB;
        if (map != null) {
            this.sef = TextUtils.isEmpty(map.get("direction")) ? IntegrationConstants.NAVIGATION_BAR_ALL_ACTION : this.HiB.get("direction");
            this.Fmk = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get("distance"), 0);
        }
        return Sj(this.sP, (MotionEvent) objArr[0]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:0x007a  */
    private boolean Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, MotionEvent motionEvent) {
        byte b10;
        Ym ym2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Ym = motionEvent.getX();
            this.f20192aa = motionEvent.getY();
        } else if (action == 1 || action == 3) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (this.Fmk == 0 && (ym2 = this.Sj) != null) {
                ym2.Sj(tkc, this.vS, this.TKC.sP());
                return true;
            }
            int iSP = com.bytedance.adsdk.ugeno.Jcg.Dq.sP(this.TEQ, x10 - this.Ym);
            int iSP2 = com.bytedance.adsdk.ugeno.Jcg.Dq.sP(this.TEQ, y10 - this.f20192aa);
            switch (this.sef) {
                case "up":
                    b10 = 0;
                    break;
                case "all":
                    b10 = 4;
                    break;
                case "down":
                    b10 = 1;
                    break;
                case "left":
                    b10 = 2;
                    break;
                case "right":
                    b10 = 3;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                iSP = -iSP2;
            } else if (b10 == 1) {
                iSP = iSP2;
            } else if (b10 == 2) {
                iSP = -iSP;
            } else if (b10 != 3) {
                iSP = (int) Math.abs(Math.sqrt(Math.pow(iSP, 2.0d) + Math.pow(iSP2, 2.0d)));
            }
            if (iSP < this.Fmk) {
                return false;
            }
            Ym ym3 = this.Sj;
            if (ym3 != null) {
                this.Ym = 0.0f;
                this.f20192aa = 0.0f;
                ym3.Sj(tkc, this.vS, this.TKC.sP());
                return true;
            }
        }
        return true;
    }
}
