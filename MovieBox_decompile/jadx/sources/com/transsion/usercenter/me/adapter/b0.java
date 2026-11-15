package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baselib.kids.KidsProfile;
import com.transsion.baseui.widget.GradientBorderTagView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$mipmap;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.edit.ProfileEditCenterActivity;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsnet.loginapi.bean.UserInfo;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b0 extends BaseItemProvider {

    private final o f54813e;

    private UserInfo f54814f;

    /* JADX WARN: Multi-variable type inference failed */
    public b0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean C() {
        UserInfo userInfo = this.f54814f;
        return userInfo == null || (userInfo != null && userInfo.getUserType() == 0);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00ec  */
    private final void D(BaseViewHolder baseViewHolder, UserInfo userInfo) {
        int i10;
        Integer gender;
        boolean z10;
        Integer age;
        Integer age2;
        boolean z11 = true;
        KidsProfile kidsProfileF = KidsAccountManager.f42144a.f();
        TextView textView = (TextView) baseViewHolder.getView(R$id.nameTv);
        textView.setText(kidsProfileF != null ? kidsProfileF.getName() : null);
        textView.setCompoundDrawables(null, null, null, null);
        GradientBorderTagView gradientBorderTagView = (GradientBorderTagView) baseViewHolder.getView(R$id.safeKidsTv);
        gradientBorderTagView.setVisibility(ij.o.f62115a.j() ? 0 : 8);
        String string = Utils.a().getResources().getString(R$string.user_switch_profile);
        Intrinsics.g(string, "getString(...)");
        gradientBorderTagView.setText(string);
        ((TextView) baseViewHolder.getView(R$id.idTv)).setText(Utils.a().getResources().getString(R$string.user_id_show, userInfo != null ? userInfo.getUsername() : null));
        TextView textView2 = (TextView) baseViewHolder.getView(R$id.genderTv);
        if ((kidsProfileF != null ? kidsProfileF.getGender() : null) == null) {
            i10 = 0;
        } else {
            i10 = (kidsProfileF == null || (gender = kidsProfileF.getGender()) == null || gender.intValue() != 1) ? R$mipmap.profile_female : R$mipmap.profile_man;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(i10, 0, 0, 0);
        if (((kidsProfileF == null || (age2 = kidsProfileF.getAge()) == null) ? 0 : age2.intValue()) <= 0) {
            textView2.setText("");
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
            sm.e.f72346a.b(spannableStringBuilder);
            spannableStringBuilder.append((CharSequence) String.valueOf(kidsProfileF != null ? kidsProfileF.getAge() : null));
            textView2.setText(spannableStringBuilder);
        }
        if ((kidsProfileF != null ? kidsProfileF.getGender() : null) != null) {
            z10 = true;
        } else {
            if (((kidsProfileF == null || (age = kidsProfileF.getAge()) == null) ? 0 : age.intValue()) > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        textView2.setVisibility(z10 ? 0 : 8);
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.avatarIV);
        String avatarLocalPath = kidsProfileF != null ? kidsProfileF.getAvatarLocalPath() : null;
        if (avatarLocalPath != null && avatarLocalPath.length() != 0) {
            z11 = false;
        }
        if (!z11) {
            Glide.with(k()).load2(new File(avatarLocalPath)).into(imageView);
        } else if (imageView != null) {
            imageView.setImageResource(kidsProfileF != null ? kidsProfileF.getAvatarResId() : 0);
        }
    }

    private final void E(final BaseViewHolder baseViewHolder, final UserInfo userInfo) {
        int i10;
        Function1<MeItemInfo, Unit> function1R1;
        Function1<MeItemInfo, Unit> function1R2;
        boolean z10 = true;
        baseViewHolder.getView(R$id.loginTv).setVisibility(8);
        baseViewHolder.getView(R$id.avatarIV).setVisibility(0);
        View itemView = baseViewHolder.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return b0.F(userInfo, this, (View) obj);
            }
        }, 1, null);
        if (userInfo == null) {
            return;
        }
        if (ij.g.f62108a.b()) {
            baseViewHolder.getView(R$id.tvLoginMyChannel).setVisibility(!ij.o.f62115a.i() ? 0 : 8);
            ((TextView) baseViewHolder.getView(R$id.tvLoginMyChannel)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    b0.G(userInfo, baseViewHolder, view);
                }
            });
        }
        baseViewHolder.getView(R$id.safeKidsGroup).setVisibility(0);
        MeItemInfo meItemInfo = new MeItemInfo(1, userInfo);
        o oVar = this.f54813e;
        if (oVar != null && (function1R2 = oVar.R1()) != null) {
            function1R2.invoke(meItemInfo);
        }
        baseViewHolder.getView(R$id.safeKidsGroup).setVisibility(0);
        MeItemInfo meItemInfo2 = new MeItemInfo(1, userInfo);
        o oVar2 = this.f54813e;
        if (oVar2 != null && (function1R1 = oVar2.R1()) != null) {
            function1R1.invoke(meItemInfo2);
        }
        ij.o oVar3 = ij.o.f62115a;
        if (oVar3.i()) {
            D(baseViewHolder, userInfo);
            return;
        }
        TextView textView = (TextView) baseViewHolder.getView(R$id.nameTv);
        textView.setText(userInfo.getNickname());
        textView.setCompoundDrawables(null, null, null, null);
        GradientBorderTagView gradientBorderTagView = (GradientBorderTagView) baseViewHolder.getView(R$id.safeKidsTv);
        gradientBorderTagView.setVisibility(oVar3.j() ? 0 : 8);
        String string = Utils.a().getResources().getString(R$string.user_safe_kids);
        Intrinsics.g(string, "getString(...)");
        gradientBorderTagView.setText(string);
        ((TextView) baseViewHolder.getView(R$id.idTv)).setText(Utils.a().getResources().getString(R$string.user_id_show, userInfo.getUsername()));
        TextView textView2 = (TextView) baseViewHolder.getView(R$id.genderTv);
        if (userInfo.getGender() == 0) {
            i10 = 0;
        } else {
            i10 = userInfo.getGender() == 1 ? R$mipmap.profile_man : R$mipmap.profile_female;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(i10, 0, 0, 0);
        if (userInfo.getAge() <= 0) {
            textView2.setText("");
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
            sm.e.f72346a.b(spannableStringBuilder);
            spannableStringBuilder.append((CharSequence) String.valueOf(userInfo.getAge()));
            textView2.setText(spannableStringBuilder);
        }
        if (userInfo.getGender() == 0 && userInfo.getAge() <= 0) {
            z10 = false;
        }
        textView2.setVisibility(z10 ? 0 : 8);
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.avatarIV);
        ni.f.a aVar = ni.f.f67269a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        aVar.m(context).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar).d(imageView);
    }

    public static final Unit F(UserInfo userInfo, b0 b0Var, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        MeItemInfo meItemInfo = new MeItemInfo(1, userInfo);
        if (ij.o.f62115a.j()) {
            AccountSwitchDialog.Companion.b(AccountSwitchDialog.INSTANCE, false, 1, null).X(b0Var.k(), "AccountSwitchDialog");
        } else {
            ProfileEditCenterActivity.INSTANCE.a(b0Var.k(), userInfo);
        }
        o oVar = b0Var.f54813e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    public static final void G(UserInfo userInfo, BaseViewHolder baseViewHolder, View view) {
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userInfo.getUserId()), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    private final void H(BaseViewHolder baseViewHolder, UserInfo userInfo) {
        baseViewHolder.getView(R$id.genderTv).setVisibility(8);
        baseViewHolder.getView(R$id.avatarIV).setVisibility(8);
        baseViewHolder.getView(R$id.safeKidsGroup).setVisibility(8);
        TextView textView = (TextView) baseViewHolder.getView(R$id.loginTv);
        textView.setVisibility(0);
        textView.setText(R$string.user_login);
        uf.c.c(textView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return b0.I(this.f54812a, (View) obj);
            }
        }, 1, null);
        baseViewHolder.itemView.setOnClickListener(null);
        TextView textView2 = (TextView) baseViewHolder.getView(R$id.nameTv);
        textView2.setText(R$string.user_login_title);
        textView2.setCompoundDrawables(null, null, null, null);
        ((TextView) baseViewHolder.getView(R$id.idTv)).setText(Utils.a().getResources().getString(R$string.user_id_show, userInfo != null ? userInfo.getUsername() : null));
        baseViewHolder.getView(R$id.tvLoginMyChannel).setVisibility(8);
    }

    public static final Unit I(b0 b0Var, View it) {
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.k.f54876a.b("login");
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        if (aVar != null) {
            aVar.k(b0Var.k());
        }
        return Unit.f64096a;
    }

    @Override
    public void b(BaseViewHolder helper, MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        UserInfo userInfo = data instanceof UserInfo ? (UserInfo) data : null;
        this.f54814f = userInfo;
        com.transsion.usercenter.me.k.f54876a.d(userInfo != null ? userInfo.getUserId() : null);
        if (!C() || ij.o.f62115a.i()) {
            E(helper, this.f54814f);
        } else {
            H(helper, this.f54814f);
        }
    }

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.mine_item_header_layout;
    }

    public b0(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public b0(o oVar) {
        this.f54813e = oVar;
    }
}
