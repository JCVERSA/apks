package com.mgtv.a.d.d.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mgadplus.viewgroup.dynamicview.AutoplayerLayout;
import com.mgadplus.viewgroup.dynamicview.CornerSchemeView;
import com.mgadplus.viewgroup.dynamicview.Electroniclayout;
import com.mgadplus.viewgroup.dynamicview.FlingCornerView;
import com.mgadplus.viewgroup.dynamicview.FlipFramelayout;
import com.mgadplus.viewgroup.dynamicview.FlipRelative;
import com.mgadplus.viewgroup.dynamicview.LargeIconCornerView;
import com.mgadplus.viewgroup.dynamicview.MarqueeCornerView;
import com.mgadplus.viewgroup.dynamicview.VoteFloatView;
import com.mgmi.R;
import com.mgmi.model.VASTFloatAd;
import com.mgtv.a.d.b.d;
import defpackage.dkd;
import defpackage.l4d;
import defpackage.ly3;

public class a extends com.mgtv.a.d.b.a<VASTFloatAd> {
    public int a = 1;
    protected TextView b;

    private ViewGroup b(Context context) {
        MarqueeCornerView marqueeCornerView = (MarqueeCornerView) LayoutInflater.from(context).inflate(R.layout.mgmi_marquee_corner_layout, (ViewGroup) null);
        marqueeCornerView.prepareContainer(null, new FrameLayout.LayoutParams(-2, -2));
        return marqueeCornerView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.mgadplus.viewgroup.dynamicview.FlipFramelayout, com.mgadplus.viewgroup.dynamicview.a] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.view.View, com.mgadplus.viewgroup.dynamicview.FlipFramelayout] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v7, types: [android.view.View, com.mgadplus.viewgroup.dynamicview.FlingCornerView, com.mgadplus.viewgroup.dynamicview.FlipRelative] */
    /* JADX WARN: Type inference failed for: r4v9, types: [android.view.View, com.mgadplus.viewgroup.dynamicview.LargeIconCornerView] */
    @Override
    public void a(Context context) {
        Object obj = this.n;
        if (obj == null) {
            return;
        }
        ?? r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        if (((VASTFloatAd) obj).getAdStyle() != 9) {
            if (((VASTFloatAd) this.n).getAdStyle() == 3) {
                this.o = c(context);
            } else if (((VASTFloatAd) this.n).getAdStyle() == 2 || ((VASTFloatAd) this.n).getAdStyle() == 0) {
                r4 = (FlipFramelayout) LayoutInflater.from(context).inflate(R.layout.mgmi_connerview_layout_prepic, (ViewGroup) null);
                r4.setFullScreen(i());
                this.t = (ViewGroup) r4.findViewById(R.id.image_container);
                this.s = r4.findViewById(R.id.closeAdIcon);
                this.o = r4;
            } else if (((VASTFloatAd) this.n).getAdStyle() == 4) {
                r4 = (LargeIconCornerView) LayoutInflater.from(context).inflate(R.layout.mgmi_connerview_layout_large_icon, (ViewGroup) null);
                r4.a(4);
                this.t = (ViewGroup) r4.findViewById(R.id.image_container);
                this.s = r4.findViewById(R.id.closeAdIcon);
                this.o = r4;
            } else if (((VASTFloatAd) this.n).getAdStyle() == 8) {
                r4 = (FlingCornerView) LayoutInflater.from(context).inflate(R.layout.mgmi_connerview_layout_fling, (ViewGroup) null);
                r4.setCloseAnimation(true);
                this.t = (ViewGroup) r4.findViewById(R.id.image_container);
                this.s = r4.findViewById(R.id.closeAdIcon);
                this.o = r4;
            } else if (((VASTFloatAd) this.n).getAdStyle() == 1) {
                r4 = i() ? (FlipRelative) LayoutInflater.from(context).inflate(R.layout.mgmi_connerview_layout, (ViewGroup) null) : (FlipRelative) LayoutInflater.from(context).inflate(R.layout.mgmi_connerview_layout_harfscreen, (ViewGroup) null);
                this.t = (ViewGroup) r4.findViewById(R.id.image_container);
                this.s = r4.findViewById(R.id.closeAdIcon);
                this.o = r4;
            } else if (((VASTFloatAd) this.n).getAdStyle() == 6) {
                Electroniclayout electroniclayoutA = a((VASTFloatAd) this.n, LayoutInflater.from(context));
                if (electroniclayoutA != null) {
                    this.t = (ViewGroup) electroniclayoutA.findViewById(R.id.image_container);
                    this.s = electroniclayoutA.findViewById(R.id.closeAdIcon);
                    this.o = electroniclayoutA;
                }
            } else if (((VASTFloatAd) this.n).getAdStyle() == 7) {
                VoteFloatView voteFloatViewB = b((VASTFloatAd) this.n, LayoutInflater.from(context));
                if (voteFloatViewB != null) {
                    this.o = voteFloatViewB;
                    voteFloatViewB.setFullSreen(i());
                    this.t = (ViewGroup) this.o.findViewById(R.id.mainBg);
                    this.s = voteFloatViewB.findViewById(R.id.closeAdIcon);
                    r4 = voteFloatViewB;
                }
            } else if (((VASTFloatAd) this.n).getAdStyle() == 20) {
                if (i()) {
                    b(context);
                }
            } else if (((VASTFloatAd) this.n).getAdStyle() == 14) {
                try {
                    View viewInflate = LayoutInflater.from(context).inflate(R.layout.mgmi_corner_web_layout, (ViewGroup) null);
                    this.o = viewInflate;
                    this.t = (ViewGroup) viewInflate.findViewById(R.id.web_corner_content);
                    this.s = this.o.findViewById(R.id.web_corner_close_icon);
                } catch (Throwable unused) {
                }
            }
        }
        if (r4 != 0) {
            r4.bindData(this.n);
        }
        if (r4 != 0) {
            r4.a();
            r4.setOnFlipTouchEvent(false, new ly3() {
                @Override
                public void onTp(float f, float f2, float f3, float f4, float f5, float f6) {
                    if (((com.mgtv.a.d.b.a) a.this).v == null || ((com.mgtv.a.d.b.a) a.this).n == null) {
                        return;
                    }
                    ((com.mgtv.a.d.b.a) a.this).v.a((View) null, new dkd(f, f2, f3, f4, f5, f6));
                }
            });
            d dVar = this.v;
            if (dVar != null) {
                r4.setScropContainerWidth(dVar.b());
                r4.setScropContainerHeight(this.v.a());
            }
        }
        Object obj2 = this.n;
        if (obj2 != null) {
            if (((VASTFloatAd) obj2).getClose() == 1) {
                l4d.f(this.s, 0);
            } else {
                l4d.f(this.s, 8);
            }
        }
        c2((VASTFloatAd) this.n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void f() {
        super.f();
        if (this.s != null) {
            if (((VASTFloatAd) this.n).getClose() == 1) {
                this.s.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        if (((com.mgtv.a.d.b.a) a.this).v != null) {
                            ((com.mgtv.a.d.b.a) a.this).v.a(((com.mgtv.a.d.b.a) a.this).n);
                        }
                    }
                });
                l4d.f(this.s, 0);
            } else {
                l4d.f(this.s, 8);
            }
        }
        KeyEvent.Callback callback = this.o;
        if (callback instanceof CornerSchemeView) {
            ((CornerSchemeView) callback).setEventListener(new com.mgadplus.viewgroup.dynamicview.a.C0159a() {
                @Override
                public void a() {
                    if (((com.mgtv.a.d.b.a) a.this).v != null) {
                        ((com.mgtv.a.d.b.a) a.this).v.a((Object) null);
                    }
                }

                @Override
                public void b() {
                }

                public void b(int i) {
                }

                @Override
                public void a(int i) {
                    if (((com.mgtv.a.d.b.a) a.this).v != null) {
                        ((com.mgtv.a.d.b.a) a.this).v.a((View) null, new dkd());
                    }
                }
            });
        }
    }

    @Override
    public View h() {
        return this.o;
    }

    @Override
    public ViewGroup j() {
        return this.t;
    }

    private void c2(VASTFloatAd vASTFloatAd) {
        if (vASTFloatAd != null && vASTFloatAd.isShowAdLog()) {
            String adOrigin = vASTFloatAd.getAdOrigin();
            TextView textView = this.b;
            if (textView != null) {
                l4d.f(textView, 0);
                try {
                    if (TextUtils.isEmpty(adOrigin)) {
                        TextView textView2 = this.b;
                        textView2.setText(textView2.getContext().getResources().getString(R.string.mgmi_template_ad));
                    } else {
                        TextView textView3 = this.b;
                        textView3.setText(textView3.getContext().getResources().getString(R.string.mgmi_adform_dsc, adOrigin));
                    }
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            return;
        }
        l4d.f(this.b, 8);
    }

    public void b(VASTFloatAd vASTFloatAd) {
        KeyEvent.Callback callback = this.o;
        if (callback instanceof CornerSchemeView) {
            ((CornerSchemeView) callback).bindData(vASTFloatAd);
        }
    }

    private VoteFloatView b(VASTFloatAd vASTFloatAd, LayoutInflater layoutInflater) {
        if (vASTFloatAd.getVoteMessage() == null) {
            return null;
        }
        if (i()) {
            VoteFloatView voteFloatView = (VoteFloatView) layoutInflater.inflate(R.layout.vote_float_fullscreen, (ViewGroup) null);
            voteFloatView.setFullSreen(true);
            return voteFloatView;
        }
        VoteFloatView voteFloatView2 = (VoteFloatView) layoutInflater.inflate(R.layout.vote_float_harfscreen, (ViewGroup) null);
        voteFloatView2.setFullSreen(false);
        return voteFloatView2;
    }

    private ViewGroup c(Context context) {
        return (ViewGroup) LayoutInflater.from(context).inflate(R.layout.mgmi_bubble_layout, (ViewGroup) null);
    }

    @Override
    public void c(VASTFloatAd vASTFloatAd) {
        b(vASTFloatAd);
        super.c(vASTFloatAd);
    }

    public void a() {
        View view = this.o;
        if (view instanceof FlipFramelayout) {
            ((FlipFramelayout) view).c();
        } else if (view instanceof AutoplayerLayout) {
            ((AutoplayerLayout) view).appear(false);
        }
    }

    @Override
    public void a(d dVar) {
        super.a(dVar);
    }

    @Override
    public void a(String str) {
        super.a(str);
    }

    private Electroniclayout a(VASTFloatAd vASTFloatAd, LayoutInflater layoutInflater) {
        if (vASTFloatAd.getECommerce() == null) {
            return null;
        }
        int iA = vASTFloatAd.getECommerce().a();
        if (i()) {
            if (iA == 2) {
                if (TextUtils.isEmpty(vASTFloatAd.getECommerce().g())) {
                    return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_electronic_si, (ViewGroup) null);
                }
                return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_electronic, (ViewGroup) null);
            }
            if (TextUtils.isEmpty(vASTFloatAd.getECommerce().g())) {
                return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_horizotal_electronic_si, (ViewGroup) null);
            }
            return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_horizotal_electronic, (ViewGroup) null);
        }
        if (iA == 2) {
            if (TextUtils.isEmpty(vASTFloatAd.getECommerce().g())) {
                return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_electronic_harlfscreen_si, (ViewGroup) null);
            }
            return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_electronic_harlfscreen, (ViewGroup) null);
        }
        if (TextUtils.isEmpty(vASTFloatAd.getECommerce().g())) {
            return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_horizotal_electronic_harlfscreen_si, (ViewGroup) null);
        }
        return (Electroniclayout) layoutInflater.inflate(R.layout.mgmi_connerview_layout_horizotal_electronic_harlfscreen, (ViewGroup) null);
    }
}
