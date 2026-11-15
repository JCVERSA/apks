package com.transsion.tools.fragments;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.widgets.AppWidgetMusicDialog;
import com.transsion.cloud.updownload.fragment.TransferManagerFragment;
import com.transsion.dbdata.markpoint.MarkFileTransferInfo;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.CloudVersionControl;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.gprating.GPRatingDialog;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import com.transsion.tools.R;
import com.transsion.tools.activities.SkinsActivity;
import com.transsion.tools.activities.UpdateActivity;
import com.transsion.tools.covert.fragments.ConverterMainFragment;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BadgeView;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import defpackage.a64;
import defpackage.av3;
import defpackage.b39;
import defpackage.bs8;
import defpackage.d22;
import defpackage.ehb;
import defpackage.ez5;
import defpackage.f5;
import defpackage.ge;
import defpackage.gf7;
import defpackage.ghb;
import defpackage.hb0;
import defpackage.hhb;
import defpackage.jf;
import defpackage.kdc;
import defpackage.ns3;
import defpackage.p06;
import defpackage.pb7;
import defpackage.pp3;
import defpackage.r06;
import defpackage.rv4;
import defpackage.s16;
import defpackage.s87;
import defpackage.t08;
import defpackage.td8;
import defpackage.w6c;
import defpackage.ydc;
import defpackage.zdc;
import defpackage.zz0;

public class ToolsFragment extends PlayBaseFragment {
    public static final int[] r0 = {R.id.iv_arrow_setting, R.id.iv_arrow_file_trans, R.id.iv_arrow_widget, R.id.iv_arrow_go_rating, R.id.iv_arrow_hide, R.id.iv_arrow_feedback, R.id.iv_arrow_update, R.id.iv_arrow_about_us};
    public BadgeView A;
    public BadgeView B;
    public FrameLayout C;
    public FrameLayout D;
    public FrameLayout E;
    public FrameLayout F;
    public FrameLayout G;
    public OverBoundNestedScrollView H;
    public ImageView I;
    public ImageView J;
    public ImageView K;
    public ImageView L;
    public boolean M;
    public s87 N;
    public LinearLayout O;
    public LinearLayout P;
    public LinearLayout Q;
    public long R;
    public float a0;
    public float b0;
    public int c0;
    public int d0;
    public int e0;
    public int f0;
    public int g0;
    public int h0;
    public int i0;
    public int j0;
    public int k0;
    public View l;
    public boolean l0;
    public Handler m;
    public boolean m0;
    public ImageView n;
    public TextView o;
    public LinearLayout p;
    public LinearLayout q;
    public LinearLayout r;
    public LinearLayout s;
    public LinearLayout t;
    public LinearLayout u;
    public LinearLayout v;
    public TextView w;
    public TextView x;
    public TextView y;
    public BadgeView z;
    public boolean S = true;
    public volatile boolean T = false;
    public boolean U = false;
    public boolean V = false;
    public boolean W = false;
    public boolean X = false;
    public boolean Y = false;
    public boolean Z = false;
    public final SparseArray n0 = new SparseArray();
    public final rv4 o0 = new a();
    public final rv4 p0 = new c();
    public final View.OnClickListener q0 = new e();

    public class a implements rv4 {
        public a() {
        }

        @Override
        public void a(int i, String str) {
            Log.i("ToolsFragment", "onFailure: code = $code, message = $message");
            if (ToolsFragment.this.getActivity() != null) {
                ToolsFragment.this.getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.e();
                    }
                });
            }
        }

        @Override
        public void b(final boolean z, boolean z2, String str) {
            Log.i("ToolsFragment", "onSuccess: isUpdate =" + z + " isForce = " + z2 + " s = " + str);
            if (ToolsFragment.this.getActivity() != null) {
                ToolsFragment.this.getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.f(z);
                    }
                });
            }
        }

        public final void e() {
            ToolsFragment.this.x.setCompoundDrawables(null, null, null, null);
        }

        public final void f(boolean z) {
            if (!z || ydc.e()) {
                ToolsFragment.this.x.setCompoundDrawables(null, null, null, null);
                return;
            }
            Drawable drawable = ((BaseFragment) ToolsFragment.this).mContext.getDrawable(R.drawable.update_point);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumWidth());
            ToolsFragment.this.x.setCompoundDrawablePadding(24);
            ToolsFragment.this.x.setCompoundDrawables(null, null, drawable, null);
        }
    }

    public class b implements hhb {
        public b() {
        }

        public void d() {
            ToolsFragment.this.K1();
        }

        @Override
        public void a(ehb ehbVar) {
            Log.i("ToolsFragment", "checkUpgradeTask onRequestSuccess: " + ehbVar);
            if (ehbVar.a) {
                ToolsFragment.this.V = true;
                ThreadUtils.s(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.d();
                    }
                });
            } else {
                ToolsFragment.this.V = false;
            }
            ToolsFragment.this.X = true;
            ToolsFragment.this.x1();
        }

        @Override
        public void b(String str) {
            Log.i("ToolsFragment", "checkUpgradeTask onRequestFail: " + str);
            ToolsFragment.this.V = false;
            ToolsFragment.this.X = true;
            ToolsFragment.this.x1();
        }
    }

    public class c implements rv4 {
        public c() {
        }

        @Override
        public void a(int i, String str) {
            Log.i("ToolsFragment", "onFailure: code = " + i + "message = " + str);
            ToolsFragment.this.Z0();
            ToastUtils.w(ToolsFragment.this.getString(R.string.update_is_newest));
        }

        @Override
        public void b(boolean z, boolean z2, String str) {
            ToolsFragment.this.Z0();
            if (ToolsFragment.this.Y) {
                ToolsFragment.this.Y = false;
                if (!z && ((BaseFragment) ToolsFragment.this).mContext != null) {
                    ToastUtils.w(((BaseFragment) ToolsFragment.this).mContext.getResources().getString(R.string.update_is_newest));
                    return;
                }
                if (z2) {
                    Log.i("ToolsFragment", "此次更新为强制升级");
                }
                Log.i("ToolsFragment", "此次更新version = " + str);
            }
        }
    }

    public class d implements DialogInterface.OnDismissListener {
        public d() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            UpdateUtils.x(false);
        }
    }

    public class e extends gf7 {
        public e() {
        }

        @Override
        public void a(View view) {
            int id = view.getId();
            if (R.id.ll_setting == id) {
                ToolsFragment.this.i1();
                return;
            }
            if (R.id.ll_file_trans == id) {
                ToolsFragment.this.e1();
                return;
            }
            if (R.id.fl_theme == id) {
                ToolsFragment.this.j1();
                return;
            }
            if (R.id.fl_private == id) {
                ToolsFragment.this.h1();
                return;
            }
            if (R.id.ll_hide == id) {
                ToolsFragment.this.g1();
                return;
            }
            if (R.id.ll_feedback == id) {
                ToolsFragment.this.y1();
                return;
            }
            if (R.id.ll_update == id) {
                ToolsFragment.this.X0();
                return;
            }
            if (R.id.fl_download_manage == id) {
                ToolsFragment.this.d1();
                return;
            }
            if (R.id.fl_video_to_mp3 == id) {
                ToolsFragment.this.k1();
                return;
            }
            if (R.id.ll_about_us == id) {
                ToolsFragment.this.c1();
            } else if (R.id.ll_go_rating == id) {
                ToolsFragment.this.f1();
            } else if (R.id.ll_widget == id) {
                ToolsFragment.this.l1();
            }
        }
    }

    private void P1() {
        ImageView imageView;
        TextView textView = this.o;
        if (textView == null || (imageView = this.n) == null) {
            return;
        }
        if (pp3.c) {
            imageView.setVisibility(8);
            this.o.setVisibility(0);
        } else {
            BaseConstant.SCREEN_TYPE screen_type = this.mScreenType;
            BaseConstant.SCREEN_TYPE screen_type2 = BaseConstant.SCREEN_TYPE.FOLD;
            textView.setVisibility(screen_type == screen_type2 ? 8 : 0);
            this.n.setVisibility(this.mScreenType == screen_type2 ? 0 : 8);
        }
        if (pp3.p) {
            this.n.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public final boolean onLongClick(View view) {
                    return this.b.u1(view);
                }
            });
            if (pp3.p) {
                this.n.setOnLongClickListener(new View.OnLongClickListener() {
                    @Override
                    public final boolean onLongClick(View view) {
                        return this.b.v1(view);
                    }
                });
                this.o.setOnLongClickListener(new View.OnLongClickListener() {
                    @Override
                    public final boolean onLongClick(View view) {
                        return this.b.w1(view);
                    }
                });
            }
        }
    }

    public final void A1() {
        if (pp3.p) {
            if (this.F == null && this.E == null) {
                return;
            }
            if (zdc.l) {
                this.F.setVisibility(0);
                this.E.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.mContext, 90.0f)));
                ImageView imageView = this.I;
                if (imageView != null) {
                    E1(imageView, R.drawable.ic_icon_default_theme_small1);
                }
            } else {
                this.F.setVisibility(8);
                this.E.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.mContext, 190.0f)));
                E1(this.I, R.drawable.ic_icon_default_theme1);
            }
            if (this.m0) {
                Q1();
                O1();
            }
        }
    }

    public final void B1() {
        LinearLayout linearLayout;
        if (!this.l0 || (linearLayout = this.P) == null || this.O == null || this.C == null || this.D == null) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.O.getLayoutParams();
        layoutParams.weight = this.a0;
        layoutParams2.weight = this.b0;
        this.P.setLayoutParams(layoutParams);
        this.O.setLayoutParams(layoutParams2);
        LinearLayout linearLayout2 = this.P;
        linearLayout2.setPaddingRelative(this.h0, linearLayout2.getPaddingTop(), this.i0, this.P.getPaddingBottom());
        LinearLayout linearLayout3 = this.O;
        linearLayout3.setPaddingRelative(this.j0, linearLayout3.getPaddingTop(), this.k0, this.O.getPaddingBottom());
        this.O.setOrientation(this.c0);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.C.getLayoutParams();
        marginLayoutParams.topMargin = this.d0;
        marginLayoutParams.bottomMargin = this.e0;
        this.C.setLayoutParams(marginLayoutParams);
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.D.getLayoutParams();
        marginLayoutParams2.topMargin = this.f0;
        marginLayoutParams2.bottomMargin = this.g0;
        this.D.setLayoutParams(marginLayoutParams2);
        this.C.setPaddingRelative(0, 0, 0, 0);
        this.D.setPaddingRelative(0, 0, 0, 0);
    }

    public final void C1() {
        LinearLayout linearLayout;
        if (this.l0 || (linearLayout = this.P) == null || this.O == null || this.C == null || this.D == null) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.O.getLayoutParams();
        this.a0 = layoutParams.weight;
        this.b0 = layoutParams2.weight;
        this.c0 = this.O.getOrientation();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.C.getLayoutParams();
        this.d0 = marginLayoutParams.topMargin;
        this.e0 = marginLayoutParams.bottomMargin;
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.D.getLayoutParams();
        this.f0 = marginLayoutParams2.topMargin;
        this.g0 = marginLayoutParams2.bottomMargin;
        this.h0 = this.P.getPaddingStart();
        this.i0 = this.P.getPaddingEnd();
        this.j0 = this.O.getPaddingStart();
        this.k0 = this.O.getPaddingEnd();
        this.l0 = true;
    }

    @Override
    public ToolsFragment setBaseActivity(BaseActivity baseActivity) {
        return (ToolsFragment) super.setBaseActivity(baseActivity);
    }

    public final void E1(ImageView imageView, int i) {
        if (imageView == null || getContext() == null) {
            return;
        }
        Drawable drawable = (Drawable) this.n0.get(i);
        if (drawable == null && (drawable = ContextCompat.getDrawable(getContext(), i)) != null) {
            this.n0.put(i, drawable);
        }
        if (drawable == null) {
            imageView.setImageResource(i);
            return;
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            imageView.setImageDrawable(constantState.newDrawable(getResources()).mutate());
        } else {
            imageView.setImageDrawable(drawable);
        }
    }

    public final void p1(CloudVersionControl cloudVersionControl) {
        if (this.x == null || ydc.e()) {
            return;
        }
        if (cloudVersionControl == null) {
            this.x.setCompoundDrawables(null, null, null, null);
            return;
        }
        Drawable drawable = this.mContext.getDrawable(R.drawable.update_point);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumWidth());
        this.x.setCompoundDrawablePadding(24);
        this.x.setCompoundDrawables(null, null, drawable, null);
    }

    public final void G1() {
        if (ydc.e()) {
            pb7.h().e(this.p0);
            pb7.h().f(this.o0);
            pb7.h().g();
        }
    }

    public final void H1(float f, float f2) {
        LinearLayout linearLayout = this.P;
        if (linearLayout != null) {
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, f));
        }
        LinearLayout linearLayout2 = this.O;
        if (linearLayout2 != null) {
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, f2));
        }
    }

    public final void I1(boolean z) {
        Log.e("ToolsFragment", "showFeedBackTip " + z);
        if (this.y != null) {
            if (!z || ydc.e()) {
                this.y.setCompoundDrawables(null, null, null, null);
                return;
            }
            Drawable drawable = this.mContext.getDrawable(R.drawable.update_point);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumWidth());
            this.y.setCompoundDrawablePadding(24);
            this.y.setCompoundDrawables(null, null, drawable, null);
        }
    }

    public final void J1() {
        UpdateUtils.x(true);
        s87 s87VarC = new s87.a(getContext()).a(R.string.update_checking, true).c();
        this.N = s87VarC;
        s87VarC.setCancelable(true);
        this.N.setOnDismissListener(new d());
    }

    public final void K1() {
        Log.i("ToolsFragment", "showUpgradeSdkDefaultDialog: ");
        ghb.a().c(getActivity(), true);
        Log.i("ToolsFragment", "showUpgradeDialog: ");
    }

    public final void L1() {
        if (ge.d()) {
            Log.i("ToolsFragment", "triggerUpgradeSdkCheck: ");
            ghb.a().b(getActivity(), true, new b());
        } else {
            this.X = true;
            x1();
        }
    }

    public final void M1() {
        if (this.p == null) {
            return;
        }
        if (SettingFragment.showNewAudioSetting(this.mContext)) {
            this.A = (BadgeView) this.p.findViewById(R.id.bv_settings_count);
        }
        int i = 8;
        if (this.A != null && getActivity() != null) {
            this.A.setVisibility((ydc.e() || w6c.c(getActivity(), "new_audio_already_check", false)) ? 8 : 0);
        }
        if (this.B == null || getActivity() == null) {
            return;
        }
        BadgeView badgeView = this.B;
        if (!ydc.e() && !w6c.c(getActivity(), "file_trans_already_check", false)) {
            i = 0;
        }
        badgeView.setVisibility(i);
    }

    public final void N1() {
        if (!pp3.k || pp3.p) {
            H1(1.0f, 1.0f);
            return;
        }
        BaseConstant.SCREEN_TYPE screen_type = this.mScreenType;
        if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT) {
            H1(1.0f, 1.0f);
        } else if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND) {
            H1(1.0f, 1.0f);
        } else {
            H1(1.0f, 1.0f);
        }
    }

    public final void O1() {
        int i;
        int i2;
        int i3;
        if (!isAdded() || getContext() == null) {
            return;
        }
        BaseConstant.SCREEN_TYPE screen_type = this.mScreenType;
        boolean z = true;
        boolean z2 = screen_type == BaseConstant.SCREEN_TYPE.FOLD;
        boolean z3 = screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT;
        boolean z4 = screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND;
        boolean z5 = screen_type == BaseConstant.SCREEN_TYPE.TABLE;
        int i4 = getResources().getConfiguration().orientation;
        boolean z6 = pp3.p && zdc.l;
        FrameLayout frameLayout = this.F;
        if (frameLayout != null) {
            frameLayout.setVisibility(z6 ? 0 : 8);
        }
        boolean z7 = this.m0 && z5 && R1(i4);
        boolean z8 = this.m0;
        if (z8 || (!z3 && !z4)) {
            z = false;
        }
        ImageView imageView = this.I;
        if (imageView != null) {
            if (z8) {
                if (z7) {
                    E1(imageView, R.drawable.ic_icon_default_theme_tablet);
                } else {
                    E1(imageView, R.drawable.ic_icon_default_theme_tablet_port);
                }
            } else if (z && z6) {
                E1(imageView, R.drawable.ic_icon_default_theme_tablet);
            } else if (z6) {
                E1(imageView, R.drawable.ic_icon_default_theme_small1);
            } else {
                if (z2) {
                    i3 = R.drawable.ic_icon_default_theme1;
                } else {
                    i3 = z3 ? R.drawable.ic_icon_default_theme_v : R.drawable.ic_icon_default_theme_h;
                }
                E1(imageView, i3);
            }
        }
        ImageView imageView2 = this.J;
        if (imageView2 != null) {
            if (this.m0) {
                if (z7) {
                    E1(imageView2, R.drawable.ic_icon_default_video2mp3_tablet);
                } else {
                    E1(imageView2, R.drawable.ic_icon_default_video2mp3_tablet_port);
                }
            } else if (z) {
                E1(imageView2, R.drawable.ic_icon_default_video2mp3_tablet);
            } else {
                if (z2) {
                    i2 = R.drawable.ic_video_to_mp3;
                } else {
                    i2 = z3 ? R.drawable.ic_icon_default_video2mp3_v : R.drawable.ic_icon_default_video2mp3_h;
                }
                E1(imageView2, i2);
            }
        }
        ImageView imageView3 = this.K;
        if (imageView3 != null) {
            if (this.m0) {
                if (z7) {
                    E1(imageView3, R.drawable.ic_icon_default_download_tablet);
                } else {
                    E1(imageView3, R.drawable.ic_icon_default_download_tablet_port);
                }
            } else if (z) {
                E1(imageView3, R.drawable.ic_icon_default_download_tablet);
            } else {
                if (z6) {
                    i = R.drawable.ic_download_management;
                } else if (z2) {
                    i = R.drawable.ic_downloads;
                } else {
                    i = z3 ? R.drawable.ic_icon_default_download_v : R.drawable.ic_icon_default_download_h;
                }
                E1(imageView3, i);
            }
        }
        ImageView imageView4 = this.L;
        if (imageView4 != null) {
            if (z7 || z) {
                E1(imageView4, R.drawable.ic_icon_default_private_tablet);
            } else {
                E1(imageView4, R.drawable.ic_tools_private);
            }
        }
        if ((this.m0 && z5) || z) {
            V0();
        }
        T0();
    }

    public final void Q1() {
        if (a1() % 2 == 0) {
            B1();
            return;
        }
        LinearLayout linearLayout = this.O;
        if (linearLayout != null) {
            linearLayout.setOrientation(0);
        }
        FrameLayout frameLayout = this.C;
        if (frameLayout != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) frameLayout.getLayoutParams();
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.bottomMargin = 0;
            this.C.setLayoutParams(marginLayoutParams);
        }
        FrameLayout frameLayout2 = this.D;
        if (frameLayout2 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) frameLayout2.getLayoutParams();
            marginLayoutParams2.topMargin = 0;
            marginLayoutParams2.bottomMargin = 0;
            this.D.setLayoutParams(marginLayoutParams2);
        }
        int iD = com.transsion.utils.a.d(this.mContext, 5.0f);
        FrameLayout frameLayout3 = this.C;
        if (frameLayout3 != null) {
            frameLayout3.setPaddingRelative(iD, 0, 0, 0);
        }
        FrameLayout frameLayout4 = this.D;
        if (frameLayout4 != null) {
            frameLayout4.setPaddingRelative(iD, 0, 0, 0);
        }
        FrameLayout frameLayout5 = this.F;
        boolean z = frameLayout5 != null && frameLayout5.getVisibility() == 0;
        LinearLayout linearLayout2 = this.P;
        if (linearLayout2 != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout2.getLayoutParams();
            if (z) {
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.weight = 2.0f;
            }
            this.P.setLayoutParams(layoutParams);
            this.P.setPaddingRelative(0, 0, 0, 0);
        }
        LinearLayout linearLayout3 = this.O;
        if (linearLayout3 != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) linearLayout3.getLayoutParams();
            layoutParams2.weight = 1.0f;
            this.O.setPaddingRelative(0, 0, 0, 0);
            this.O.setLayoutParams(layoutParams2);
        }
    }

    public final boolean R1(int i) {
        return i == 2 || a1() % 2 == 0;
    }

    public final void S0(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            imageView.setLayoutParams(layoutParams);
        }
        imageView.setBackground(null);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setAdjustViewBounds(false);
    }

    public final void T0() {
        if (this.Z) {
            ImageView imageView = this.I;
            if (imageView != null) {
                imageView.setScaleX(-1.0f);
            }
            ImageView imageView2 = this.J;
            if (imageView2 != null) {
                imageView2.setScaleX(-1.0f);
            }
            ImageView imageView3 = this.K;
            if (imageView3 != null) {
                imageView3.setScaleX(-1.0f);
            }
            ImageView imageView4 = this.L;
            if (imageView4 != null) {
                imageView4.setScaleX(-1.0f);
            }
        }
    }

    public final void U0(View view) {
        if (this.Z) {
            for (int i : r0) {
                View viewFindViewById = view.findViewById(i);
                if (viewFindViewById != null) {
                    viewFindViewById.setRotationY(180.0f);
                }
            }
        }
    }

    public final void V0() {
        S0(this.I);
        S0(this.J);
        S0(this.K);
        S0(this.L);
    }

    public final void W0() {
        Log.i("ToolsFragment", "last query is1:" + UpdateUtils.a);
        if (UpdateUtils.a == 0 || System.currentTimeMillis() - UpdateUtils.a >= 20000 || bs8.a != null || this.V) {
            this.U = false;
            this.V = false;
            this.W = false;
            this.X = false;
            J1();
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() {
                    this.b.o1();
                }
            });
            return;
        }
        Log.i("ToolsFragment", "last query is2:" + UpdateUtils.a);
        p1(bs8.a);
        if (bs8.a != null) {
            n1();
        } else {
            UpdateUtils.y();
        }
    }

    public final void X0() {
        if (!MainApp.p()) {
            ToastUtils.s(R.string.no_network);
            p06.O(2);
        } else if (ydc.e()) {
            Y0();
        } else {
            W0();
        }
    }

    public final void Y0() {
        Log.i("ToolsFragment", "last query is1:" + UpdateUtils.a);
        if (UpdateUtils.a == 0 || System.currentTimeMillis() - UpdateUtils.a >= 20000) {
            J1();
            UpdateUtils.a = System.currentTimeMillis();
            this.Y = true;
            pb7.h().o();
            return;
        }
        Log.i("ToolsFragment", "last query is2:" + UpdateUtils.a);
    }

    public final void Z0() {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (ToolsFragment.this.N == null || ToolsFragment.this.getActivity() == null || ToolsFragment.this.getActivity().isDestroyed()) {
                    return;
                }
                ToolsFragment.this.N.dismiss();
            }
        });
    }

    public final int a1() {
        FrameLayout frameLayout = this.E;
        int i = (frameLayout == null || frameLayout.getVisibility() != 0) ? 0 : 1;
        FrameLayout frameLayout2 = this.F;
        if (frameLayout2 != null && frameLayout2.getVisibility() == 0) {
            i++;
        }
        FrameLayout frameLayout3 = this.C;
        if (frameLayout3 != null && frameLayout3.getVisibility() == 0) {
            i++;
        }
        FrameLayout frameLayout4 = this.D;
        return (frameLayout4 == null || frameLayout4.getVisibility() != 0) ? i : i + 1;
    }

    public final void b1() {
        RouterUtils.jumpToPrivacyRoom(this.mContext, 1, 0);
    }

    public final void c1() {
        a64.n((AboutUsFragment) new AboutUsFragment().setBaseActivity((BaseActivity) getActivity()), true, true);
        p06.d0("setup_about_cl");
    }

    public final void d1() {
        a64.n((TransferManagerFragment) TransferManagerFragment.j0("setup_download_cl", 0, false, true).setBaseActivity((BaseActivity) getActivity()), true, true);
        p06.f0(null, "setup_download_cl", 9324L);
        s16.c(MainApp.x, "更多");
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (this.T && isAdded()) {
            if (i == 1119) {
                A1();
            } else if (i == 1171) {
                e1();
            }
        }
    }

    public final void e1() {
        w6c.r(this.mContext, "file_trans_already_check", true);
        BadgeView badgeView = this.B;
        if (badgeView != null && badgeView.getVisibility() == 0) {
            this.B.setVisibility(8);
        }
        a64.n((FileTransFragment) new FileTransFragment().setBaseActivity((BaseActivity) getActivity()), true, true);
        MarkFileTransferInfo.a.m("vd_more");
    }

    public final void f1() {
        GPRatingDialog.K("更多点击评分鼓励").showListDialog(getActivity(), "more_gpRatingCustom");
        p06.d0("setup_rate_cl");
    }

    public final void g1() {
        p06.f0(null, "video_private_folder", 9324L);
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.xui.xhide", "com.xui.xhide.SecBoxActivity"));
        try {
            f5.c(intent, this.mContext);
        } catch (Exception e2) {
            Log.e("ToolsFragment", "<runXhideMunClick> activity" + e2);
        }
    }

    public final void h1() {
        hb0.markDirect("vd_more_hide_cl");
        if (Build.VERSION.SDK_INT >= 30) {
            if (!Environment.isExternalStorageManager()) {
                t08.a(this.mActivity);
                return;
            }
        } else if (this.mContext.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 || this.mContext.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            t08.m(this.mActivity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 132);
            return;
        }
        b1();
    }

    public final void i1() {
        if (!ydc.g()) {
            RouterUtils.jumpToSettingActivity(this.mActivity, "tab_more_setting_btn");
            return;
        }
        SettingFragment baseActivity = SettingFragment.newInstance(new Bundle()).setBaseActivity((BaseActivity) getActivity());
        baseActivity.setNeedBg(true);
        a64.n(baseActivity, true, true);
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1119);
        this.mEvents.add(1171);
    }

    public final void j1() {
        Intent intent = new Intent(this.mActivity, (Class<?>) SkinsActivity.class);
        intent.putExtra("from", "skin_setup_entry");
        f5.c(intent, this.mContext);
        p06.f0(null, "skin_setup_entry", 932460000100L);
    }

    public final void k1() {
        a64.n((ConverterMainFragment) new ConverterMainFragment().setBaseActivity((BaseActivity) getActivity()), true, true);
        p06.f0(null, "mp3_entrance", 932460000096L);
    }

    public final void l1() {
        AppWidgetMusicDialog.newInstance(getActivity(), 1).showDialog(getActivity());
        this.z.setVisibility(8);
        w6c.r(getActivity(), "widget_already_check", true);
        hb0.markDirect("vd_moretab_widget_cl");
    }

    public void m1() {
        p1(null);
        if (pp3.p || !jf.o(this.mContext)) {
            this.v.setVisibility(8);
        } else {
            this.v.setVisibility(0);
            ((TextView) this.v.findViewById(R.id.tv_hide)).setText(jf.i(getContext()));
        }
        String strH = UpdateUtils.h(getContext());
        if (ge.f() || ge.e()) {
            String str = ((strH + " ") + ge.a()) + " ";
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(pp3.n() ? "hd" : "");
            strH = sb.toString();
        }
        TextView textView = this.w;
        Resources resources = getResources();
        int i = R.string.current_version;
        textView.setText(resources.getString(i, strH));
        this.r.setContentDescription(getString(R.string.version_update) + getString(i, UpdateUtils.h(getContext())));
        bs8.c(new bs8.a() {
            @Override
            public final void a(CloudVersionControl cloudVersionControl) {
                this.a.q1(cloudVersionControl);
            }
        });
        G1();
    }

    @Override
    public void markBottomTabPageShow() {
        super.markBottomTabPageShow();
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (!this.mIsVisibleToUser || this.mIsHide) {
            return;
        }
        r06.c(screen_type, "setup_page_show");
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser && !this.S && jCurrentTimeMillis - this.R > 1000) {
            p06.f0(null, "setup_page_show", 932460000095L);
            this.R = jCurrentTimeMillis;
        }
        this.S = false;
    }

    public final void n1() {
        p06.O(1);
        f5.c(new Intent(this.mActivity, (Class<?>) UpdateActivity.class), this.mActivity);
    }

    public final void o1() {
        bs8.a = UpdateUtils.g(getContext(), false, true);
        if (getActivity() != null) {
            getActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    ToolsFragment.this.p1(bs8.a);
                    boolean z = bs8.a != null;
                    if (z) {
                        ToolsFragment.this.U = true;
                        ToolsFragment.this.n1();
                    }
                    ToolsFragment.this.W = true;
                    if (!z) {
                        ToolsFragment.this.L1();
                    } else {
                        ToolsFragment.this.X = true;
                        ToolsFragment.this.x1();
                    }
                }
            });
            Z0();
        } else {
            this.W = true;
            this.X = true;
            x1();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        Handler handler = this.m;
        if (handler != null) {
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.s1();
                }
            }, 50L);
        }
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.m = new Handler(Looper.getMainLooper());
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, final Bundle bundle) {
        final FrameLayout frameLayout = new FrameLayout(requireContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.l = frameLayout;
        this.Z = av3.z() || kdc.a(requireContext());
        d22.d().a(frameLayout, R.layout.tools_fragment, new td8.c() {
            @Override
            public final void a(int i, View view) {
                this.a.t1(frameLayout, bundle, i, view);
            }
        });
        return frameLayout;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ns3.d();
        pb7.h().m(this.o0);
        pb7.h().l(this.p0);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.l = null;
        this.T = false;
        this.l0 = false;
        Handler handler = this.m;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        bs8.d();
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        super.onFinishRequestPermission(i, z);
        Log.d("ToolsFragment", "onFinishRequestPermission" + z);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            if (i == 131) {
                if (Build.VERSION.SDK_INT < 30 || !Environment.isExternalStorageManager()) {
                    return;
                }
                b1();
                return;
            }
            if (i == 132 && z) {
                b1();
            }
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        if (this.T) {
            if (this.m0) {
                if (screen_type == BaseConstant.SCREEN_TYPE.TABLE) {
                    C1();
                    Q1();
                } else {
                    B1();
                }
            }
            P1();
            N1();
            O1();
            M1();
        }
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (this.T) {
            M1();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.T) {
            M1();
        }
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        showGuide();
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    public final void q1(final CloudVersionControl cloudVersionControl) {
        requireActivity().runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.p1(cloudVersionControl);
            }
        });
    }

    public final void r1() {
        ToastUtils.w(this.mContext.getResources().getString(R.string.update_is_newest));
    }

    public final void s1() {
        if (this.T && isAdded()) {
            BaseConstant.SCREEN_TYPE screen_typeA = b39.a(this.mContext);
            this.mScreenType = screen_typeA;
            if (this.m0) {
                if (screen_typeA == BaseConstant.SCREEN_TYPE.TABLE) {
                    Q1();
                    O1();
                } else {
                    B1();
                    O1();
                }
            }
        }
    }

    @Override
    public void setHiddenChanged(boolean z) {
        super.setHiddenChanged(z);
        if (this.T) {
            M1();
        }
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        showGuide();
    }

    @Override
    public void showGuide() {
        if (this.T && isAdded()) {
            boolean zC = w6c.c(this.mContext, "file_trans_guide_already_show", false);
            LinearLayout linearLayout = this.Q;
            if (linearLayout == null || linearLayout.getVisibility() != 0 || zC) {
                return;
            }
            ns3.e(this.mContext);
        }
    }

    public final void t1(FrameLayout frameLayout, Bundle bundle, int i, View view) {
        if (isAdded() && this.l == frameLayout) {
            frameLayout.addView(view);
            z1(view, bundle);
        }
    }

    public final boolean u1(View view) {
        this.n.setHapticFeedbackEnabled(!RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 4));
        return true;
    }

    public final boolean v1(View view) {
        return RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 4);
    }

    public final boolean w1(View view) {
        return RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 4);
    }

    public final void x1() {
        if (!this.W || !this.X || this.U || this.V || this.mContext == null) {
            return;
        }
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.r1();
            }
        });
    }

    public final void y1() {
        ez5.b("more_tab");
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
        } else {
            VishaFeedbackPage.c(this.mContext, getResources().getString(R.string.feedback));
        }
        if (this.M) {
            this.M = false;
            I1(false);
            w6c.r(getContext(), "finished_operate_feedback", true);
        }
    }

    public final void z1(View view, Bundle bundle) {
        this.T = false;
        if (pp3.x(getApplicationContext())) {
            view.setPadding(pp3.g(this.mContext), 0, pp3.h(this.mContext), 0);
        }
        this.n = (ImageView) view.findViewById(com.transsion.magicvideo.R.id.iv_logo);
        this.o = (TextView) view.findViewById(com.transsion.magicvideo.R.id.tv_logo_text);
        this.p = (LinearLayout) view.findViewById(R.id.ll_setting);
        this.Q = (LinearLayout) view.findViewById(R.id.ll_file_trans);
        this.B = (BadgeView) view.findViewById(R.id.bv_file_trans_point);
        this.P = (LinearLayout) view.findViewById(R.id.ll_theme);
        this.O = (LinearLayout) view.findViewById(R.id.ll_others);
        this.v = (LinearLayout) view.findViewById(R.id.ll_hide);
        this.F = (FrameLayout) view.findViewById(R.id.fl_private);
        this.G = (FrameLayout) view.findViewById(R.id.fl_frame);
        this.F.setVisibility((pp3.p && zdc.l) ? 0 : 8);
        this.q = (LinearLayout) view.findViewById(R.id.ll_feedback);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_update);
        this.r = linearLayout;
        linearLayout.setVisibility(0);
        this.C = (FrameLayout) view.findViewById(R.id.fl_video_to_mp3);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.fl_download_manage);
        this.D = frameLayout;
        if (!pp3.k) {
            frameLayout.setVisibility(8);
        }
        ((TextView) view.findViewById(R.id.tv_downloads)).setText(zz0.d() ? R.string.visha_transfer_management : R.string.download_manager);
        this.E = (FrameLayout) view.findViewById(R.id.fl_theme);
        this.x = (TextView) view.findViewById(R.id.tv_check_update);
        this.w = (TextView) view.findViewById(R.id.tv_version);
        this.s = (LinearLayout) view.findViewById(R.id.ll_about_us);
        this.t = (LinearLayout) view.findViewById(R.id.ll_go_rating);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_widget);
        this.u = linearLayout2;
        linearLayout2.setOnClickListener(this.q0);
        this.z = (BadgeView) view.findViewById(R.id.bv_count);
        this.p.setOnClickListener(this.q0);
        this.Q.setOnClickListener(this.q0);
        this.v.setOnClickListener(this.q0);
        this.F.setOnClickListener(this.q0);
        this.q.setOnClickListener(this.q0);
        this.r.setOnClickListener(this.q0);
        this.C.setOnClickListener(this.q0);
        this.D.setOnClickListener(this.q0);
        this.E.setOnClickListener(this.q0);
        this.s.setOnClickListener(this.q0);
        this.t.setOnClickListener(this.q0);
        this.y = (TextView) view.findViewById(R.id.tv_feedback);
        this.I = (ImageView) view.findViewById(R.id.imv_theme);
        this.J = (ImageView) view.findViewById(R.id.imv_video_to_mp3);
        this.K = (ImageView) view.findViewById(R.id.imv_downloads);
        this.L = (ImageView) view.findViewById(R.id.imv_private);
        this.H = (OverBoundNestedScrollView) view.findViewById(R.id.sv_content);
        this.m0 = com.transsion.utils.a.D(this.mContext);
        this.H.setUpOverScroll();
        this.M = !w6c.c(getContext(), "finished_operate_feedback", false);
        I1(false);
        P1();
        m1();
        this.t.setVisibility(8);
        this.z.setVisibility((ydc.e() || w6c.c(getActivity(), "widget_already_check", false)) ? 8 : 0);
        this.T = true;
        M1();
        N1();
        if (this.m0) {
            C1();
            Q1();
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.O1();
            }
        });
        U0(view);
        super.onViewCreatedEnd(view, bundle);
    }
}
