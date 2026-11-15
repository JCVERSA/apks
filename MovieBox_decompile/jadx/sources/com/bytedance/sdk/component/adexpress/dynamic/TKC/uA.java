package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.vS.wE;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;

public class uA extends FrameLayout implements Dq {
    private View.OnTouchListener Dq;
    private View EjP;
    private Jcg HiB;
    private com.bytedance.sdk.component.adexpress.vS.TzV Jcg;
    private Context Sj;
    private boolean TEQ;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg TKC;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ Ym;

    private com.bytedance.sdk.component.adexpress.sP.Fmk f20270aa;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB sP;
    private int uA;
    private String vS;

    public uA(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        super(context);
        this.Sj = context;
        this.sP = hiB;
        this.TKC = jcg;
        Jcg();
    }

    private boolean Dq() {
        return (this.TKC.pfr() || TextUtils.equals(PrepareException.ERROR_MINI_APP_CLOSE, this.vS) || TextUtils.equals("16", this.vS) || TextUtils.equals("17", this.vS) || TextUtils.equals("18", this.vS) || TextUtils.equals("20", this.vS) || TextUtils.equals("29", this.vS) || TextUtils.equals("10", this.vS)) ? false : true;
    }

    private void Jcg() {
        setBackgroundColor(0);
        setClipChildren(false);
        setClipToPadding(false);
        this.vS = this.TKC.Ei();
        this.uA = this.TKC.db();
        this.TEQ = this.TKC.pfr();
        Jcg jcgSj = TEQ.Sj(this.Sj, this.sP, this.TKC, this.Ym, this.f20270aa);
        this.HiB = jcgSj;
        if (jcgSj != null) {
            this.EjP = jcgSj.TKC();
            if (this.TKC.HpB()) {
                setBackgroundColor(Color.parseColor("#50000000"));
            }
            if (TextUtils.equals(this.vS, PrepareException.ERROR_NO_URL)) {
                if (!this.TKC.EZ() || TextUtils.isEmpty(this.TKC.gY())) {
                    this.Jcg = new com.bytedance.sdk.component.adexpress.vS.TzV(this.Sj, Color.parseColor("#99000000"));
                } else {
                    this.Jcg = new com.bytedance.sdk.component.adexpress.vS.TzV(this.Sj, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(this.TKC.gY()));
                }
                FrameLayout frameLayout = new FrameLayout(this.Sj);
                frameLayout.addView(this.Jcg, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setClipChildren(true);
                addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                post(new Runnable() {
                    @Override
                    public void run() {
                        uA.this.Jcg.sP();
                    }
                });
            }
            if (Sj(this.vS) && com.bytedance.sdk.component.adexpress.EjP.sP()) {
                int color = Color.parseColor("#99000000");
                if (this.TKC.EZ() && !TextUtils.isEmpty(this.TKC.gY())) {
                    try {
                        color = com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(this.TKC.gY());
                    } catch (Exception unused) {
                    }
                }
                View view = new View(this.Sj);
                view.setBackgroundColor(color);
                addView(view, new FrameLayout.LayoutParams(-1, -1));
            }
            addView(this.HiB.TKC());
            Sj(this.HiB.TKC());
            setVisibility(0);
        }
    }

    public void uA() {
        if (this.Dq != null) {
            setOnClickListener((View.OnClickListener) this.sP.getDynamicClickListener());
            performClick();
            if (this.TKC.tz()) {
                return;
            }
            setVisibility(8);
        }
    }

    public void EjP() {
        Jcg jcg = this.HiB;
        if (jcg != null) {
            jcg.sP();
        }
    }

    public void HiB() {
        if (this.EjP != null && TextUtils.equals(this.vS, "2")) {
            View view = this.EjP;
            if (view instanceof com.bytedance.sdk.component.adexpress.vS.TKC) {
                ((com.bytedance.sdk.component.adexpress.vS.TKC) view).TKC();
            }
        }
    }

    public void TKC() {
        Jcg jcg = this.HiB;
        if (jcg != null) {
            jcg.Sj();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            Jcg jcg = this.HiB;
            if (jcg != null) {
                jcg.sP();
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.Dq instanceof com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.TKC) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void vS() {
        if (this.EjP != null && TextUtils.equals(this.vS, "2")) {
            View view = this.EjP;
            if (view instanceof com.bytedance.sdk.component.adexpress.vS.TKC) {
                ((com.bytedance.sdk.component.adexpress.vS.TKC) view).EjP();
            }
        }
    }

    private boolean Sj(String str) {
        return TextUtils.equals(str, "24") || TextUtils.equals(str, "23") || TextUtils.equals(str, "25") || TextUtils.equals(str, "22") || TextUtils.equals(str, "1");
    }

    @Override
    public void sP() {
        if (Dq()) {
            setOnClickListener((View.OnClickListener) this.sP.getDynamicClickListener());
            performClick();
            if (this.TKC.tz()) {
                return;
            }
            setVisibility(8);
        }
    }

    public uA(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg, com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ teq, com.bytedance.sdk.component.adexpress.sP.Fmk fmk) {
        super(context);
        this.Sj = context;
        this.sP = hiB;
        this.TKC = jcg;
        this.Ym = teq;
        this.f20270aa = fmk;
        Jcg();
    }

    private void Sj(ViewGroup viewGroup) {
        if (this.EjP == null) {
            return;
        }
        String str = this.vS;
        str.hashCode();
        switch (str) {
            case "0":
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.HiB(this, this.uA);
                setBackgroundColor(Color.parseColor("#80000000"));
                break;
            case "1":
            case "6":
                if (!this.TKC.EZ() || TextUtils.isEmpty(this.TKC.gY())) {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.vS(this);
                break;
            case "2":
            case "7":
                setBackgroundColor(Color.parseColor("#80000000"));
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.sP(this, this);
                break;
            case "5":
                if (this.TKC.EZ() && !TextUtils.isEmpty(this.TKC.gY())) {
                    setBackgroundColor(com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg.Sj(this.TKC.gY()));
                } else {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.TKC(this);
                this.EjP.setTag(2);
                break;
            case "8":
            case "11":
                this.sP.setClipChildren(false);
                this.sP.setClipChildren(false);
                ViewGroup viewGroup2 = (ViewGroup) this.sP.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setClipChildren(false);
                    viewGroup2.setClipToPadding(false);
                }
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.vS(this);
                break;
            case "9":
            case "17":
                this.EjP.setTag(2);
                break;
            case "10":
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.EjP(this, this.uA, this.TEQ);
                break;
            case "12":
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.TKC(this);
                this.EjP.setTag(2);
                break;
            case "13":
            case "24":
                if (this.vS.equals("24") && com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    this.sP.setClipChildren(false);
                    this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.vS(this);
                    break;
                } else {
                    this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.HiB(this, this.uA);
                    break;
                }
                break;
            case "14":
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.sP(this, this);
                break;
            case "16":
                View view = this.EjP;
                if (view != null && (view instanceof com.bytedance.sdk.component.adexpress.vS.RiZ) && ((com.bytedance.sdk.component.adexpress.vS.RiZ) view).getShakeLayout() != null) {
                    ((com.bytedance.sdk.component.adexpress.vS.RiZ) this.EjP).getShakeLayout().setTag(2);
                }
                this.EjP.setTag(2);
                break;
            case "18":
                View view2 = this.EjP;
                if (view2 != null && (view2 instanceof wE) && ((wE) view2).getWriggleLayout() != null) {
                    ((wE) this.EjP).getWriggleLayout().setTag(2);
                }
                this.EjP.setTag(2);
                break;
            case "20":
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.Sj(this, this.uA, viewGroup);
                break;
            case "22":
                if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.Dq(this, this.TEQ);
                    break;
                } else {
                    this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.Jcg(this, this.uA, viewGroup);
                    break;
                }
                break;
            case "23":
                if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.vS(this);
                    break;
                }
                break;
            case "25":
                if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.Dq(this, this.TEQ);
                    break;
                }
                break;
            case "29":
                View view3 = this.EjP;
                if (view3 != null && (view3 instanceof com.bytedance.sdk.component.adexpress.vS.vS) && ((com.bytedance.sdk.component.adexpress.vS.vS) view3).getShakeView() != null) {
                    ((com.bytedance.sdk.component.adexpress.vS.vS) this.EjP).getShakeView().setTag(2);
                }
                this.Dq = new com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.HiB(this, this.uA);
                break;
        }
        View.OnTouchListener onTouchListener = this.Dq;
        if (onTouchListener != null) {
            setOnTouchListener(onTouchListener);
        }
        if (Dq()) {
            this.EjP.setTag(2);
            setOnClickListener((View.OnClickListener) this.sP.getDynamicClickListener());
        }
    }

    @Override
    public void Sj() {
        if (TextUtils.equals(this.vS, PrepareException.ERROR_NO_URL)) {
            com.bytedance.sdk.component.adexpress.vS.TzV tzV = this.Jcg;
            if (tzV != null) {
                tzV.TKC();
                postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        uA.this.uA();
                    }
                }, 300L);
                return;
            }
            return;
        }
        if (TextUtils.equals(this.vS, "20")) {
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    uA.this.uA();
                }
            }, 400L);
        } else {
            uA();
        }
    }
}
