package com.bytedance.adsdk.ugeno.uA.Sj;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.HiB;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.bytedance.adsdk.ugeno.Jcg.EjP;
import com.bytedance.adsdk.ugeno.sP.TKC;
import com.bytedance.adsdk.ugeno.uA.vS.sP;

public class Sj extends sP {
    private boolean GMp;
    private boolean Ph;
    private String SP;
    private String Xqg;
    private String dLt;

    private int f20226gq;

    private com.bytedance.adsdk.ugeno.Jcg.Sj.C0179Sj f20227mj;
    private int oWa;
    private String zwV;

    public Sj(Context context) {
        super(context);
        this.dLt = "row";
    }

    private void EjP() {
        if (TextUtils.isEmpty(this.SP)) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setCompoundDrawables(null, null, null, null);
        if (!this.SP.startsWith("local://")) {
            HiB.Sj().sP().Sj(this.uA, this.SP, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0180Sj() {
                @Override
                public void Sj(final Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    Dq.Sj(new Runnable() {
                        @Override
                        public void run() {
                            Sj.this.sP(new BitmapDrawable(((TKC) Sj.this).sP.getResources(), bitmap));
                        }
                    });
                }
            });
            return;
        }
        try {
            String strReplace = this.SP.replace("local://", "");
            Context context = this.sP;
            sP(Dq.Sj(context, EjP.Sj(context, strReplace)));
        } catch (Throwable unused) {
        }
    }

    @Override
    protected void Ei() {
        super.Ei();
        if (this.Ph) {
            ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setTextColor(((sP) this).AVc);
        }
        if (this.GMp) {
            if (this.nP) {
                Sj(this.liH);
            } else {
                EjP(this.Wjd);
            }
        }
    }

    @Override
    protected void jb() {
        super.jb();
        if (this.Ph) {
            ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setTextColor(this.f20226gq);
        }
        if (this.GMp) {
            if (this.nP) {
                Sj(this.f20227mj);
            } else {
                EjP(this.oWa);
            }
        }
    }

    @Override
    public void sP() {
        super.sP();
        EjP();
        ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setGravity(17);
    }

    @Override
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "direction":
                this.dLt = str2;
                break;
            case "highlightTextColor":
            case "highlightedTextColor":
                this.f20226gq = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                this.Ph = true;
                break;
            case "image":
                this.SP = str2;
                break;
            case "highlightImage":
                this.zwV = str2;
                break;
            case "highlightBackgroundColor":
                if (com.bytedance.adsdk.ugeno.Jcg.Sj.TKC(str2)) {
                    this.nP = true;
                    this.f20227mj = com.bytedance.adsdk.ugeno.Jcg.Sj.sP(str2);
                } else {
                    this.oWa = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                    this.nP = false;
                }
                this.GMp = true;
                break;
            case "highlightBackgroundImage":
                this.Xqg = str2;
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0037  */
    public void sP(Drawable drawable) {
        byte b10;
        if (drawable == null) {
            return;
        }
        switch (this.dLt) {
            case "column_reverse":
                b10 = 2;
                break;
            case "column":
                b10 = 1;
                break;
            case "row_reverse":
                b10 = 0;
                break;
            case "row":
                b10 = 3;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 == 0) {
            ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
            return;
        }
        if (b10 == 1) {
            ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        } else if (b10 != 2) {
            ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, drawable);
        }
    }
}
