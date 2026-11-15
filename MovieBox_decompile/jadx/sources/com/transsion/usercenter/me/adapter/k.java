package com.transsion.usercenter.me.adapter;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsion.usercenter.kids.CreateKidsProfileDialog;
import com.transsion.usercenter.kids.PinInputDialog;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import com.transsion.usercenter.profile.bean.IconItemInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.version.update.UpdateManager;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class k extends BaseItemProvider {

    private final o f54836e;

    private final Lazy f54837f;

    private final Lazy f54838g;

    private final Lazy f54839h;

    /* JADX WARN: Multi-variable type inference failed */
    public k() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static ep.d C() {
        H();
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:59:0x0129  */
    /* JADX WARN: Code duplicated, block: B:60:0x0137  */
    /* JADX WARN: Code duplicated, block: B:62:0x013d  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Unit E(IconItemInfo iconItemInfo, k kVar, BaseViewHolder baseViewHolder, MeItemInfo meItemInfo, View it) {
        String deepLink;
        Function1<MeItemInfo, Unit> function1Q1;
        Bundle bundle;
        qx.a aVarF;
        com.transsion.moviedetailapi.g gVarG;
        UserInfo userInfoI;
        qx.a aVarF2;
        Intrinsics.h(it, "it");
        if (iconItemInfo.getCheckLogin() && ((aVarF2 = kVar.F()) == null || !aVarF2.a())) {
            qx.a aVarF3 = kVar.F();
            if (aVarF3 != null) {
                aVarF3.k(kVar.k());
            }
            return Unit.f64096a;
        }
        String moduleName = iconItemInfo.getModuleName();
        if (moduleName != null) {
            com.transsion.usercenter.me.k.f54876a.b(moduleName);
        }
        String deepLink2 = iconItemInfo.getDeepLink();
        String userId = null;
        if (deepLink2 != null) {
            switch (deepLink2.hashCode()) {
                case -2037279396:
                    if (!deepLink2.equals("post_list_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ij.k.h(deepLink, null, 1, null);
                        }
                    } else if (ij.g.f62108a.b()) {
                        bundle = new Bundle();
                        bundle.putInt(EventConstants.KEY_SOURCE, !Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type") ? 1 : 0);
                        aVarF = kVar.F();
                        if (aVarF != null && (userInfoI = aVarF.i()) != null) {
                            userId = userInfoI.getUserId();
                        }
                        bundle.putString("userId", userId);
                        gVarG = kVar.G();
                        if (gVarG != null) {
                            gVarG.b(kVar.k(), bundle, ProfileSubjectListViewModel.class, iconItemInfo.getTitle());
                        }
                    } else if (Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type")) {
                        new Bundle();
                        Navigator.x(TheRouter.c("/ugc/likes"), baseViewHolder.itemView.getContext(), null, 2, null);
                    } else {
                        Navigator.x(TheRouter.c("/postdetail/favorite"), baseViewHolder.itemView.getContext(), null, 2, null);
                    }
                    break;
                case -1499034234:
                    if (!deepLink2.equals("subscribe_list_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ij.k.h(deepLink, null, 1, null);
                        }
                    } else {
                        Navigator.x(TheRouter.c("/subscription/my_subscription"), baseViewHolder.itemView.getContext(), null, 2, null);
                    }
                    break;
                case 1085848142:
                    if (!deepLink2.equals("parental_pin_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ij.k.h(deepLink, null, 1, null);
                        }
                    } else {
                        kVar.K();
                    }
                    break;
                case 1211088224:
                    if (!deepLink2.equals("study_mode_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ij.k.h(deepLink, null, 1, null);
                        }
                    } else {
                        String strE = KidsAccountManager.f42144a.e();
                        if (strE == null || strE.length() == 0) {
                            CreateKidsProfileDialog.Companion.b(CreateKidsProfileDialog.INSTANCE, false, false, false, 7, null).X(kVar.k(), "CreateKidsProfileDialog");
                        } else {
                            AccountSwitchDialog.Companion.b(AccountSwitchDialog.INSTANCE, false, 1, null).X(kVar.k(), "AccountSwitchDialog");
                        }
                    }
                    break;
                case 1897178003:
                    if (!deepLink2.equals("like_list_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ij.k.h(deepLink, null, 1, null);
                        }
                    } else if (ij.g.f62108a.b()) {
                        bundle = new Bundle();
                        bundle.putInt(EventConstants.KEY_SOURCE, !Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type") ? 1 : 0);
                        aVarF = kVar.F();
                        if (aVarF != null) {
                            userId = userInfoI.getUserId();
                        }
                        bundle.putString("userId", userId);
                        gVarG = kVar.G();
                        if (gVarG != null) {
                            gVarG.b(kVar.k(), bundle, ProfileSubjectListViewModel.class, iconItemInfo.getTitle());
                        }
                    } else if (Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type")) {
                        new Bundle();
                        Navigator.x(TheRouter.c("/ugc/likes"), baseViewHolder.itemView.getContext(), null, 2, null);
                    } else {
                        Navigator.x(TheRouter.c("/postdetail/favorite"), baseViewHolder.itemView.getContext(), null, 2, null);
                    }
                    break;
                default:
                    deepLink = iconItemInfo.getDeepLink();
                    if (deepLink != null) {
                        ij.k.h(deepLink, null, 1, null);
                    }
                    break;
            }
        } else {
            deepLink = iconItemInfo.getDeepLink();
            if (deepLink != null) {
                ij.k.h(deepLink, null, 1, null);
            }
        }
        o oVar = kVar.f54836e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    private final qx.a F() {
        return (qx.a) this.f54839h.getValue();
    }

    private final com.transsion.moviedetailapi.g G() {
        return (com.transsion.moviedetailapi.g) this.f54837f.getValue();
    }

    private static final ep.d H() {
        android.support.v4.media.session.c.a(TheRouter.d(ep.d.class, new Object[0]));
        return null;
    }

    public static final qx.a I() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final com.transsion.moviedetailapi.g J() {
        return (com.transsion.moviedetailapi.g) TheRouter.d(com.transsion.moviedetailapi.g.class, new Object[0]);
    }

    private final void K() {
        KidsAccountManager kidsAccountManager = KidsAccountManager.f42144a;
        final String strE = kidsAccountManager.e();
        if (strE == null) {
            strE = "";
        }
        if (kidsAccountManager.i()) {
            Navigator.x(TheRouter.c("/kids/pin_management").K("arg_kids_id", strE), null, null, 3, null);
        } else {
            PinInputDialog.Companion.b(PinInputDialog.INSTANCE, false, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return k.L(strE, (String) obj);
                }
            }, null, 5, null).X(k(), "PinInputDialog");
        }
    }

    public static final Unit L(String str, String pin) {
        Intrinsics.h(pin, "pin");
        KidsAccountManager.f42144a.p(pin);
        Navigator.x(TheRouter.c("/kids/pin_management").K("arg_kids_id", str), null, null, 3, null);
        return Unit.f64096a;
    }

    @Override
    public void b(final BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        final IconItemInfo iconItemInfo = data instanceof IconItemInfo ? (IconItemInfo) data : null;
        if (iconItemInfo == null) {
            return;
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return k.E(iconItemInfo, this, helper, item, (View) obj);
            }
        }, 1, null);
        ((TextView) helper.getView(R$id.titleTv)).setText(iconItemInfo.getTitle());
        ((TextView) helper.getView(R$id.desTv)).setText(iconItemInfo.getDes());
        helper.getView(R$id.divider).setVisibility(iconItemInfo.getDivider() ? 0 : 8);
        helper.getView(R$id.bgView).setBackgroundResource(iconItemInfo.getBgRes());
        ((ImageView) helper.getView(R$id.icIV)).setImageResource(iconItemInfo.getIconRes());
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = iconItemInfo.getTop();
        }
        if (!TextUtils.equals(iconItemInfo.getModuleName(), "setting")) {
            helper.getView(R$id.setting_tv_tips).setVisibility(8);
            helper.getView(R$id.image_red_tips).setVisibility(8);
            return;
        }
        View view = helper.getView(R$id.image_red_tips);
        View view2 = helper.getView(R$id.setting_tv_tips);
        boolean z10 = !ij.o.f62115a.j() && com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_is_family_mode_badge", true);
        boolean zG = UpdateManager.f55354f.a().g();
        view.setVisibility(z10 ? 0 : 8);
        view2.setVisibility(!z10 && zG ? 0 : 8);
    }

    @Override
    public int l() {
        return 5;
    }

    @Override
    public int m() {
        return R$layout.mine_item_icon_layout;
    }

    public k(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public k(o oVar) {
        this.f54836e = oVar;
        this.f54837f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return k.J();
            }
        });
        this.f54838g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                k.C();
                return null;
            }
        });
        this.f54839h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return k.I();
            }
        });
    }
}
