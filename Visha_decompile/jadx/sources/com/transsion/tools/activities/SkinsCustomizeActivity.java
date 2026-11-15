package com.transsion.tools.activities;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.view.WindowCompat;
import androidx.media3.common.C;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.ChangeBounds;
import androidx.transition.Scene;
import androidx.transition.TransitionManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hunantv.media.report.ReportParams;
import com.just.agentweb.WebIndicator;
import com.transsion.WindowInfoViewModel;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.tools.R;
import com.transsion.tools.activities.SkinsCustomizeActivity;
import com.transsion.tools.adapter.ColorChooserAdapter;
import com.transsion.tools.adapter.ImageChooserAdapter;
import com.transsion.tools.adapter.ThumbFrameAdapter;
import com.transsion.tools.beans.CustomThemeCache;
import com.transsion.tools.beans.ThemeColor;
import com.transsion.tools.beans.ThemeImage;
import com.transsion.tools.decoration.GridSpaceThemeColorItemDecoration;
import com.transsion.tools.model.CustomThemeViewModel;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BubbleTextView;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.b39;
import defpackage.bc;
import defpackage.d16;
import defpackage.db;
import defpackage.h27;
import defpackage.hb0;
import defpackage.if7;
import defpackage.k29;
import defpackage.m7a;
import defpackage.mc7;
import defpackage.mf0;
import defpackage.mfb;
import defpackage.os0;
import defpackage.pp3;
import defpackage.t08;
import defpackage.t74;
import defpackage.tha;
import defpackage.vb;
import defpackage.vha;
import defpackage.vk1;
import defpackage.w6c;
import defpackage.woc;
import defpackage.xn9;
import defpackage.zf1;
import defpackage.zz0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class SkinsCustomizeActivity extends BasePermissionActivity implements View.OnClickListener, ActivityCompat.OnRequestPermissionsResultCallback {
    public static final int[] c1 = {R.string.skins_customize_personalize, R.string.skins_customize_color, R.string.skins_customize_background};
    public mfb A0;
    public Bitmap B0;
    public Bitmap C0;
    public Bitmap D0;
    public Bitmap E0;
    public CustomThemeCache F0;
    public LinearLayout G0;
    public AnimatorSet H0;
    public ValueAnimator I0;
    public xn9 J0;
    public BubbleTextView K0;
    public RelativeLayout L0;
    public TextView M0;
    public View N;
    public TextView N0;
    public View O;
    public WindowInfoViewModel O0;
    public ImageView P;
    public int P0;
    public ImageView Q;
    public boolean Q0;
    public ImageView R;
    public boolean R0;
    public ImageView S;
    public TextView T;
    public CustomTabLayout U;
    public LinearLayout V;
    public LinearLayout W;
    public long W0;
    public FrameLayout X;
    public Bitmap X0;
    public ConstraintLayout Y;
    public RecyclerView Z;
    public RecyclerView a0;
    public RecyclerView b0;
    public RecyclerView c0;
    public ImageChooserAdapter d0;
    public ImageChooserAdapter e0;
    public ThumbFrameAdapter f0;
    public ColorChooserAdapter g0;
    public CustomThemeViewModel m0;
    public OSSeekbar n0;
    public OSSeekbar o0;
    public SeekBar p0;
    public int q0;
    public int r0;
    public View t0;
    public View u0;
    public View v0;
    public View w0;
    public View x0;
    public View y0;
    public View z0;
    public final List h0 = new ArrayList();
    public final List i0 = new ArrayList();
    public final List j0 = new ArrayList();
    public final List k0 = new ArrayList();
    public final List l0 = new ArrayList();
    public int s0 = -1;
    public boolean S0 = false;
    public boolean T0 = false;
    public final AtomicBoolean U0 = new AtomicBoolean(false);
    public final AtomicInteger V0 = new AtomicInteger(0);
    public final Observer Y0 = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.s2((woc) obj);
        }
    };
    public final os0 Z0 = new h();
    public final mfb.d a1 = new i();
    public final mfb.d b1 = new j();

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(List list) {
            SkinsCustomizeActivity.this.k0.clear();
            SkinsCustomizeActivity.this.k0.addAll(list);
            if (SkinsCustomizeActivity.this.F0 != null) {
                if (SkinsCustomizeActivity.this.F0.colorIndex >= SkinsCustomizeActivity.this.k0.size()) {
                    SkinsCustomizeActivity.this.F0.colorIndex = SkinsCustomizeActivity.this.k0.size() - 1;
                }
                SkinsCustomizeActivity.this.g0.r(SkinsCustomizeActivity.this.F0.colorIndex);
                SkinsCustomizeActivity.this.g0.notifyDataSetChanged();
                SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
                skinsCustomizeActivity.Q1(skinsCustomizeActivity.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(SkinsCustomizeActivity.this.F0.colorIndex)).colorRes, SkinsCustomizeActivity.this.getTheme()));
                ThemeImage themeImage = (ThemeImage) SkinsCustomizeActivity.this.h0.get(SkinsCustomizeActivity.this.d0.g());
                int color = SkinsCustomizeActivity.this.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(SkinsCustomizeActivity.this.F0.colorIndex)).colorRes, SkinsCustomizeActivity.this.getTheme());
                SkinsCustomizeActivity skinsCustomizeActivity2 = SkinsCustomizeActivity.this;
                ImageView imageView = skinsCustomizeActivity2.Q;
                SkinsCustomizeActivity skinsCustomizeActivity3 = SkinsCustomizeActivity.this;
                m7a.a(color, skinsCustomizeActivity2, imageView, skinsCustomizeActivity3.a2(((ThemeImage) skinsCustomizeActivity3.i0.get(SkinsCustomizeActivity.this.F0.backgroundIndex)).thumbType == 1), themeImage.thumbType != 1);
            } else {
                int color2 = SkinsCustomizeActivity.this.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(0)).colorRes, SkinsCustomizeActivity.this.getTheme());
                SkinsCustomizeActivity skinsCustomizeActivity4 = SkinsCustomizeActivity.this;
                m7a.a(color2, skinsCustomizeActivity4, skinsCustomizeActivity4.Q, SkinsCustomizeActivity.this.a2(true), false);
            }
            SkinsCustomizeActivity.this.g0.setNewData(SkinsCustomizeActivity.this.k0);
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public b() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (i != SkinsCustomizeActivity.this.e0.g() && i != 0) {
                SkinsCustomizeActivity.this.Z1(true);
            }
            if (i == 0) {
                hb0.markDirect("skin_diy_edit_bg_upload_cl");
                SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
                skinsCustomizeActivity.A0 = new mfb(skinsCustomizeActivity, skinsCustomizeActivity.a1);
                SkinsCustomizeActivity.this.A0.m();
                hb0.markDirect("skin_diy_edit_bg_upload_pop_show");
                w6c.r(SkinsCustomizeActivity.this, "custom_bubble_1", false);
                return;
            }
            ThemeImage themeImage = (ThemeImage) SkinsCustomizeActivity.this.i0.get(i);
            if (themeImage.isDefault) {
                SkinsCustomizeActivity.this.P.setImageResource(themeImage.resId);
                SkinsCustomizeActivity.this.Q.setImageResource(SkinsCustomizeActivity.this.a2(themeImage.thumbType == 1));
            } else {
                SkinsCustomizeActivity.this.Q.setImageResource(SkinsCustomizeActivity.this.a2(false));
                SkinsCustomizeActivity.this.P.setImageBitmap(SkinsCustomizeActivity.this.C0);
                if (i == SkinsCustomizeActivity.this.e0.g() && themeImage.originImageUri != null) {
                    SkinsCustomizeActivity skinsCustomizeActivity2 = SkinsCustomizeActivity.this;
                    skinsCustomizeActivity2.A0 = new mfb(skinsCustomizeActivity2, skinsCustomizeActivity2.a1);
                    SkinsCustomizeActivity.this.A0.p(Uri.parse(themeImage.originImageUri));
                }
            }
            ThemeImage themeImage2 = (ThemeImage) SkinsCustomizeActivity.this.h0.get(SkinsCustomizeActivity.this.d0.g());
            int color = SkinsCustomizeActivity.this.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(SkinsCustomizeActivity.this.g0.g())).colorRes, SkinsCustomizeActivity.this.getTheme());
            SkinsCustomizeActivity skinsCustomizeActivity3 = SkinsCustomizeActivity.this;
            m7a.a(color, skinsCustomizeActivity3, skinsCustomizeActivity3.Q, SkinsCustomizeActivity.this.a2(themeImage.thumbType == 1), themeImage2.thumbType != 1);
            SkinsCustomizeActivity.this.R2(true ^ themeImage.isDefault);
            if (i != SkinsCustomizeActivity.this.e0.g()) {
                SkinsCustomizeActivity.this.e0.r(i);
                d16.e(((ThemeImage) SkinsCustomizeActivity.this.i0.get(i)).thumbType);
                SkinsCustomizeActivity.this.e0.setNewData(SkinsCustomizeActivity.this.i0);
            }
        }
    }

    public class c extends if7 {
        public c() {
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (SkinsCustomizeActivity.this.V2()) {
                SkinsCustomizeActivity.this.b2();
                if (i != SkinsCustomizeActivity.this.d0.g()) {
                    SkinsCustomizeActivity.this.Z1(true);
                }
                ThemeImage themeImage = (ThemeImage) SkinsCustomizeActivity.this.h0.get(i);
                if (i == 0) {
                    hb0.markDirect("skin_diy_edit_ps_upload_cl");
                    SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
                    skinsCustomizeActivity.A0 = new mfb(skinsCustomizeActivity, skinsCustomizeActivity.b1, true);
                    SkinsCustomizeActivity.this.A0.m();
                    SkinsCustomizeActivity.this.W2();
                    hb0.markDirect("skin_diy_edit_ps_upload_pop_show");
                    return;
                }
                SkinsCustomizeActivity.this.b0.setVisibility(themeImage.isDefault ? 8 : 0);
                if (themeImage.isDefault) {
                    SkinsCustomizeActivity.this.U1(i);
                } else {
                    SkinsCustomizeActivity.this.N1();
                    SkinsCustomizeActivity.this.G0.setVisibility(8);
                    SkinsCustomizeActivity.this.u0.setVisibility(0);
                    SkinsCustomizeActivity.this.v0.setVisibility(0);
                    SkinsCustomizeActivity.this.w0.setVisibility(0);
                    SkinsCustomizeActivity.this.x0.setVisibility(0);
                    if (i == SkinsCustomizeActivity.this.d0.g() && themeImage.originImageUri != null) {
                        SkinsCustomizeActivity skinsCustomizeActivity2 = SkinsCustomizeActivity.this;
                        skinsCustomizeActivity2.A0 = new mfb(skinsCustomizeActivity2, skinsCustomizeActivity2.b1, true);
                        SkinsCustomizeActivity.this.A0.p(Uri.parse(themeImage.originImageUri));
                    }
                }
                if (i != SkinsCustomizeActivity.this.d0.g()) {
                    SkinsCustomizeActivity.this.d0.r(i);
                    d16.l(themeImage.thumbType);
                    SkinsCustomizeActivity.this.d0.setNewData(SkinsCustomizeActivity.this.h0);
                }
            }
        }
    }

    public class d implements BaseQuickAdapter.OnItemClickListener {
        public d() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (SkinsCustomizeActivity.this.V2()) {
                SkinsCustomizeActivity.this.b2();
                if (i == SkinsCustomizeActivity.this.f0.g()) {
                    SkinsCustomizeActivity.this.W2();
                    return;
                }
                SkinsCustomizeActivity.this.Z1(true);
                d16.m(i);
                SkinsCustomizeActivity.this.f0.r(i);
                SkinsCustomizeActivity.this.f0.setNewData(SkinsCustomizeActivity.this.j0);
                SkinsCustomizeActivity.this.N1();
            }
        }
    }

    public class e implements BaseQuickAdapter.OnItemClickListener {
        public e() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (i != SkinsCustomizeActivity.this.g0.g()) {
                SkinsCustomizeActivity.this.Z1(true);
                SkinsCustomizeActivity.this.g0.r(i);
                SkinsCustomizeActivity.this.g0.notifyDataSetChanged();
                d16.g(((ThemeColor) SkinsCustomizeActivity.this.k0.get(i)).colorTheme);
                if (b39.a(SkinsCustomizeActivity.this) == BaseConstant.SCREEN_TYPE.FOLD) {
                    SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
                    skinsCustomizeActivity.Q1(skinsCustomizeActivity.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(i)).colorRes, SkinsCustomizeActivity.this.getTheme()));
                } else if (SkinsCustomizeActivity.this.H0 != null) {
                    SkinsCustomizeActivity.this.H0.cancel();
                }
                ThemeImage themeImage = (ThemeImage) SkinsCustomizeActivity.this.h0.get(SkinsCustomizeActivity.this.d0.g());
                int color = SkinsCustomizeActivity.this.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(i)).colorRes, SkinsCustomizeActivity.this.getTheme());
                SkinsCustomizeActivity skinsCustomizeActivity2 = SkinsCustomizeActivity.this;
                ImageView imageView = skinsCustomizeActivity2.Q;
                SkinsCustomizeActivity skinsCustomizeActivity3 = SkinsCustomizeActivity.this;
                m7a.a(color, skinsCustomizeActivity2, imageView, skinsCustomizeActivity3.a2(((ThemeImage) skinsCustomizeActivity3.i0.get(SkinsCustomizeActivity.this.e0.g())).thumbType == 1), themeImage.thumbType != 1);
            }
        }
    }

    public class f implements Animator.AnimatorListener {
        public f() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (SkinsCustomizeActivity.this.h0.size() <= 0 || SkinsCustomizeActivity.this.k0.size() <= 0) {
                return;
            }
            ThemeImage themeImage = (ThemeImage) SkinsCustomizeActivity.this.h0.get(SkinsCustomizeActivity.this.d0.g());
            SkinsCustomizeActivity.this.H2(themeImage.thumbType != 1);
            if (themeImage.thumbType != 1) {
                int i = 0;
                while (i < SkinsCustomizeActivity.this.G0.getChildCount()) {
                    SkinsCustomizeActivity.this.G0.getChildAt(i).setVisibility(i == 0 ? 0 : 4);
                    SkinsCustomizeActivity.this.R.setVisibility(4);
                    i++;
                }
            }
            SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
            skinsCustomizeActivity.Q1(skinsCustomizeActivity.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(SkinsCustomizeActivity.this.g0.g())).colorRes, SkinsCustomizeActivity.this.getTheme()));
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class g implements CustomTabLayout.OnTabSelectedListener {
        public g() {
        }

        @Override
        public void onTabReselected(CustomTabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(CustomTabLayout.Tab tab) {
            SkinsCustomizeActivity.this.U2(tab.getPosition());
            int position = tab.getPosition();
            if (position == 0) {
                hb0.markDirect("skin_diy_edit_ps_cl");
                hb0.markDirect("skin_diy_edit_ps_show");
            } else if (position == 1) {
                hb0.markDirect("skin_diy_edit_color_cl");
                hb0.markDirect("skin_diy_edit_color_show");
            } else if (position == 2) {
                hb0.markDirect("skin_diy_edit_bg_cl");
                hb0.markDirect("skin_diy_edit_bg_show");
            }
            SkinsCustomizeActivity.this.P0 = tab.getPosition();
        }

        @Override
        public void onTabUnselected(CustomTabLayout.Tab tab) {
        }
    }

    public class h implements os0 {
        public h() {
        }

        @Override
        public void b() {
            SkinsCustomizeActivity.this.finish();
        }
    }

    public class i implements mfb.d {
        public i() {
        }

        @Override
        public void a(final Uri uri, Uri uri2) {
            ThemeImage themeImage = new ThemeImage();
            themeImage.imageUri = uri.toString();
            themeImage.originImageUri = uri2.toString();
            if (SkinsCustomizeActivity.this.i0.size() > 3) {
                SkinsCustomizeActivity.this.i0.remove(1);
            }
            SkinsCustomizeActivity.this.i0.add(1, themeImage);
            SkinsCustomizeActivity.this.e0.r(1);
            SkinsCustomizeActivity.this.e0.setNewData(SkinsCustomizeActivity.this.i0);
            d16.f("skin_diy_edit_upload_clip_apply", 1);
            SkinsCustomizeActivity.this.R2(true);
            SkinsCustomizeActivity.this.Z1(true);
            mc7.K(this).g(SkinsCustomizeActivity.this.bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.d(uri, (SkinsCustomizeActivity.i) obj);
                }
            }).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.e((Bitmap) obj);
                }
            });
        }

        public final Bitmap d(Uri uri, i iVar) {
            return SkinsCustomizeActivity.this.C2(uri.toString());
        }

        public final void e(Bitmap bitmap) {
            SkinsCustomizeActivity.this.X2(bitmap);
            int color = SkinsCustomizeActivity.this.getResources().getColor(((ThemeColor) SkinsCustomizeActivity.this.k0.get(SkinsCustomizeActivity.this.g0.g())).colorRes, SkinsCustomizeActivity.this.getTheme());
            SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
            m7a.a(color, skinsCustomizeActivity, skinsCustomizeActivity.Q, SkinsCustomizeActivity.this.a2(false), ((ThemeImage) SkinsCustomizeActivity.this.h0.get(SkinsCustomizeActivity.this.d0.g())).thumbType != 1);
            SkinsCustomizeActivity skinsCustomizeActivity2 = SkinsCustomizeActivity.this;
            skinsCustomizeActivity2.O1(skinsCustomizeActivity2.n0.getProgress());
        }
    }

    public class j implements mfb.d {
        public j() {
        }

        public void e(Bitmap bitmap) {
            SkinsCustomizeActivity.this.b3(bitmap);
            SkinsCustomizeActivity.this.N1();
            SkinsCustomizeActivity.this.b0.setVisibility(0);
        }

        @Override
        public void a(final Uri uri, Uri uri2) {
            ThemeImage themeImage = new ThemeImage();
            themeImage.imageUri = uri.toString();
            themeImage.originImageUri = uri2.toString();
            if (SkinsCustomizeActivity.this.h0.size() > 5) {
                SkinsCustomizeActivity.this.h0.remove(1);
            }
            SkinsCustomizeActivity.this.h0.add(1, themeImage);
            SkinsCustomizeActivity.this.d0.r(1);
            SkinsCustomizeActivity.this.d0.setNewData(SkinsCustomizeActivity.this.h0);
            d16.f("skin_diy_edit_upload_clip_apply", 0);
            mc7.K(this).g(SkinsCustomizeActivity.this.bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.d(uri, (SkinsCustomizeActivity.j) obj);
                }
            }).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.e((Bitmap) obj);
                }
            });
        }

        public final Bitmap d(Uri uri, j jVar) {
            return SkinsCustomizeActivity.this.D2(uri.toString());
        }
    }

    public class k implements OSSeekbar.c {
        public k() {
        }

        @Override
        public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
            if (SkinsCustomizeActivity.this.s0 == i) {
                return;
            }
            SkinsCustomizeActivity.this.s0 = i;
            SkinsCustomizeActivity.this.O1(i);
        }

        @Override
        public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
            SkinsCustomizeActivity.this.Z1(true);
        }

        @Override
        public void onStopTrackingTouch(OSSeekbar oSSeekbar) {
        }
    }

    public class l implements OSSeekbar.c {
        public l() {
        }

        @Override
        public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
            SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
            skinsCustomizeActivity.O1(skinsCustomizeActivity.n0.getProgress());
        }

        @Override
        public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
            SkinsCustomizeActivity.this.Z1(true);
        }

        @Override
        public void onStopTrackingTouch(OSSeekbar oSSeekbar) {
        }
    }

    public class m implements View.OnTouchListener {
        public m() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class n implements Observer {

        public class a implements ViewTreeObserver.OnPreDrawListener {
            public a() {
            }

            @Override
            public boolean onPreDraw() {
                if (SkinsCustomizeActivity.this.P.getWidth() <= 0 || SkinsCustomizeActivity.this.P.getHeight() <= 0) {
                    return true;
                }
                SkinsCustomizeActivity.this.S1();
                SkinsCustomizeActivity.this.P.getViewTreeObserver().removeOnPreDrawListener(this);
                return true;
            }
        }

        public n() {
        }

        public final Bitmap c(n nVar) {
            Log.i("SkinsCustomizeActivity", "initViewModel backgroundUri: " + SkinsCustomizeActivity.this.F0.customBackground);
            SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
            return skinsCustomizeActivity.C2(skinsCustomizeActivity.F0.customBackground);
        }

        public final void d(Bitmap bitmap) {
            SkinsCustomizeActivity.this.X2(bitmap);
            SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
            skinsCustomizeActivity.O1(skinsCustomizeActivity.n0.getProgress());
        }

        @Override
        public void onChanged(List list) {
            SkinsCustomizeActivity.this.i0.clear();
            SkinsCustomizeActivity.this.i0.addAll(list);
            if (SkinsCustomizeActivity.this.F0 != null) {
                if (TextUtils.isEmpty(SkinsCustomizeActivity.this.F0.customBackground)) {
                    SkinsCustomizeActivity.this.R2(false);
                } else {
                    ThemeImage themeImage = new ThemeImage();
                    themeImage.imageUri = SkinsCustomizeActivity.this.F0.customBackground;
                    SkinsCustomizeActivity.this.i0.add(1, themeImage);
                    SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
                    skinsCustomizeActivity.R2(skinsCustomizeActivity.F0.backgroundIndex == 1);
                    mc7.K(this).g(SkinsCustomizeActivity.this.bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
                        @Override
                        public final Object apply(Object obj) {
                            return this.b.c((SkinsCustomizeActivity.n) obj);
                        }
                    }).M(vb.a()).Z(new zf1() {
                        @Override
                        public final void accept(Object obj) {
                            this.b.d((Bitmap) obj);
                        }
                    });
                }
                if (SkinsCustomizeActivity.this.F0.backgroundIndex >= SkinsCustomizeActivity.this.i0.size()) {
                    SkinsCustomizeActivity.this.F0.backgroundIndex = SkinsCustomizeActivity.this.i0.size() - 1;
                }
                ThemeImage themeImage2 = (ThemeImage) SkinsCustomizeActivity.this.i0.get(SkinsCustomizeActivity.this.F0.backgroundIndex);
                if (themeImage2.isDefault) {
                    SkinsCustomizeActivity.this.P.setImageResource(themeImage2.resId);
                }
                SkinsCustomizeActivity.this.e0.r(SkinsCustomizeActivity.this.F0.backgroundIndex);
            } else {
                SkinsCustomizeActivity.this.R2(false);
                SkinsCustomizeActivity.this.P.setImageResource(R.drawable.ic_white);
                SkinsCustomizeActivity.this.Q.setImageResource(SkinsCustomizeActivity.this.a2(true));
            }
            SkinsCustomizeActivity.this.e0.setNewData(SkinsCustomizeActivity.this.i0);
            SkinsCustomizeActivity.this.P.getViewTreeObserver().addOnPreDrawListener(new a());
        }
    }

    public class o implements Observer {

        public class a extends RecyclerView.OnScrollListener {
            public a() {
            }

            @Override
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (i > 0) {
                    SkinsCustomizeActivity.this.b2();
                }
            }
        }

        public o() {
        }

        @Override
        public void onChanged(List list) {
            SkinsCustomizeActivity.this.h0.clear();
            SkinsCustomizeActivity.this.h0.addAll(list);
            if (SkinsCustomizeActivity.this.F0 != null) {
                if (!TextUtils.isEmpty(SkinsCustomizeActivity.this.F0.customThumb)) {
                    ThemeImage themeImage = new ThemeImage();
                    themeImage.imageUri = SkinsCustomizeActivity.this.F0.customThumb;
                    SkinsCustomizeActivity.this.h0.add(1, themeImage);
                }
                SkinsCustomizeActivity.this.d0.r(SkinsCustomizeActivity.this.F0.thumbIndex);
            }
            SkinsCustomizeActivity.this.d0.setNewData(SkinsCustomizeActivity.this.h0);
            if (SkinsCustomizeActivity.this.K0 == null) {
                SkinsCustomizeActivity.this.K0 = new BubbleTextView(SkinsCustomizeActivity.this);
            }
            SkinsCustomizeActivity.this.a0.addOnScrollListener(new a());
            SkinsCustomizeActivity.this.m0.generateDefaultColor();
            SkinsCustomizeActivity.this.m0.generateDefaultFrames();
        }
    }

    public class p implements Observer {
        public p() {
        }

        @Override
        public void onChanged(List list) {
            SkinsCustomizeActivity.this.j0.clear();
            SkinsCustomizeActivity.this.j0.addAll(list);
            int i = 8;
            if (SkinsCustomizeActivity.this.F0 != null) {
                SkinsCustomizeActivity.this.f0.r(SkinsCustomizeActivity.this.F0.customFrameIndex);
                if (TextUtils.isEmpty(SkinsCustomizeActivity.this.F0.customThumb) || SkinsCustomizeActivity.this.F0.thumbIndex != 1) {
                    SkinsCustomizeActivity skinsCustomizeActivity = SkinsCustomizeActivity.this;
                    skinsCustomizeActivity.V1(skinsCustomizeActivity.F0.thumbIndex, true);
                    SkinsCustomizeActivity.this.b0.setVisibility(8);
                } else {
                    SkinsCustomizeActivity.this.N1();
                    SkinsCustomizeActivity.this.b0.setVisibility(0);
                }
            }
            SkinsCustomizeActivity.this.f0.setNewData(SkinsCustomizeActivity.this.j0);
            RecyclerView recyclerView = SkinsCustomizeActivity.this.b0;
            if (SkinsCustomizeActivity.this.F0 != null && !TextUtils.isEmpty(SkinsCustomizeActivity.this.F0.customThumb) && SkinsCustomizeActivity.this.F0.thumbIndex == 1) {
                i = 0;
            }
            recyclerView.setVisibility(i);
        }
    }

    private void a3() {
        boolean z = this.mHaveFilePermission || t08.c(this);
        this.mHaveFilePermission = z;
        View view = this.O;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        View view2 = this.z0;
        if (view2 != null) {
            view2.setVisibility(this.mHaveFilePermission ? 0 : 8);
        }
        View view3 = this.y0;
        if (view3 != null) {
            view3.setVisibility(this.mHaveFilePermission ? 0 : 8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void i2() {
        woc wocVar;
        View viewFindViewById = findViewById(R.id.iv_close);
        this.N = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.iv_confirm);
        this.O = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        this.y0 = findViewById(R.id.preview_container);
        this.z0 = findViewById(R.id.bottom_bar);
        Z1(false);
        this.U = (CustomTabLayout) findViewById(R.id.tab_layout);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_image_chooser_background);
        this.Z = recyclerView;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), this.Z.getPaddingTop(), this.Z.getPaddingRight(), this.mIsGestureNavigationEnabled ? 25 : 0);
        this.a0 = (RecyclerView) findViewById(R.id.rv_image_chooser_thumb);
        this.b0 = (RecyclerView) findViewById(R.id.rv_image_chooser_frame);
        this.V = (LinearLayout) findViewById(R.id.personal_operate_view);
        if (pp3.w && zz0.d()) {
            ImageView imageView = (ImageView) findViewById(R.id.ll_iv_download);
            TextView textView = (TextView) findViewById(R.id.ll_tv_download);
            imageView.setImageResource(R.drawable.icon_cloud_tab);
            textView.setText(R.string.visha_cloud_drive);
        }
        this.X = (FrameLayout) findViewById(R.id.theme_color_operate_view);
        this.W = (LinearLayout) findViewById(R.id.background_operate_view);
        this.P = (ImageView) findViewById(R.id.iv_background);
        this.n0 = (OSSeekbar) findViewById(R.id.seekbar_blur);
        this.o0 = (OSSeekbar) findViewById(R.id.seekbar_opacity);
        this.M0 = (TextView) findViewById(R.id.tv_blur);
        this.N0 = (TextView) findViewById(R.id.tv_opacity);
        this.c0 = (RecyclerView) findViewById(R.id.rv_color_chooser);
        this.Q = (ImageView) findViewById(R.id.iv_skeleton);
        this.Y = (ConstraintLayout) findViewById(R.id.theme_preview_content);
        this.t0 = findViewById(R.id.thumb_preview_content);
        this.p0 = (SeekBar) findViewById(R.id.preview_sb);
        this.R = (ImageView) findViewById(R.id.iv_video);
        this.T = (TextView) findViewById(R.id.tv_video);
        this.G0 = (LinearLayout) findViewById(R.id.anim_views);
        this.u0 = findViewById(R.id.ll_video);
        this.v0 = findViewById(R.id.ll_music);
        this.w0 = findViewById(R.id.ll_download);
        this.x0 = findViewById(R.id.ll_more);
        this.L0 = (RelativeLayout) findViewById(R.id.custom_theme_content);
        this.S = (ImageView) findViewById(R.id.iv_thumb);
        this.l0.clear();
        this.l0.add(this.u0);
        this.l0.add(this.v0);
        this.l0.add(this.w0);
        this.l0.add(this.x0);
        WindowInfoViewModel windowInfoViewModel = this.O0;
        if (windowInfoViewModel == null || (wocVar = (woc) windowInfoViewModel.a.getValue()) == null || wocVar.a == 2) {
            return;
        }
        int iMax = Math.max(wocVar.n, wocVar.o);
        float fD = (com.transsion.utils.a.d(this, 320.0f) * 1.0f) / iMax;
        int i2 = (int) ((this.r0 * fD) + 0.5f);
        Log.d("SkinsCustomizeActivity", "BottomBar miniHeight:" + i2 + ",default:" + com.transsion.utils.a.d(this, 320.0f) + ",mScreenHeight:" + com.transsion.utils.a.l(this) + ",multiple:" + fD + ",max:" + iMax);
        this.z0.setMinimumHeight(i2);
    }

    public static Bitmap q2(Bitmap bitmap, int i2, SkinsCustomizeActivity skinsCustomizeActivity) {
        if (bitmap.isRecycled()) {
            return null;
        }
        return vk1.h(bitmap, 100 - i2);
    }

    public final String A2(SkinsCustomizeActivity skinsCustomizeActivity) {
        Bitmap bitmap = this.E0;
        Resources resources = getResources();
        int i2 = R.dimen.custom_thumb_width;
        return mf0.b(System.currentTimeMillis() + "thumb.jpg", db.b(bitmap, resources.getDimensionPixelOffset(i2), getResources().getDimensionPixelOffset(i2)), this, Bitmap.CompressFormat.PNG);
    }

    public final void B2(ThemeData themeData, String str) {
        themeData.thumbPath = str;
        O2(themeData);
    }

    public final Bitmap C2(String str) {
        int iMin = Math.min(this.q0, ReportParams.MAX_LEAVE_VALID_TIME);
        return tha.k(this, str, iMin, Math.max(1, (this.r0 * iMin) / Math.max(1, this.q0)));
    }

    public Bitmap D2(String str) {
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(com.transsion.playercommon.R.dimen.custom_theme_crop_thumb_width);
        return tha.k(this, str, dimensionPixelOffset, dimensionPixelOffset);
    }

    public final void E2() {
        this.V0.incrementAndGet();
        W1();
        this.B0 = null;
        ImageView imageView = this.P;
        if (imageView != null) {
            X1(imageView);
        }
    }

    public final void F2() {
        Bitmap bitmap = this.B0;
        if (bitmap == null || bitmap.isRecycled() || this.B0 == this.C0) {
            return;
        }
        this.B0 = null;
    }

    public final void G2() {
        StringBuilder sb = new StringBuilder();
        sb.append("releaseThumbRenderState  mPreviewThumbBitmap:");
        sb.append(this.X0 == null);
        sb.append(" mConvertedThumbBitmap:");
        sb.append(this.E0 == null);
        sb.append(" mThumbBitmap:");
        sb.append(this.D0 == null);
        Log.i("SkinsCustomizeActivity", sb.toString());
        Y1();
        this.E0 = null;
        this.D0 = null;
    }

    public final void H2(boolean z) {
        if (!z) {
            this.G0.removeAllViews();
        }
        for (View view : this.l0) {
            view.setVisibility(0);
            view.setAlpha(1.0f);
            ViewGroup viewGroup = (ViewGroup) view;
            ((TextView) viewGroup.getChildAt(1)).setTextColor(getResources().getColor(R.color.unselected_custom_preview_tab_text_color));
            ImageView imageView = (ImageView) viewGroup.getChildAt(0);
            imageView.setColorFilter(getResources().getColor(R.color.unselected_custom_preview_tab_icon_color));
            imageView.setVisibility(0);
            imageView.setAlpha(1.0f);
        }
    }

    public final void I2() {
        int iG;
        Bitmap bitmap = this.C0;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.P.setImageBitmap(this.C0);
            return;
        }
        Bitmap bitmap2 = this.B0;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            O1(this.n0.getProgress());
            return;
        }
        List list = this.i0;
        if (list == null || list.isEmpty() || (iG = this.e0.g()) < 0 || iG >= this.i0.size()) {
            return;
        }
        final ThemeImage themeImage = (ThemeImage) this.i0.get(iG);
        if (themeImage.isDefault) {
            this.P.setImageResource(themeImage.resId);
        } else {
            if (TextUtils.isEmpty(themeImage.imageUri)) {
                return;
            }
            mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.t2(themeImage, (SkinsCustomizeActivity) obj);
                }
            }).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.u2((Bitmap) obj);
                }
            });
        }
    }

    public final void J2() {
        if (!this.R0 || this.t0 == null || this.h0.isEmpty() || this.d0 == null) {
            return;
        }
        this.t0.post(new Runnable() {
            @Override
            public final void run() {
                this.b.v2();
            }
        });
    }

    public final void K2(final ThemeData themeData) {
        ThemeImage themeImage = (ThemeImage) this.i0.get(this.e0.g());
        if (!themeImage.isDefault) {
            mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.w2((SkinsCustomizeActivity) obj);
                }
            }).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.x2(themeData, (String) obj);
                }
            });
        } else {
            themeData.backgroundType = themeImage.thumbType;
            N2(themeData);
        }
    }

    public final void L2() {
        if (this.i0.size() <= 0 || this.h0.size() <= 0) {
            return;
        }
        if (this.F0 == null) {
            this.F0 = new CustomThemeCache();
        }
        this.F0.backgroundIndex = this.e0.g();
        if (!((ThemeImage) this.i0.get(1)).isDefault) {
            this.F0.customBackground = ((ThemeImage) this.i0.get(1)).imageUri;
        }
        this.F0.blur = this.n0.getProgress();
        this.F0.opacity = this.o0.getProgress();
        this.F0.colorIndex = this.g0.g();
        this.F0.thumbIndex = this.d0.g();
        if (!((ThemeImage) this.h0.get(1)).isDefault) {
            this.F0.customThumb = ((ThemeImage) this.h0.get(1)).imageUri;
        }
        this.F0.customFrameIndex = this.f0.g();
    }

    public final void M2() {
        final ThemeData themeData = new ThemeData();
        ThemeImage themeImage = (ThemeImage) this.h0.get(this.d0.g());
        if (themeImage.isDefault) {
            themeData.thumbType = themeImage.thumbType;
            themeData.frameType = -1;
            O2(themeData);
        } else {
            themeData.thumbType = 0;
            mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.z2((SkinsCustomizeActivity) obj);
                }
            }).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.y2(themeData, (String) obj);
                }
            });
        }
        h27.c().e(1160, themeData);
    }

    public final void N1() {
        mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.l2((SkinsCustomizeActivity) obj);
            }
        }).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.m2((Bitmap) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.n2((Throwable) obj);
            }
        });
    }

    public final void N2(ThemeData themeData) {
        themeData.name = TypedValues.Custom.NAME;
        if (w6c.w(this, "theme_preview_key", themeData) && w6c.w(this, "skin_theme", themeData)) {
            ToastUtils.s(R.string.custom_theme_toast);
            d16.j(themeData.thumbType, themeData.backgroundType, themeData.description, this.n0.getProgress(), this.o0.getProgress());
            d16.i(themeData.thumbType, themeData.backgroundType, themeData.description, themeData.blur, themeData.opacity, themeData.frameType);
            removeCurrentThemeCache();
            this.J0.a();
            removeSplashSnapshot();
        }
    }

    public void O1(final int i2) {
        final Bitmap bitmap = this.B0;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        final int iIncrementAndGet = this.V0.incrementAndGet();
        mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.o2(bitmap, i2, (SkinsCustomizeActivity) obj);
            }
        }).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.p2(iIncrementAndGet, (Bitmap) obj);
            }
        });
    }

    public final void O2(ThemeData themeData) {
        themeData.description = ((ThemeColor) this.k0.get(this.g0.g())).colorTheme;
        K2(themeData);
    }

    public void P1(final int i2, final Bitmap bitmap, final int i3) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return SkinsCustomizeActivity.q2(bitmap, i2, (SkinsCustomizeActivity) obj);
            }
        }).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.r2(i3, (Bitmap) obj);
            }
        });
    }

    public final void P2(final ThemeData themeData) {
        mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.A2((SkinsCustomizeActivity) obj);
            }
        }).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.B2(themeData, (String) obj);
            }
        });
    }

    public final void Q1(int i2) {
        this.T.setTextColor(i2);
        this.R.setColorFilter(i2);
        LayerDrawable layerDrawable = (LayerDrawable) this.p0.getProgressDrawable();
        if (layerDrawable != null) {
            layerDrawable.getDrawable(2).setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
        }
        List list = this.h0;
        if (list == null || list.size() <= 0 || ((ThemeImage) this.h0.get(this.d0.g())).thumbType != 1) {
            return;
        }
        this.p0.getThumb().setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
    }

    public final void Q2() {
        CustomThemeCache customThemeCache = new CustomThemeCache();
        customThemeCache.backgroundIndex = this.e0.g();
        if (!((ThemeImage) this.i0.get(1)).isDefault) {
            customThemeCache.customBackground = ((ThemeImage) this.i0.get(1)).imageUri;
        }
        customThemeCache.blur = this.n0.getProgress();
        customThemeCache.opacity = this.o0.getProgress();
        customThemeCache.colorIndex = this.g0.g();
        customThemeCache.thumbIndex = this.d0.g();
        if (!((ThemeImage) this.h0.get(1)).isDefault) {
            customThemeCache.customThumb = ((ThemeImage) this.h0.get(1)).imageUri;
        }
        customThemeCache.customFrameIndex = this.f0.g();
        w6c.w(this, CustomThemeViewModel.THEME_CACHE_KEY, customThemeCache);
    }

    public final void R1(boolean z) {
        if (this.k0.size() <= 0 || this.i0.size() <= 0) {
            return;
        }
        m7a.a(getResources().getColor(((ThemeColor) this.k0.get(this.g0.g())).colorRes, getTheme()), this, this.Q, a2(((ThemeImage) this.i0.get(this.e0.g())).thumbType == 1), z);
        this.S.setVisibility(z ? 0 : 8);
        if (z) {
            S1();
        }
    }

    public void R2(boolean z) {
        this.M0.setVisibility(z ? 0 : 8);
        this.N0.setVisibility(z ? 0 : 8);
        this.o0.setVisibility(z ? 0 : 8);
        this.n0.setVisibility(z ? 0 : 8);
        T1();
    }

    public final void S1() {
        ImageView imageView;
        float f2;
        if (this.S == null || (imageView = this.P) == null) {
            return;
        }
        int width = imageView.getWidth();
        int height = this.P.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        boolean z = b39.a(this) == BaseConstant.SCREEN_TYPE.FOLD;
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.S.getLayoutParams();
        if (z) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = width / 4;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = (height * 180) / 2400;
        } else if (k2()) {
            float f3 = width;
            float f4 = height;
            float f5 = 0.0f;
            if (f3 / f4 > 1.6f) {
                float f6 = 1.6f * f4;
                f2 = 0.0f;
                f5 = (f3 - f6) * 0.5f;
                f3 = f6;
            } else {
                float f7 = f3 / 1.6f;
                f2 = (f4 - f7) * 0.5f;
                f4 = f7;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = Math.round(f5 + ((51.0f * f3) / 1056.0f));
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = Math.round(f2 + ((122.0f * f4) / 660.0f));
            ((ViewGroup.MarginLayoutParams) layoutParams).width = Math.round((f3 * 20.0f) / 1056.0f);
            ((ViewGroup.MarginLayoutParams) layoutParams).height = Math.round((f4 * 17.0f) / 660.0f);
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = com.transsion.utils.a.d(this, 20.0f);
            ((ViewGroup.MarginLayoutParams) layoutParams).height = com.transsion.utils.a.d(this, 20.0f);
        }
        this.S.setLayoutParams(layoutParams);
    }

    public final void S2(Bitmap bitmap) {
        AnimatorSet animatorSet = this.H0;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ValueAnimator valueAnimator = this.I0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.G0.setVisibility(0);
        H2(false);
        this.H0 = new AnimatorSet();
        bc.f(this.G0, this.H0, bitmap, this.u0, this, b39.a(this) == BaseConstant.SCREEN_TYPE.FOLD, getResources().getColor(((ThemeColor) this.k0.get(this.g0.g())).colorRes));
        bc.i(this.I0, this.p0);
    }

    public void T1() {
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.n0.setSecondTrackColor(typedValue.data);
        this.n0.setThumbOutColor(typedValue.data);
        OSSeekbar oSSeekbar = this.n0;
        Resources resources = getResources();
        int i2 = com.transsion.magicvideo.R.color.selection_seekbar_thumb_center_color;
        oSSeekbar.setThumbInsideColor(resources.getColor(i2, getTheme()));
        this.o0.setSecondTrackColor(typedValue.data);
        this.o0.setThumbOutColor(typedValue.data);
        this.o0.setThumbInsideColor(getResources().getColor(i2, getTheme()));
    }

    public final void T2(List list) {
        AnimatorSet animatorSet = this.H0;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ValueAnimator valueAnimator = this.I0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.G0.setVisibility(0);
        H2(false);
        this.H0 = new AnimatorSet();
        boolean z = b39.a(this) == BaseConstant.SCREEN_TYPE.FOLD;
        if (this.k0.size() > 0) {
            bc.c(this.G0, this.H0, list, this, this.l0, z, getResources().getColor(((ThemeColor) this.k0.get(this.g0.g())).colorRes, getTheme()), WebIndicator.MAX_DECELERATE_SPEED_DURATION, 200);
        }
        bc.i(this.I0, this.p0);
        if (z) {
            return;
        }
        this.H0.addListener(new f());
    }

    public final void U1(int i2) {
        V1(i2, false);
    }

    public final void U2(int i2) {
        this.V.setVisibility(i2 == 0 ? 0 : 8);
        this.X.setVisibility(i2 == 1 ? 0 : 8);
        this.W.setVisibility(i2 == 2 ? 0 : 8);
        this.Y.setVisibility(i2 != 0 ? 0 : 8);
        this.t0.setVisibility(i2 == 0 ? 0 : 8);
        if (i2 != 0) {
            b2();
        } else if (this.R0) {
            J2();
        }
        if (i2 == 0) {
            E2();
        } else if (i2 != 1) {
            I2();
        } else {
            F2();
            I2();
        }
    }

    public final void V1(int i2, boolean z) {
        ThemeImage themeImage = (ThemeImage) this.h0.get(i2);
        this.R.setVisibility(0);
        this.T.setVisibility(0);
        if (themeImage.thumbType != 1) {
            Y1();
            this.p0.setThumb(vha.k(this, themeImage.thumbType));
            List listP = vha.p(themeImage.thumbType);
            T2(listP);
            R1(true);
            if (listP != null) {
                this.S.setImageResource(((Integer) listP.get(0)).intValue());
            }
        } else if (!z) {
            AnimatorSet animatorSet = this.H0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ValueAnimator valueAnimator = this.I0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            Y1();
            this.p0.setThumb(getDrawable(R.drawable.thumb_custom));
            this.G0.setVisibility(8);
            H2(false);
            Q1(getResources().getColor(((ThemeColor) this.k0.get(this.g0.g())).colorRes, getTheme()));
            R1(false);
        }
        W2();
    }

    public final boolean V2() {
        if (this.U0.getAndSet(true)) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.W0 > 200) {
            this.W0 = jCurrentTimeMillis;
            return true;
        }
        W2();
        return false;
    }

    public final void W1() {
        this.C0 = null;
    }

    public final void W2() {
        this.U0.set(false);
    }

    public final void X1(ImageView imageView) {
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
    }

    public final void X2(Bitmap bitmap) {
        this.B0 = bitmap;
    }

    public final void Y1() {
        this.X0 = null;
    }

    public final void Y2(Bitmap bitmap) {
        this.C0 = bitmap;
    }

    public final void Z1(boolean z) {
        this.O.setEnabled(z);
    }

    public final void Z2(Bitmap bitmap) {
        this.E0 = bitmap;
    }

    public final int a2(boolean z) {
        boolean z2 = b39.a(this) == BaseConstant.SCREEN_TYPE.FOLD;
        boolean z3 = b39.a(this) == BaseConstant.SCREEN_TYPE.TABLE;
        Log.d("SkinsCustomizeActivity", "isFold:" + z2 + ",isTablet:" + z3 + ",mIsTabletDevice:" + this.R0);
        if (z2) {
            return z ? R.drawable.ic_skeleton_day_custom_new : R.drawable.ic_skeleton_custom_new;
        }
        if (z3 && this.R0) {
            return z ? R.drawable.ic_skeleton_day_tablet : R.drawable.ic_skeleton_tablet;
        }
        return z ? R.drawable.ic_skeleton_day_flat : R.drawable.ic_skeleton_flat;
    }

    public final void b2() {
        BubbleTextView bubbleTextView = this.K0;
        if (bubbleTextView != null) {
            bubbleTextView.setVisibility(8);
        }
        w6c.r(this, "custom_bubble_2", false);
    }

    public final void b3(Bitmap bitmap) {
        this.D0 = bitmap;
    }

    public final void c2() {
        if (this.z0 != null) {
            if (com.transsion.utils.a.z(getResources().getConfiguration())) {
                this.z0.setMinimumHeight(0);
                this.z0.setPadding(0, 0, 0, com.transsion.utils.a.d(this, 20.0f));
            } else {
                this.z0.setMinimumHeight(com.transsion.utils.a.d(this, 320.0f));
                this.z0.setPadding(0, 0, 0, 0);
            }
        }
    }

    public void d2() {
        CustomThemeCache customThemeCache = (CustomThemeCache) w6c.f(this, CustomThemeViewModel.THEME_CACHE_KEY);
        this.F0 = customThemeCache;
        if (customThemeCache != null) {
            this.n0.setProgress(customThemeCache.blur);
            this.o0.setProgress(this.F0.opacity);
        }
    }

    public void e2() {
        this.Z.setLayoutManager(new LinearLayoutManager(this, 0, false));
        ImageChooserAdapter imageChooserAdapter = new ImageChooserAdapter();
        this.e0 = imageChooserAdapter;
        this.Z.setAdapter(imageChooserAdapter);
        this.e0.setOnItemClickListener(new b());
        this.a0.setLayoutManager(new LinearLayoutManager(this, 0, false));
        this.d0 = new ImageChooserAdapter();
        RecyclerView recyclerView = this.a0;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), this.a0.getPaddingTop(), this.a0.getPaddingRight(), this.mIsGestureNavigationEnabled ? 25 : 0);
        this.a0.setAdapter(this.d0);
        this.d0.setOnItemClickListener(new c());
        this.b0.setLayoutManager(new LinearLayoutManager(this, 0, false));
        ThumbFrameAdapter thumbFrameAdapter = new ThumbFrameAdapter();
        this.f0 = thumbFrameAdapter;
        this.b0.setAdapter(thumbFrameAdapter);
        RecyclerView recyclerView2 = this.b0;
        recyclerView2.setPadding(recyclerView2.getPaddingLeft(), this.b0.getPaddingTop(), this.b0.getPaddingRight(), this.mIsGestureNavigationEnabled ? 25 : 0);
        this.f0.setOnItemClickListener(new d());
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this, 8);
        GridSpaceThemeColorItemDecoration gridSpaceThemeColorItemDecoration = new GridSpaceThemeColorItemDecoration(8, getResources().getDimensionPixelOffset(R.dimen.skin_color_item_padding), getResources().getDimensionPixelOffset(R.dimen.skin_color_item_padding_top));
        this.c0.setLayoutManager(gridLayoutManager);
        this.c0.addItemDecoration(gridSpaceThemeColorItemDecoration);
        ColorChooserAdapter colorChooserAdapter = new ColorChooserAdapter();
        this.g0 = colorChooserAdapter;
        this.c0.setAdapter(colorChooserAdapter);
        RecyclerView recyclerView3 = this.c0;
        recyclerView3.setPadding(recyclerView3.getPaddingLeft(), this.c0.getPaddingTop(), this.c0.getPaddingRight(), this.mIsGestureNavigationEnabled ? 25 : 0);
        this.g0.setOnItemClickListener(new e());
    }

    public void f2() {
        T1();
        this.n0.setOnProgressChangedListener(new k());
        this.o0.setOnProgressChangedListener(new l());
        this.p0.setOnTouchListener(new m());
    }

    public final void fitSystemStatusBar() {
        Window window = getWindow();
        try {
            window.setBackgroundDrawableResource(R.color.black);
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(1792);
            window.setNavigationBarContrastEnforced(false);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            getWindow().clearFlags(C.BUFFER_FLAG_FIRST_SAMPLE);
            getWindow().setNavigationBarColor(getResources().getColor(R.color.transparent));
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8209));
            WindowCompat.getInsetsController(window, decorView).setAppearanceLightStatusBars(false);
            WindowCompat.getInsetsController(window, decorView).setAppearanceLightNavigationBars(false);
            int iN = com.transsion.utils.a.n(this);
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.custom_theme_content);
            if (relativeLayout != null) {
                relativeLayout.setPadding(0, iN, 0, 0);
            }
        } catch (Exception e2) {
            Log.e("SkinsCustomizeActivity", "fitSystemStatusBar " + e2);
        }
    }

    public final void g2() {
        this.U.isFirstLevelTab(true);
        this.U.setTabTextSize(getResources().getDimensionPixelOffset(R.dimen.custom_theme_tab_text_size_selected));
        this.U.setUnselectedTabTextSize(getResources().getDimensionPixelOffset(R.dimen.custom_theme_tab_text_size_unselected));
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.audio.R.attr.os_platform_basic_color, typedValue, true);
        this.U.setTabTextColors(getResources().getColor(R.color.unselected_tab_text_color), typedValue.data);
        if (this.U.getTabCount() < 3) {
            CustomTabLayout customTabLayout = this.U;
            CustomTabLayout.Tab tabNewTab = customTabLayout.newTab();
            int[] iArr = c1;
            customTabLayout.addTab(tabNewTab.setText(iArr[0]));
            CustomTabLayout customTabLayout2 = this.U;
            customTabLayout2.addTab(customTabLayout2.newTab().setText(iArr[1]));
            CustomTabLayout customTabLayout3 = this.U;
            customTabLayout3.addTab(customTabLayout3.newTab().setText(iArr[2]));
        }
        this.U.addOnTabSelectedListener((CustomTabLayout.OnTabSelectedListener) new g());
        CustomTabLayout customTabLayout4 = this.U;
        customTabLayout4.selectTab(customTabLayout4.getTabAt(this.P0));
    }

    public void h2() {
        CustomThemeViewModel customThemeViewModel = (CustomThemeViewModel) getViewModel(CustomThemeViewModel.class);
        this.m0 = customThemeViewModel;
        customThemeViewModel.getBackgroundList().observe(this, new n());
        this.m0.getThumbList().observe(this, new o());
        this.m0.getFrameList().observe(this, new p());
        this.m0.getColorList().observe(this, new a());
        this.m0.generateDefaultBackground();
        this.m0.generateDefaultThumbs();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean j2() {
        WindowInfoViewModel windowInfoViewModel = this.O0;
        if (windowInfoViewModel == null || windowInfoViewModel.a.getValue() == 0) {
            return false;
        }
        int i2 = ((woc) this.O0.a.getValue()).a;
        return (i2 == 0 || i2 == 1) && ((woc) this.O0.a.getValue()).c;
    }

    public final boolean k2() {
        return this.R0 && b39.a(this) == BaseConstant.SCREEN_TYPE.TABLE;
    }

    public final Bitmap l2(SkinsCustomizeActivity skinsCustomizeActivity) {
        Bitmap bitmapD2 = D2(((ThemeImage) this.h0.get(1)).imageUri);
        ThemeImage themeImage = (ThemeImage) this.j0.get(this.f0.g());
        Bitmap bitmapA = mf0.a(themeImage.resId);
        Bitmap bitmapA2 = mf0.a(themeImage.mergeResId);
        Resources resources = getResources();
        int i2 = R.dimen.custom_thumb_default_tab_height;
        return db.a(bitmapD2, bitmapA, bitmapA2, resources.getDimensionPixelOffset(i2), getResources().getDimensionPixelOffset(i2));
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    public final void m2(Bitmap bitmap) {
        Z2(bitmap);
        Resources resources = getResources();
        int i2 = R.dimen.custom_thumb_preview_width;
        Bitmap bitmapB = db.b(bitmap, resources.getDimensionPixelOffset(i2), getResources().getDimensionPixelOffset(i2));
        Y1();
        this.X0 = bitmapB;
        this.p0.setThumb(new BitmapDrawable(getResources(), bitmapB));
        S2(bitmap);
        R1(true);
        this.S.setImageBitmap(bitmap);
        W2();
    }

    public final void n2(Throwable th) {
        W2();
    }

    @Override
    public boolean needApplyBackground() {
        return false;
    }

    public final Bitmap o2(Bitmap bitmap, int i2, SkinsCustomizeActivity skinsCustomizeActivity) {
        if (bitmap.isRecycled()) {
            return null;
        }
        return i2 != 0 ? vk1.c(this, bitmap, this.q0, this.r0, 0, i2) : bitmap;
    }

    @Override
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        mfb mfbVar = this.A0;
        if (mfbVar != null) {
            mfbVar.k(i2, i3, intent);
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_close) {
            b2();
            hb0.markDirect("skin_diy_edit_close");
            finish();
        } else if (id == R.id.iv_confirm) {
            b2();
            Q2();
            M2();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.S0 = j2();
        this.T0 = true;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_skin_customize);
        this.mIsGestureNavigationEnabled = !pp3.H && com.transsion.utils.a.t(this);
        this.q0 = com.transsion.utils.a.m(this);
        this.r0 = com.transsion.utils.a.l(this);
        hb0.markDirect("skin_diy_edit_show");
        i2();
        g2();
        e2();
        f2();
        d2();
        h2();
        boolean zA = com.transsion.utils.a.A();
        this.R0 = zA;
        if (zA) {
            setRequestedOrientation(10);
        }
        xn9 xn9VarC = xn9.c();
        this.J0 = xn9VarC;
        xn9VarC.f(this.Z0);
        WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) getViewModel(WindowInfoViewModel.class);
        this.O0 = windowInfoViewModel;
        windowInfoViewModel.a.observeForever(this.Y0);
        fitSystemStatusBar();
        c2();
    }

    @Override
    public void onDestroy() {
        os0 os0Var;
        super.onDestroy();
        xn9 xn9Var = this.J0;
        if (xn9Var != null && (os0Var = this.Z0) != null) {
            xn9Var.e(os0Var);
        }
        AnimatorSet animatorSet = this.H0;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ValueAnimator valueAnimator = this.I0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        WindowInfoViewModel windowInfoViewModel = this.O0;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.Y0);
        }
        E2();
        G2();
    }

    @Override
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        mfb mfbVar = this.A0;
        if (mfbVar != null) {
            mfbVar.j(i2, iArr);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        fitSystemStatusBar();
        a3();
        int selectedTabPosition = this.U.getSelectedTabPosition();
        if (selectedTabPosition == 0) {
            hb0.markDirect("skin_diy_edit_ps_show");
        } else if (selectedTabPosition == 1) {
            hb0.markDirect("skin_diy_edit_color_show");
        } else {
            if (selectedTabPosition != 2) {
                return;
            }
            hb0.markDirect("skin_diy_edit_bg_show");
        }
    }

    public final void p2(int i2, Bitmap bitmap) {
        if (bitmap == null || i2 != this.V0.get()) {
            return;
        }
        P1(this.o0.getProgress(), bitmap, i2);
    }

    public final void r2(int i2, Bitmap bitmap) {
        if (bitmap == null || i2 != this.V0.get()) {
            return;
        }
        if (this.e0.g() == 1) {
            this.P.setImageBitmap(bitmap);
        }
        Y2(bitmap);
    }

    public final void s2(woc wocVar) {
        Scene sceneForLayout;
        Log.i("SkinsCustomizeActivity", "windowOptions  " + wocVar.toString());
        int i2 = wocVar.a;
        boolean z = wocVar.g;
        boolean z2 = wocVar.c;
        ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content);
        int i3 = R.layout.activity_skin_customize;
        Scene sceneForLayout2 = Scene.getSceneForLayout(viewGroup, i3, this);
        if (i2 == 0) {
            sceneForLayout2 = Scene.getSceneForLayout((ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content), i3, this);
            this.q0 = com.transsion.utils.a.m(this);
            this.r0 = com.transsion.utils.a.l(this);
            c2();
        } else if (i2 == 2 && !z2) {
            if (z) {
                sceneForLayout = com.transsion.utils.a.A() ? Scene.getSceneForLayout((ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content), R.layout.activity_skin_customize_tablet_land, this) : Scene.getSceneForLayout((ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content), R.layout.activity_skin_customize_flat_land, this);
            } else {
                sceneForLayout = com.transsion.utils.a.A() ? Scene.getSceneForLayout((ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content), R.layout.activity_skin_customize_tablet, this) : Scene.getSceneForLayout((ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content), R.layout.activity_skin_customize_flat, this);
            }
            sceneForLayout2 = sceneForLayout;
            if (com.transsion.utils.a.A()) {
                this.q0 = 856;
                this.r0 = 535;
            } else {
                this.q0 = 1303;
                this.r0 = 1131;
            }
        }
        L2();
        this.Q0 = this.O.isEnabled();
        TransitionManager.go(sceneForLayout2, new ChangeBounds().setDuration(0L));
        i2();
        g2();
        e2();
        f2();
        Z1(this.Q0);
        CustomThemeCache customThemeCache = this.F0;
        if (customThemeCache != null) {
            this.n0.setProgress(customThemeCache.blur);
            this.o0.setProgress(this.F0.opacity);
        }
        this.m0.generateDefaultBackground();
        this.m0.generateDefaultThumbs();
        int iN = com.transsion.utils.a.n(this);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.custom_theme_content);
        if (relativeLayout != null) {
            relativeLayout.setPadding(0, iN, 0, 0);
        }
    }

    @Override
    public boolean shouldApplyLegacySystemBarPadding() {
        return false;
    }

    public final Bitmap t2(ThemeImage themeImage, SkinsCustomizeActivity skinsCustomizeActivity) {
        return C2(themeImage.imageUri);
    }

    public final void u2(Bitmap bitmap) {
        X2(bitmap);
        O1(this.n0.getProgress());
    }

    public final void v2() {
        if (this.P0 != 0 || this.d0.g() >= this.h0.size()) {
            return;
        }
        ThemeImage themeImage = (ThemeImage) this.h0.get(this.d0.g());
        if (themeImage.isDefault || TextUtils.isEmpty(themeImage.imageUri)) {
            return;
        }
        N1();
    }

    public final String w2(SkinsCustomizeActivity skinsCustomizeActivity) {
        return mf0.b(System.currentTimeMillis() + "background.jpg", this.C0, this, Bitmap.CompressFormat.JPEG);
    }

    public final void x2(ThemeData themeData, String str) {
        themeData.path = str;
        themeData.backgroundType = 0;
        themeData.blur = this.n0.getProgress();
        themeData.opacity = this.o0.getProgress();
        N2(themeData);
    }

    public final void y2(ThemeData themeData, String str) {
        themeData.tabPath = str;
        themeData.frameType = this.f0.g();
        P2(themeData);
    }

    public final String z2(SkinsCustomizeActivity skinsCustomizeActivity) {
        Bitmap bitmap = this.E0;
        Resources resources = getResources();
        int i2 = R.dimen.custom_tab_width;
        return mf0.b(System.currentTimeMillis() + "tab.jpg", db.b(bitmap, resources.getDimensionPixelOffset(i2), getResources().getDimensionPixelOffset(i2)), this, Bitmap.CompressFormat.PNG);
    }
}
