package com.bytedance.adsdk.ugeno.vS;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class Sj<T> extends FrameLayout implements com.bytedance.adsdk.ugeno.Dq.TKC.EjP {
    private String Dq;
    private int EjP;
    private boolean Fmk;
    private int HiB;
    private int Jcg;
    private com.bytedance.adsdk.ugeno.vS.Sj.Sj RiZ;
    protected List<T> Sj;
    private boolean TEQ;
    private int TKC;
    private FrameLayout TzV;
    private boolean Ym;
    private int Zq;

    private boolean f20231aa;
    private int dNu;

    private TKC f20232dx;

    private final Runnable f20233ib;
    protected com.bytedance.adsdk.ugeno.Dq.TKC sP;
    private C0187Sj sU;
    private int sef;
    private float uA;
    private int uvD;
    private int vS;
    private final Runnable zR;

    class C0187Sj extends com.bytedance.adsdk.ugeno.Dq.sP {
        C0187Sj() {
        }

        @Override
        public int Sj(Object obj) {
            return -2;
        }

        @Override
        public boolean Sj(View view, Object obj) {
            return view == obj;
        }

        @Override
        public int Sj() {
            if (Sj.this.f20231aa) {
                return 1024;
            }
            return Sj.this.Sj.size();
        }

        @Override
        public Object Sj(ViewGroup viewGroup, int i10) {
            View viewSj = Sj.this.Sj(i10, EjP.Sj(Sj.this.f20231aa, i10, Sj.this.Sj.size()));
            viewGroup.addView(viewSj);
            return viewSj;
        }

        @Override
        public void Sj(ViewGroup viewGroup, int i10, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override
        public float Sj(int i10) {
            if (Sj.this.uA <= 0.0f) {
                return 1.0f;
            }
            return 1.0f / Sj.this.uA;
        }
    }

    public class sP extends com.bytedance.adsdk.ugeno.Dq.TKC {
        public sP(Context context) {
            super(context);
        }

        private MotionEvent Sj(MotionEvent motionEvent) {
            float width = getWidth();
            float height = getHeight();
            motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
            return motionEvent;
        }

        @Override
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (!Sj.this.Fmk) {
                return false;
            }
            try {
                if (Sj.this.dNu != 1) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(Sj(motionEvent));
                Sj(motionEvent);
                return zOnInterceptTouchEvent;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }

        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!Sj.this.Fmk) {
                return false;
            }
            try {
                return Sj.this.dNu == 1 ? super.onTouchEvent(Sj(motionEvent)) : super.onTouchEvent(motionEvent);
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
    }

    public Sj(Context context) {
        super(context);
        this.Sj = new CopyOnWriteArrayList();
        this.TKC = 2000;
        this.EjP = 500;
        this.HiB = 0;
        this.vS = -1;
        this.Jcg = -1;
        this.Dq = "normal";
        this.uA = 1.0f;
        this.TEQ = true;
        this.Ym = true;
        this.f20231aa = true;
        this.Fmk = true;
        this.sef = 0;
        this.Zq = 0;
        this.uvD = 0;
        this.dNu = 0;
        this.zR = new Runnable() {
            @Override
            public void run() {
                int currentItem = Sj.this.sP.getCurrentItem() + 1;
                if (Sj.this.f20231aa) {
                    if (currentItem >= 1024) {
                        Sj.this.sP.Sj(512, false);
                        return;
                    } else {
                        Sj.this.sP.Sj(currentItem, true);
                        return;
                    }
                }
                if (currentItem >= Sj.this.sP.getAdapter().Sj()) {
                    Sj.this.sP.Sj(0, false);
                } else {
                    Sj.this.sP.Sj(currentItem, true);
                }
            }
        };
        this.f20233ib = new Runnable() {
            @Override
            public void run() {
                if (Sj.this.Ym) {
                    int currentItem = Sj.this.sP.getCurrentItem() + 1;
                    if (Sj.this.f20231aa) {
                        if (currentItem >= 1024) {
                            Sj.this.sP.Sj(512, false);
                        } else {
                            Sj.this.sP.Sj(currentItem, true);
                        }
                        Sj sj2 = Sj.this;
                        sj2.postDelayed(sj2.f20233ib, Sj.this.TKC);
                        return;
                    }
                    if (currentItem >= Sj.this.sP.getAdapter().Sj()) {
                        Sj.this.sP.Sj(0, false);
                        Sj sj3 = Sj.this;
                        sj3.postDelayed(sj3.f20233ib, Sj.this.TKC);
                    } else {
                        Sj.this.sP.Sj(currentItem, true);
                        Sj sj4 = Sj.this;
                        sj4.postDelayed(sj4.f20233ib, Sj.this.TKC);
                    }
                }
            }
        };
        this.TzV = new FrameLayout(context);
        this.sP = Sj();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.TzV.addView(this.sP, layoutParams);
        addView(this.TzV);
        com.bytedance.adsdk.ugeno.vS.Sj.Sj sj2 = new com.bytedance.adsdk.ugeno.vS.Sj.Sj(context);
        this.RiZ = sj2;
        addView(sj2);
    }

    public Sj Dq(int i10) {
        this.Jcg = i10;
        Sj(this.Dq, this.HiB, this.vS, i10, true);
        return this;
    }

    @Override
    public void TEQ(int i10) {
        if (this.f20232dx != null) {
            int iSj = EjP.Sj(this.f20231aa, i10, this.Sj.size());
            this.f20232dx.Sj(this.f20231aa, iSj, i10, iSj == 0, iSj == this.Sj.size() - 1);
        }
        if (this.TEQ) {
            this.RiZ.Sj(i10);
        }
    }

    @Override
    public void Ym(int i10) {
        TKC tkc = this.f20232dx;
        if (tkc != null) {
            tkc.Sj(this.f20231aa, i10);
        }
    }

    public void aa(int i10) {
        Sj(this.Dq, this.HiB, this.vS, this.Jcg, true);
        if (this.sU == null) {
            this.sU = new C0187Sj();
            this.sP.Sj((com.bytedance.adsdk.ugeno.Dq.TKC.EjP) this);
            this.sP.setAdapter(this.sU);
        }
        if (this.f20231aa) {
            if (i10 >= 1024) {
                this.sP.Sj(512, false);
                return;
            } else {
                this.sP.Sj(i10, true);
                return;
            }
        }
        if (i10 < 0 || i10 >= this.Sj.size()) {
            return;
        }
        this.sP.Sj(i10, true);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.Ym) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                TKC();
            } else if (action == 0) {
                EjP();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.bytedance.adsdk.ugeno.Dq.sP getAdapter() {
        return this.sP.getAdapter();
    }

    public int getCurrentItem() {
        return this.sP.getCurrentItem();
    }

    public com.bytedance.adsdk.ugeno.Dq.TKC getViewPager() {
        return this.sP;
    }

    public void setOnPageChangeListener(TKC tkc) {
        this.f20232dx = tkc;
    }

    public abstract View uA(int i10);

    public Sj EjP(int i10) {
        this.RiZ.setSelectedColor(i10);
        return this;
    }

    public Sj HiB(int i10) {
        this.RiZ.setUnSelectedColor(i10);
        return this;
    }

    public Sj<T> Jcg(int i10) {
        this.vS = i10;
        Sj(this.Dq, this.HiB, i10, this.Jcg, true);
        return this;
    }

    public com.bytedance.adsdk.ugeno.Dq.TKC Sj() {
        return new sP(getContext());
    }

    public Sj TKC(int i10) {
        this.TKC = i10;
        TKC();
        return this;
    }

    public Sj sP(int i10) {
        this.EjP = i10;
        return this;
    }

    public Sj vS(int i10) {
        this.HiB = i10;
        Sj(this.Dq, i10, this.vS, this.Jcg, true);
        return this;
    }

    public void EjP() {
        removeCallbacks(this.f20233ib);
    }

    public Sj Sj(int i10) {
        this.dNu = i10;
        return this;
    }

    public Sj sP(boolean z10) {
        this.TEQ = z10;
        return this;
    }

    public Sj Sj(boolean z10) {
        this.Ym = z10;
        TKC();
        return this;
    }

    public Sj TKC(boolean z10) {
        this.RiZ.setLoop(z10);
        if (this.f20231aa != z10) {
            int iSj = EjP.Sj(z10, this.sP.getCurrentItem(), this.Sj.size());
            this.f20231aa = z10;
            C0187Sj c0187Sj = this.sU;
            if (c0187Sj != null) {
                c0187Sj.TKC();
                this.sP.setCurrentItem(iSj);
            }
        }
        return this;
    }

    public void sP() {
        int i10;
        Sj(this.Dq, this.HiB, this.vS, this.Jcg, true);
        if (this.sU == null) {
            this.sU = new C0187Sj();
            this.sP.Sj((com.bytedance.adsdk.ugeno.Dq.TKC.EjP) this);
            this.sP.setAdapter(this.sU);
        }
        int i11 = this.sef;
        if (i11 < 0 || i11 >= this.Sj.size()) {
            this.sef = 0;
        }
        if (this.f20231aa) {
            i10 = this.sef + 512;
        } else {
            i10 = this.sef;
        }
        this.sP.Sj(i10, true);
        if (!this.f20231aa) {
            TEQ(i10);
        }
        if (this.Ym) {
            TKC();
        }
    }

    public Sj Sj(float f10) {
        this.uA = f10;
        return this;
    }

    public Sj Sj(String str) {
        this.Dq = str;
        Sj(str, this.HiB, this.vS, this.Jcg, true);
        return this;
    }

    public void Sj(String str, int i10, int i11, int i12, boolean z10) {
        C0187Sj c0187Sj = this.sU;
        if (c0187Sj != null) {
            c0187Sj.TKC();
        }
        this.sP.setPageMargin(i10);
        ViewGroup.LayoutParams layoutParams = this.sP.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            if (this.dNu == 1) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.topMargin = i11 + i10;
                marginLayoutParams.bottomMargin = i10 + i12;
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams2.leftMargin = i11 + i10;
                marginLayoutParams2.rightMargin = i10 + i12;
            }
            this.sP.setLayoutParams(layoutParams);
        }
        if (i11 > 0 || i12 > 0) {
            this.TzV.setClipChildren(false);
            this.sP.setClipChildren(false);
        }
        if (this.dNu == 1) {
            this.sP.Sj(true, (com.bytedance.adsdk.ugeno.Dq.TKC.HiB) new com.bytedance.adsdk.ugeno.vS.sP.sP());
            this.sP.setOverScrollMode(2);
        } else if (TextUtils.equals(str, "linear")) {
            this.sP.Sj(false, (com.bytedance.adsdk.ugeno.Dq.TKC.HiB) new com.bytedance.adsdk.ugeno.vS.sP.Sj());
        } else {
            this.sP.Sj(false, (com.bytedance.adsdk.ugeno.Dq.TKC.HiB) null);
        }
        this.sP.setOffscreenPageLimit((int) this.uA);
    }

    public void TKC() {
        removeCallbacks(this.f20233ib);
        postDelayed(this.f20233ib, this.TKC);
    }

    public View Sj(int i10, int i11) {
        if (this.Sj.size() == 0) {
            return new View(getContext());
        }
        View viewUA = uA(i11);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (viewUA instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (viewUA.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewUA.getParent()).removeView(viewUA);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(viewUA, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public Sj<T> Sj(T t10) {
        if (t10 != null) {
            this.Sj.add(t10);
            if (this.TEQ) {
                this.RiZ.sP();
            }
        }
        C0187Sj c0187Sj = this.sU;
        if (c0187Sj != null) {
            c0187Sj.TKC();
            this.RiZ.Sj(this.sef, this.sP.getCurrentItem());
        }
        return this;
    }

    @Override
    public void Sj(int i10, float f10, int i11) {
        TKC tkc = this.f20232dx;
        if (tkc != null) {
            boolean z10 = this.f20231aa;
            tkc.Sj(z10, EjP.Sj(z10, i10, this.Sj.size()), f10, i11);
        }
    }
}
