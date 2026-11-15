package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class aa {
    private Sj EjP;
    protected int Sj;
    private boolean TKC = true;
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sP;

    private static abstract class Sj implements View.OnLayoutChangeListener {
        private int Sj;
        private int sP;

        private Sj() {
        }

        abstract void Sj(int i10, int i11);

        @Override
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            int i18 = i12 - i10;
            int i19 = i13 - i11;
            if (i18 == this.Sj && i19 == this.sP) {
                return;
            }
            this.Sj = i18;
            this.sP = i19;
            Sj(i18, i19);
        }
    }

    public aa(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.Sj = 0;
        this.sP = sj2;
        TKC();
        if (sj2.Sj == 2) {
            return;
        }
        try {
            this.Sj = FPG.TKC(sj2.Fm, FPG.Sj());
            if (!sj2.Fm.getWindow().hasFeature(1)) {
                sj2.Fm.requestWindowFeature(1);
            }
            sj2.Fm.getWindow().addFlags(16777344);
            if (sj2.sdp == 2 || !FPG.TKC(sj2.Fm)) {
                sj2.Fm.getWindow().addFlags(1024);
            }
        } catch (Throwable th2) {
            Log.e("TTAD.RFSM", "init: ", th2);
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void EjP() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2.sdp != 2) {
            Sj(sj2.Fm, 1);
        } else if (sj2.EZ) {
            Sj(sj2.Fm, 8);
        } else {
            Sj(sj2.Fm, 0);
        }
    }

    private float HiB() {
        return FPG.TKC(this.sP.Fm, FPG.aa(this.sP.Fm));
    }

    private void TKC() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        sj2.MuB = sj2.sP.tY();
        if (26 != Build.VERSION.SDK_INT) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            sj3.sdp = sj3.sP.liH();
        } else if (this.sP.Fm.getResources().getConfiguration().orientation == 1) {
            this.sP.sdp = 1;
        } else {
            this.sP.sdp = 2;
        }
    }

    private float vS() {
        return FPG.TKC(this.sP.Fm, FPG.Ym(this.sP.Fm));
    }

    public void sP(LqL lqL) {
        try {
            com.bytedance.sdk.openadsdk.activity.vS vSVar = this.sP.HS;
            if (vSVar == null || vSVar.uA <= 0) {
                final boolean z10 = true;
                final boolean z11 = this.TKC && com.bytedance.sdk.openadsdk.core.dNu.EjP().WMZ() == 1;
                if (!this.TKC || !FPG.TKC(this.sP.Fm)) {
                    z10 = false;
                }
                if (z10 || z11) {
                    if (this.EjP == null) {
                        this.EjP = new Sj() {
                            boolean Sj;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super();
                            }

                            /* JADX WARN: Code duplicated, block: B:28:0x00e9 A[Catch: all -> 0x010c, TryCatch #0 {all -> 0x010c, blocks: (B:2:0x0000, B:4:0x000b, B:6:0x001f, B:8:0x006a, B:10:0x0088, B:12:0x0097, B:14:0x00ab, B:15:0x00af, B:26:0x00e3, B:28:0x00e9, B:29:0x00ee, B:31:0x00fc, B:16:0x00b2, B:18:0x00bc, B:20:0x00d0, B:22:0x00d4, B:23:0x00da, B:25:0x00de, B:33:0x0102, B:35:0x0106, B:7:0x0045), top: B:38:0x0000 }] */
                            /* JADX WARN: Code duplicated, block: B:31:0x00fc A[Catch: all -> 0x010c, TryCatch #0 {all -> 0x010c, blocks: (B:2:0x0000, B:4:0x000b, B:6:0x001f, B:8:0x006a, B:10:0x0088, B:12:0x0097, B:14:0x00ab, B:15:0x00af, B:26:0x00e3, B:28:0x00e9, B:29:0x00ee, B:31:0x00fc, B:16:0x00b2, B:18:0x00bc, B:20:0x00d0, B:22:0x00d4, B:23:0x00da, B:25:0x00de, B:33:0x0102, B:35:0x0106, B:7:0x0045), top: B:38:0x0000 }] */
                            /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
                            @Override
                            void Sj(int i10, int i11) {
                                int iAbs;
                                float fSj;
                                try {
                                    if (aa.this.sP.sdp == 2 && aa.this.sP.Fm.getResources().getConfiguration().orientation == 2) {
                                        iAbs = Math.abs(FPG.aa(aa.this.sP.Fm) - aa.this.sP.Fm.getWindow().getDecorView().getWidth());
                                    } else {
                                        iAbs = Math.abs(FPG.Ym(aa.this.sP.Fm) - aa.this.sP.Fm.getWindow().getDecorView().getHeight());
                                    }
                                    View decorView = aa.this.sP.Fm.getWindow().getDecorView();
                                    int paddingLeft = decorView.getPaddingLeft();
                                    int paddingRight = decorView.getPaddingRight();
                                    int paddingBottom = decorView.getPaddingBottom();
                                    if (iAbs != 0) {
                                        if (this.Sj) {
                                            decorView.setPadding(paddingLeft, 0, paddingRight, paddingBottom);
                                            this.Sj = false;
                                            return;
                                        }
                                        return;
                                    }
                                    int paddingTop = decorView.getPaddingTop();
                                    if (aa.this.sP.sdp != 1 || aa.this.sP.Fm.getResources().getConfiguration().orientation != 1) {
                                        if (aa.this.sP.sdp == 2 && aa.this.sP.Fm.getResources().getConfiguration().orientation == 2) {
                                            if (z10) {
                                                paddingLeft += (int) FPG.Sj();
                                            }
                                            if (z11) {
                                                fSj = FPG.Sj();
                                            }
                                        }
                                        if (decorView.isAttachedToWindow()) {
                                            decorView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
                                            this.Sj = true;
                                        }
                                        if (aa.this.sP.MuB == 100.0f) {
                                            decorView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                                        }
                                    }
                                    fSj = FPG.Sj();
                                    paddingTop += (int) fSj;
                                    if (decorView.isAttachedToWindow()) {
                                        decorView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
                                        this.Sj = true;
                                    }
                                    if (aa.this.sP.MuB == 100.0f) {
                                        decorView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                                    }
                                } catch (Throwable unused) {
                                }
                            }
                        };
                    }
                    this.sP.Fm.getWindow().getDecorView().addOnLayoutChangeListener(this.EjP);
                }
                this.TKC = false;
            }
        } catch (Exception unused) {
        }
    }

    public void Sj(LqL lqL) {
        if (lqL == null) {
            return;
        }
        lqL.postDelayed(new Runnable() {
            @Override
            public void run() {
                View viewFindViewById;
                try {
                    View decorView = aa.this.sP.Fm.getWindow().getDecorView();
                    if (decorView == null || (viewFindViewById = decorView.findViewById(R.id.statusBarBackground)) == null) {
                        return;
                    }
                    viewFindViewById.setVisibility(8);
                } catch (Exception unused) {
                }
            }
        }, 300L);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a2  */
    public void Sj(boolean z10) {
        float fMin;
        float fMax;
        int iMax;
        int iMax2;
        int i10;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 != 26) {
            if (i11 == 27) {
                try {
                    EjP();
                } catch (Throwable unused) {
                }
            } else {
                EjP();
            }
        }
        float fHiB = HiB();
        float fVS = vS();
        if (this.sP.sdp == 2) {
            fMin = Math.max(fHiB, fVS);
            fMax = Math.min(fHiB, fVS);
        } else {
            fMin = Math.min(fHiB, fVS);
            fMax = Math.max(fHiB, fVS);
        }
        Activity activity = this.sP.Fm;
        int iTKC = FPG.TKC(activity, FPG.Sj());
        if (this.sP.sdp != 2) {
            if (FPG.TKC(activity)) {
                fMax -= iTKC;
            }
        } else if (FPG.TKC(activity)) {
            fMin -= iTKC;
        }
        if (z10) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
            sj2.IOh = (int) fMin;
            sj2.pfr = (int) fMax;
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
        int i12 = 20;
        if (sj3.sdp != 2) {
            float f10 = sj3.MuB;
            if (f10 == 0.0f || f10 == 100.0f) {
                i12 = 0;
                iMax = 0;
                iMax2 = 0;
                i10 = 0;
            } else {
                iMax2 = (int) Math.max((fMax - (((fMin - 20.0f) - 20.0f) / f10)) / 2.0f, 0.0f);
                i10 = iMax2;
                iMax = 20;
            }
        } else {
            float f11 = sj3.MuB;
            if (f11 == 0.0f || f11 == 100.0f) {
                i12 = 0;
                iMax = 0;
                iMax2 = 0;
                i10 = 0;
            } else {
                iMax = (int) Math.max((fMin - (((fMax - 20.0f) - 20.0f) * f11)) / 2.0f, 0.0f);
                iMax2 = 20;
                i10 = 20;
                i12 = iMax;
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.sP;
        float f12 = i12;
        float f13 = iMax;
        sj4.IOh = (int) ((fMin - f12) - f13);
        float f14 = iMax2;
        float f15 = i10;
        sj4.pfr = (int) ((fMax - f14) - f15);
        com.bytedance.sdk.openadsdk.activity.vS vSVar = sj4.HS;
        if (vSVar == null || vSVar.uA <= 0) {
            activity.getWindow().getDecorView().setPadding(FPG.sP(activity, f12), FPG.sP(activity, f14), FPG.sP(activity, f13), FPG.sP(activity, f15));
        }
    }

    private float[] sP(int i10) {
        float fVS = vS();
        float fHiB = HiB();
        int i11 = this.sP.sdp;
        if ((i11 == 1) != (fVS > fHiB)) {
            float f10 = fVS + fHiB;
            fHiB = f10 - fHiB;
            fVS = f10 - fHiB;
        }
        if (i11 == 1) {
            fVS -= i10;
        } else {
            fHiB -= i10;
        }
        return new float[]{fHiB, fVS};
    }

    public void sP() {
        if (this.EjP != null) {
            this.sP.Fm.getWindow().getDecorView().removeOnLayoutChangeListener(this.EjP);
            this.EjP = null;
        }
    }

    public float[] Sj(int i10) {
        float[] fArrSP = new float[2];
        Activity activity = this.sP.Fm;
        View decorView = activity.getWindow().getDecorView();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 35 && this.sP.sP.tY() == 100.0f) {
            fArrSP[0] = decorView.getWidth() - decorView.getPaddingLeft();
            fArrSP[1] = decorView.getHeight() - decorView.getPaddingTop();
        } else {
            fArrSP[0] = decorView.getWidth() - (decorView.getPaddingLeft() * 2);
            fArrSP[1] = decorView.getHeight() - (decorView.getPaddingTop() * 2);
        }
        fArrSP[0] = FPG.TKC(activity, fArrSP[0]);
        float fTKC = FPG.TKC(activity, fArrSP[1]);
        fArrSP[1] = fTKC;
        if (fArrSP[0] < 10.0f || fTKC < 10.0f) {
            fArrSP = sP(this.Sj);
        }
        if (i11 != 26 && i11 != 27 && activity.getResources() != null && activity.getResources().getConfiguration() != null) {
            if ((activity.getResources().getConfiguration().orientation == 2 ? 2 : 1) != i10) {
                if (i10 == 2) {
                    float f10 = fArrSP[0];
                    float f11 = fArrSP[1];
                    if (f10 < f11) {
                        fArrSP[1] = f10;
                        fArrSP[0] = f11;
                    }
                } else {
                    float f12 = fArrSP[0];
                    float f13 = fArrSP[1];
                    if (f12 > f13) {
                        fArrSP[1] = f12;
                        fArrSP[0] = f13;
                    }
                }
            }
        }
        return fArrSP;
    }

    public void Sj() {
        FPG.Sj(this.sP.Fm);
        this.sP.Fm.getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() {
            @Override
            public void onSystemUiVisibilityChange(int i10) {
                if (i10 == 0) {
                    try {
                        if (aa.this.sP.Fm.isFinishing()) {
                            return;
                        }
                        aa.this.sP.Fm.getWindow().getDecorView().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                FPG.Sj(aa.this.sP.Fm);
                            }
                        }, 2500L);
                    } catch (Exception e10) {
                        sU.sP("TTAD.RFSM", e10.getMessage());
                    }
                }
            }
        });
    }

    private static void Sj(Activity activity, int i10) {
        if (activity.getRequestedOrientation() == i10) {
            return;
        }
        activity.setRequestedOrientation(i10);
    }
}
