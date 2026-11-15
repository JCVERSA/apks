package com.transsion.onlinevideo.membership;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.VipItemAdapter;
import com.transsion.onlinevideo.membership.UserCenterActivity;
import com.transsion.onlinevideo.viewmodel.UserViewModel;
import com.transsion.onlinevideo.web.VipHelpActivity;
import com.transsion.onlinevideo.web.VipWebActivity;
import com.transsion.palmsdk.b;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgetslib.dialog.d;
import defpackage.d39;
import defpackage.f06;
import defpackage.f5;
import defpackage.hb0;
import defpackage.k29;
import defpackage.kfc;
import defpackage.mc7;
import defpackage.oc2;
import defpackage.pp3;
import defpackage.t74;
import defpackage.vb;
import defpackage.vk1;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UserCenterActivity extends OnlineBaseActivity implements View.OnClickListener {
    public static final String g0 = "visha_" + UserCenterActivity.class.getSimpleName();
    public UserViewModel N;
    public View O;
    public ImageView P;
    public ImageView Q;
    public ImageView R;
    public ImageView S;
    public ImageView T;
    public TextView U;
    public TextView V;
    public TextView W;
    public TextView X;
    public String Y;
    public RecyclerView Z;
    public VipItemAdapter a0;
    public final List b0 = new ArrayList();
    public CustomSwipeRefreshLayout c0;
    public LinearLayout d0;
    public boolean e0;
    public boolean f0;

    public void N0(View view) {
        hb0.markDirect("vd_ott_vip_back_cl");
        onBackPressed();
    }

    public static void S0(String str, Context context) {
        Intent intent = new Intent(context, (Class<?>) UserCenterActivity.class);
        intent.putExtra("from", str);
        f5.c(intent, context);
    }

    public static void T0(String str, String str2, Context context) {
        Intent intent = new Intent(context, (Class<?>) UserCenterActivity.class);
        intent.putExtra("from", str);
        intent.putExtra("source_type", str2);
        f5.c(intent, context);
    }

    public void A0(boolean z) {
        this.W.setActivated(z);
        this.S.setActivated(z);
        this.V.setActivated(z);
        this.T.setVisibility(z ? 0 : 8);
    }

    public void B0(final String str) {
        mc7.K(this).g(bindToLifecycle()).d0(k29.b(TaskExecutor.b())).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.I0(str, (UserCenterActivity) obj);
            }
        }).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.J0((Bitmap) obj);
            }
        });
    }

    public void C0(boolean z, VishaPalmUserInfo vishaPalmUserInfo) {
        if (!z) {
            this.Q.setImageResource(R.drawable.ic_empty_user_image);
            this.V.setText(R.string.palm_id_login_hint);
            getWindow().setBackgroundDrawableResource(R.color.black);
            this.W.setText(R.string.membership_hint);
            A0(false);
            return;
        }
        if (!TextUtils.isEmpty(vishaPalmUserInfo.getAvatarUrl())) {
            if (isDestroyed()) {
                return;
            }
            Glide.with((FragmentActivity) this).asBitmap().load2(vishaPalmUserInfo.getAvatarUrl()).apply((BaseRequestOptions<?>) new RequestOptions().transform(new CenterCrop(), new RoundedCorners(oc2.a(this, 40.0f)))).into(this.Q);
            B0(vishaPalmUserInfo.avatarUrl);
        }
        this.V.setText(TextUtils.isEmpty(vishaPalmUserInfo.nickName) ? vishaPalmUserInfo.userName : vishaPalmUserInfo.nickName);
    }

    public void D0() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.c0;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.K0();
            }
        });
    }

    public void E0() {
        this.Z.setLayoutManager(new LinearLayoutManager(this));
        VipItemAdapter vipItemAdapter = new VipItemAdapter(this);
        this.a0 = vipItemAdapter;
        this.Z.setAdapter(vipItemAdapter);
        this.a0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.L0(baseQuickAdapter, view, i);
            }
        });
        this.a0.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.M0(baseQuickAdapter, view, i);
            }
        });
    }

    public void F0() {
        View viewInflate = ((ViewStub) findViewById(R.id.title_bar)).inflate();
        this.U = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        View viewFindViewById = viewInflate.findViewById(R.id.title_bar_back);
        this.O = viewFindViewById;
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(com.transsion.playercommon.R.string.os_back);
            this.O.setContentDescription(getString(com.transsion.playercommon.R.string.talkback_back));
        }
        this.O.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.N0(view);
            }
        });
        String string = getResources().getString(R.string.palm_id_login_me);
        this.Y = string;
        this.U.setText(string);
        this.U.setTextColor(getResources().getColor(R.color.os_candwhile_primary_color));
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_pay_history);
        this.P = imageView;
        imageView.setVisibility(0);
        this.P.setOnClickListener(this);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.iv_faq);
        this.R = imageView2;
        imageView2.setVisibility(0);
        this.R.setImageResource(R.drawable.ic_online_faq_night);
        this.R.setOnClickListener(this);
    }

    public void G0() {
        UserViewModel userViewModel = (UserViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(UserViewModel.class);
        this.N = userViewModel;
        userViewModel.c().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.O0((UserInfoBean) obj);
            }
        });
        if (b.s()) {
            b.D();
        }
        kfc.k(false, null);
    }

    public void H0() {
        ImageView imageView = (ImageView) findViewById(R.id.iv_user_image);
        this.Q = imageView;
        imageView.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.tv_user_name);
        this.V = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) findViewById(R.id.tv_vip_feedback);
        this.X = textView2;
        textView2.setOnClickListener(this);
        this.Z = (RecyclerView) findViewById(R.id.rv_vip_item);
        this.W = (TextView) findViewById(R.id.tv_vip_tips);
        this.S = (ImageView) findViewById(R.id.iv_vip_logo);
        this.c0 = (CustomSwipeRefreshLayout) findViewById(R.id.user_pull_damping_layout);
        this.d0 = (LinearLayout) findViewById(R.id.ll_vip_progress_hint);
        this.T = (ImageView) findViewById(R.id.iv_user_image_frame);
    }

    public final Bitmap I0(String str, UserCenterActivity userCenterActivity) {
        return vk1.b(this, vk1.k(this, str), d39.c(this), d39.b(this), 0);
    }

    public final void J0(Bitmap bitmap) {
        getWindow().setBackgroundDrawable(new BitmapDrawable(bitmap));
    }

    public final void K0() {
        kfc.k(false, null);
        this.c0.postDelayed(new Runnable() {
            @Override
            public void run() {
                UserCenterActivity.this.c0.setRefreshing(false);
            }
        }, 1000L);
    }

    public final void L0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        UserInfoBean.VipInfoVosBean vipInfoVosBean = (UserInfoBean.VipInfoVosBean) this.b0.get(i);
        if (vipInfoVosBean.getId() == null || vipInfoVosBean.getId().intValue() == 0) {
            return;
        }
        f06.f(vipInfoVosBean.getTitle(), !TextUtils.isEmpty(vipInfoVosBean.getExpireDate()));
        f5.b(VipWebActivity.I0(this, vipInfoVosBean.getId().intValue(), vipInfoVosBean.getTitle(), "vd_ott_vip_cl"), 4096, this);
    }

    public final void M0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        UserInfoBean.VipInfoVosBean vipInfoVosBean = (UserInfoBean.VipInfoVosBean) this.b0.get(i);
        if (vipInfoVosBean.getId() == null || vipInfoVosBean.getId().intValue() == 0) {
            return;
        }
        if (view.getId() == R.id.detail_more) {
            SubscribeDatailActivity.E0(vipInfoVosBean.getId().intValue(), this);
        } else {
            f06.f(vipInfoVosBean.getTitle(), !TextUtils.isEmpty(vipInfoVosBean.getExpireDate()));
            f5.b(VipWebActivity.I0(this, vipInfoVosBean.getId().intValue(), vipInfoVosBean.getTitle(), "vd_ott_vip_cl"), 4096, this);
        }
    }

    public final void O0(UserInfoBean userInfoBean) {
        if (userInfoBean.getUserInfoVo() != null) {
            this.W.setText(userInfoBean.getUserInfoVo().getVipTips());
            U0(userInfoBean.getVipInfoVosMap());
        }
    }

    public final void P0(DialogInterface dialogInterface, int i) {
        Uri uri = Uri.parse("mailto:visha.rd@transsion.com");
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(uri);
        f5.c(intent, this);
    }

    public final void Q0(DialogInterface dialogInterface, int i) {
        f5.c(new Intent("android.intent.action.VIEW", Uri.parse("https://chat.whatsapp.com/IDflRYYwf5vC51nS9toNXi")), this);
    }

    public void U0(UserInfoBean.VipInfoVosMapBean vipInfoVosMapBean) {
        boolean z;
        if (vipInfoVosMapBean == null) {
            this.b0.clear();
            this.a0.setNewData(this.b0);
            this.d0.setVisibility(8);
            return;
        }
        this.b0.clear();
        UserInfoBean.VipInfoVosMapBean.VipBean vip = vipInfoVosMapBean.getVip();
        UserInfoBean.VipInfoVosMapBean.WithoutVipBean withoutVip = vipInfoVosMapBean.getWithoutVip();
        UserInfoBean.VipInfoVosBean vipInfoVosBean = new UserInfoBean.VipInfoVosBean();
        boolean z2 = true;
        if (vip == null || vip.getVipInfoVos() == null) {
            A0(false);
        } else {
            this.b0.addAll(vip.getVipInfoVos());
            A0(vip.getVipInfoVos().size() > 0);
        }
        if (withoutVip != null && withoutVip.getVipInfoVos() != null) {
            vipInfoVosBean.setTitle(getResources().getString(R.string.vip_no_activated_hint));
            this.b0.add(vipInfoVosBean);
            this.b0.addAll(withoutVip.getVipInfoVos());
        }
        this.a0.setNewData(this.b0);
        boolean z3 = this.f0;
        if (!z3 || (z3 && VipWebActivity.p0 == 1)) {
            f06.d(vipInfoVosMapBean);
        }
        if (vip != null && vip.getVipInfoVos() != null) {
            Iterator<UserInfoBean.VipInfoVosBean> it = vip.getVipInfoVos().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().getVipStatus().intValue() == 2) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        if (withoutVip != null && withoutVip.getVipInfoVos() != null) {
            Iterator<UserInfoBean.VipInfoVosBean> it2 = withoutVip.getVipInfoVos().iterator();
            do {
                if (!it2.hasNext()) {
                    z2 = z;
                    break;
                }
            } while (it2.next().getVipStatus().intValue() != 2);
        } else {
            z2 = z;
            break;
        }
        this.d0.setVisibility(z2 ? 0 : 8);
    }

    public void V0() {
        new d.a(this).A(R.string.feedback).k(getResources().getString(R.string.membership_feedback_message, getString(pp3.c ? R.string.membership_feedback_email_pre : R.string.membership_feedback_email))).d(true).u(R.string.e_mail, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.P0(dialogInterface, i);
            }
        }).o(R.string.whatsapp, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.Q0(dialogInterface, i);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).a().show();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i != 1043) {
            return;
        }
        this.N.f(this);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && intent != null && intent.getBooleanExtra("close_user_page", false)) {
            finish();
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_user_image || id == R.id.tv_user_name) {
            if (b.s()) {
                b.C(this);
                return;
            } else {
                b.h(this, "vd_ott_pf_cl");
                return;
            }
        }
        if (id == R.id.iv_pay_history) {
            f5.c(VipWebActivity.J0(this, getResources().getString(R.string.vip_purchase_history)), this);
            hb0.markDirect("vd_ott_me_order_cl");
        } else if (id == R.id.tv_vip_feedback) {
            V0();
        } else if (id == R.id.iv_faq) {
            f5.c(VipHelpActivity.q0(this, OnlineVideoApiManager.getInstance().createBaseUrl() + "/#/faq", getString(R.string.membership_faq)), this);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_user_center);
        Window window = getWindow();
        int i = R.color.black;
        window.setBackgroundDrawableResource(i);
        getWindow().setStatusBarColor(getResources().getColor(R.color.color_F06000));
        getWindow().setNavigationBarColor(getResources().getColor(i));
        boolean z = false;
        this.e0 = false;
        if (getIntent() != null && "playdetail".equals(getIntent().getStringExtra("from"))) {
            z = true;
        }
        this.f0 = z;
        if (z) {
            openVip();
        }
        H0();
        E0();
        F0();
        G0();
        D0();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.N.f(this);
        boolean z = this.f0;
        if (!z || (z && VipWebActivity.p0 == 1)) {
            f06.e(b.s(), getIntent().getStringExtra("from"));
        }
        if (VipWebActivity.p0 == 0 && this.e0) {
            VipWebActivity.p0 = -1;
            this.e0 = false;
            finish();
        }
    }

    @Override
    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserLogin(vishaPalmUserInfo);
        C0(true, vishaPalmUserInfo);
        PlayHandler.getInstance().mIsLogin = true;
        this.N.f(this);
    }

    @Override
    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserReLogin(vishaPalmUserInfo);
        C0(true, vishaPalmUserInfo);
    }

    public final void openVip() {
        int i = 1;
        this.e0 = true;
        if (getIntent() == null || getIntent().getStringExtra("source_type") == null) {
            return;
        }
        int i2 = Integer.parseInt(getIntent().getStringExtra("source_type"));
        int iIntValue = 0;
        try {
            iIntValue = kfc.j(i2).getId().intValue();
            Log.i(g0, "openVip: " + kfc.j(i2).getId());
        } catch (Exception unused) {
            if (i2 != 1) {
                i = 2;
                if (i2 != 2) {
                }
            }
            f5.b(VipWebActivity.I0(this, i, "VIP", "playdetail"), 4096, this);
        }
        i = iIntValue;
        f5.b(VipWebActivity.I0(this, i, "VIP", "playdetail"), 4096, this);
    }

    @Override
    public void registerPalmIdListeners() {
        super.registerPalmIdListeners();
        b.G();
        b.H();
    }

    @Override
    public void unRegisterPalmIdListeners() {
        super.unRegisterPalmIdListeners();
        b.L();
        b.M();
    }

    @Override
    public void userLogout() {
        super.userLogout();
        C0(false, null);
        kfc.d(false);
        PlayHandler.getInstance().mIsLogin = false;
        U0(null);
    }
}
