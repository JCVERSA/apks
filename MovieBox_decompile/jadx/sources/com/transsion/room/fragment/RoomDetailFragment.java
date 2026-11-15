package com.transsion.room.fragment;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.CheckInAnimationView;
import com.tn.lib.view.ToolBarCheckInAnimationView;
import com.tn.lib.view.expand.ExpandView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.publish.view.PublishStateView;
import com.transsion.room.R$drawable;
import com.transsion.room.R$string;
import com.transsion.room.activity.CreateRoomActivity;
import com.transsion.room.viewmodel.RoomDetailViewModel;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 o2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002>pB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0013\u0010\n\u001a\u00020\u0005*\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0014\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0018\u0010\u0004J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\u00052\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J)\u0010-\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u001d2\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\"H\u0016¢\u0006\u0004\b/\u0010$J\u0017\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0019H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004J\u000f\u00107\u001a\u00020\u0005H\u0016¢\u0006\u0004\b7\u0010\u0004J\u000f\u00108\u001a\u00020\u0005H\u0016¢\u0006\u0004\b8\u0010\u0004J\u000f\u00109\u001a\u00020\u0005H\u0016¢\u0006\u0004\b9\u0010\u0004J\u000f\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0004R\u0016\u0010@\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010C\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u001e\u0010G\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u001e\u0010I\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u0018\u0010L\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010BR\u001b\u0010[\u001a\u00020V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u0016\u0010_\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u001d\u0010d\u001a\u0004\u0018\u00010`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010X\u001a\u0004\bb\u0010cR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010j\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010?R\u0016\u0010l\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010BR\u0016\u0010n\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010B¨\u0006q"}, d2 = {"Lcom/transsion/room/fragment/RoomDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lfp/n;", "<init>", "()V", "", "D0", "N0", "H0", "Lcom/tn/lib/view/CheckInAnimationView;", "B0", "(Lcom/tn/lib/view/CheckInAnimationView;)V", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "roomItem", "c1", "(Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "Landroid/view/View;", "tvCheckIn", "Landroid/widget/TextView;", "tvEdit", "X0", "(Landroid/view/View;Landroid/widget/TextView;)V", "C0", "V0", "b1", "", "coverUrl", "Z0", "(Ljava/lang/String;)V", "", RequestParameters.POSITION, "F0", "(I)Ljava/lang/String;", "U0", "", "checkLogin", "()Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "isAudioShowNoNetworkLayout", "Landroid/view/LayoutInflater;", "inflater", "G0", "(Landroid/view/LayoutInflater;)Lfp/n;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "loadDefaultData", "a", "I", "mTabSelectIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isNeedShowLoginActivity", "Landroidx/activity/result/b;", "c", "Landroidx/activity/result/b;", "loginLaunch", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "updateInfoLaunch", "e", "Ljava/lang/String;", "mGroupId", "f", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "mRoomDetailItem", "Lcom/transsion/share/share/ShareDialogFragment;", "g", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "h", "netResultSuccess", "Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "i", "Lkotlin/Lazy;", "E0", "()Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "roomDetailViewModel", "Lcb/n;", "j", "Lcb/n;", "shapeModel", "Lqx/a;", CampaignEx.JSON_KEY_AD_K, "getLoginApi", "()Lqx/a;", "loginApi", "Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;", "l", "Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;", "state", "m", "sz", "n", "dealWith80", "o", "dealWithElse", TtmlNode.TAG_P, "CollapsingToolbarLayoutState", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class RoomDetailFragment extends PageStatusFragment<fp.n> {

    private int mTabSelectIndex;

    private boolean isNeedShowLoginActivity;

    private androidx.activity.result.b loginLaunch;

    private androidx.activity.result.b updateInfoLaunch;

    private String mGroupId;

    private RoomItem mRoomDetailItem;

    private ShareDialogFragment mShareDialog;

    private boolean netResultSuccess;

    private final Lazy roomDetailViewModel;

    private cb.n shapeModel;

    private final Lazy loginApi;

    private CollapsingToolbarLayoutState state;

    private final int sz;

    private boolean dealWith80;

    private boolean dealWithElse;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;", "", "<init>", "(Ljava/lang/String;I)V", "EXPANDED", "COLLAPSED", "INTERNEDIATE", "TOOLBAR", "APPBAR", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum CollapsingToolbarLayoutState {
        EXPANDED,
        COLLAPSED,
        INTERNEDIATE,
        TOOLBAR,
        APPBAR;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<CollapsingToolbarLayoutState> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            TextView textView = (TextView) (tab != null ? tab.getCustomView() : null);
            if (textView != null) {
                textView.setTypeface(Typeface.defaultFromStyle(1));
            }
            if (RoomDetailFragment.this.isVisible()) {
                HashMap map = new HashMap();
                String str = RoomDetailFragment.this.mGroupId;
                if (str == null) {
                    str = "";
                }
                map.put("group_id", str);
                map.put("page_tab_name", RoomDetailFragment.this.F0(tab != null ? tab.getPosition() : 0));
                com.transsion.baselib.helper.a.f42121a.l("groupdetail", map);
            }
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
            TextView textView = (TextView) (tab != null ? tab.getCustomView() : null);
            if (textView != null) {
                textView.setTypeface(Typeface.defaultFromStyle(0));
            }
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            RoomDetailFragment.this.mTabSelectIndex = i10;
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f49413a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49413a = function;
        }

        @Override
        public final Function a() {
            return this.f49413a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f49413a.invoke(obj);
        }
    }

    public static final class e implements com.transsion.share.share.a {
        e() {
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void b(String str) {
            com.transsion.share.share.a.C0627a.b(this, str);
        }

        @Override
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override
        public void d(String id2) {
            String str;
            Intrinsics.h(id2, "id");
            if (com.transsion.baseui.util.c.f42332a.a(2, 2000L) || (str = RoomDetailFragment.this.mGroupId) == null) {
                return;
            }
            RoomDetailFragment.this.E0().x(str);
        }

        @Override
        public void e(String str) {
            com.transsion.share.share.a.C0627a.c(this, str);
        }
    }

    public RoomDetailFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.roomDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(RoomDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
            {
                super(0);
            }

            @Override
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        cb.n nVarM = cb.n.a().q(0, 20.0f).p(cb.n.f16848m).m();
        Intrinsics.g(nVarM, "build(...)");
        this.shapeModel = nVarM;
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomDetailFragment.T0();
            }
        });
        this.sz = com.blankj.utilcode.util.a0.a(20.0f);
    }

    private final void B0(CheckInAnimationView checkInAnimationView) {
        String str;
        int currentState = checkInAnimationView.getCurrentState();
        if (currentState == 2 || currentState == 4) {
            return;
        }
        if (currentState == 1) {
            checkInAnimationView.upDateState(2);
            C0();
        } else {
            if (currentState != 3) {
                return;
            }
            checkInAnimationView.upDateState(4);
            if (com.transsion.baseui.util.c.f42332a.a(2, 2000L) || (str = this.mGroupId) == null) {
                return;
            }
            E0().x(str);
        }
    }

    private final void C0() {
        RoomItem roomItem;
        String groupId;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        if (!checkLogin() || com.transsion.baseui.util.c.f42332a.a(1, 2000L) || (roomItem = this.mRoomDetailItem) == null || (groupId = roomItem.getGroupId()) == null) {
            return;
        }
        E0().w(groupId);
        fp.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (checkInAnimationView = mViewBinding.f60389t) != null) {
            checkInAnimationView.upDateState(2);
        }
        fp.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (toolBarCheckInAnimationView = mViewBinding2.f60387r) != null) {
            toolBarCheckInAnimationView.upDateState(2);
        }
        D0();
        com.transsion.baselib.helper.a.f42121a.h("groupdetail", "checkin", (60 & 4) != 0 ? "" : this.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void D0() {
        String str = this.mGroupId;
        if (str != null) {
            E0().p(str);
        }
    }

    public final RoomDetailViewModel E0() {
        return (RoomDetailViewModel) this.roomDetailViewModel.getValue();
    }

    public final String F0(int position) {
        String string = getString(position == 0 ? R$string.hot : R$string.s_new);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    private final void H0() {
        AppBarLayout appBarLayout;
        PublishStateView publishStateView;
        AppCompatImageView appCompatImageView;
        fp.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f60375f) != null) {
            appCompatImageView.setImageResource(R$mipmap.icon_white_back);
        }
        fp.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (publishStateView = mViewBinding2.f60377h) != null) {
            publishStateView.setImageResource(R$mipmap.libui_ic_base_whit_publish);
        }
        fp.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (appBarLayout = mViewBinding3.f60371b) == null) {
            return;
        }
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() {
            @Override
            public final void onOffsetChanged(AppBarLayout appBarLayout2, int i10) {
                RoomDetailFragment.I0(this.f49549a, appBarLayout2, i10);
            }
        });
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void I0(RoomDetailFragment roomDetailFragment, AppBarLayout appBarLayout, int i10) {
        AppCompatTextView appCompatTextView;
        TextView textView;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        ShapeableImageView shapeableImageView;
        PublishStateView publishStateView;
        PublishStateView publishStateView2;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        Toolbar toolbar;
        Toolbar toolbar2;
        Toolbar toolbar3;
        Toolbar toolbar4;
        ViewGroup.LayoutParams layoutParams;
        PublishStateView publishStateView3;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        PublishStateView publishStateView4;
        AppCompatTextView appCompatTextView2;
        ShapeableImageView shapeableImageView2;
        PublishStateView publishStateView5;
        AppCompatImageView appCompatImageView5;
        AppCompatImageView appCompatImageView6;
        Toolbar toolbar5;
        Toolbar toolbar6;
        Toolbar toolbar7;
        Toolbar toolbar8;
        ViewGroup.LayoutParams layoutParams2;
        if (i10 == 0) {
            roomDetailFragment.state = CollapsingToolbarLayoutState.EXPANDED;
            return;
        }
        if (Math.abs(i10) >= appBarLayout.getTotalScrollRange()) {
            roomDetailFragment.state = CollapsingToolbarLayoutState.COLLAPSED;
            return;
        }
        roomDetailFragment.state = CollapsingToolbarLayoutState.INTERNEDIATE;
        if (Math.abs(i10) <= com.blankj.utilcode.util.a0.a(80.0f)) {
            if (roomDetailFragment.dealWithElse) {
                return;
            }
            roomDetailFragment.dealWithElse = true;
            roomDetailFragment.dealWith80 = false;
            roomDetailFragment.state = CollapsingToolbarLayoutState.APPBAR;
            fp.n mViewBinding = roomDetailFragment.getMViewBinding();
            if (mViewBinding != null && (toolbar4 = mViewBinding.f60384o) != null && (layoutParams = toolbar4.getLayoutParams()) != null) {
                layoutParams.height = com.blankj.utilcode.util.a0.a(44.0f);
            }
            fp.n mViewBinding2 = roomDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (toolbar3 = mViewBinding2.f60384o) != null) {
                toolbar3.setPadding(0, 0, 0, 0);
            }
            fp.n mViewBinding3 = roomDetailFragment.getMViewBinding();
            ViewGroup.LayoutParams layoutParams3 = (mViewBinding3 == null || (toolbar2 = mViewBinding3.f60384o) == null) ? null : toolbar2.getLayoutParams();
            if (layoutParams3 instanceof CollapsingToolbarLayout.c) {
                ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams3)).topMargin = com.blankj.utilcode.util.d.c();
            }
            fp.n mViewBinding4 = roomDetailFragment.getMViewBinding();
            if (mViewBinding4 != null && (toolbar = mViewBinding4.f60384o) != null) {
                toolbar.setBackgroundResource(R$color.transparent);
            }
            fp.n mViewBinding5 = roomDetailFragment.getMViewBinding();
            if (mViewBinding5 != null && (appCompatImageView2 = mViewBinding5.f60375f) != null) {
                appCompatImageView2.setImageResource(R$mipmap.icon_white_back);
            }
            fp.n mViewBinding6 = roomDetailFragment.getMViewBinding();
            if (mViewBinding6 != null && (appCompatImageView = mViewBinding6.f60380k) != null) {
                appCompatImageView.setImageResource(R$mipmap.libui_ic_base_whit_share);
            }
            fp.n mViewBinding7 = roomDetailFragment.getMViewBinding();
            if (mViewBinding7 != null && (publishStateView2 = mViewBinding7.f60377h) != null) {
                publishStateView2.setImageResource(R$mipmap.libui_ic_base_whit_publish);
            }
            fp.n mViewBinding8 = roomDetailFragment.getMViewBinding();
            if (mViewBinding8 != null && (publishStateView = mViewBinding8.f60377h) != null) {
                publishStateView.setProgressColor(Color.parseColor("#FF5ABF"));
            }
            fp.n mViewBinding9 = roomDetailFragment.getMViewBinding();
            CheckInAnimationView checkInAnimationView = mViewBinding9 != null ? mViewBinding9.f60389t : null;
            fp.n mViewBinding10 = roomDetailFragment.getMViewBinding();
            roomDetailFragment.X0(checkInAnimationView, mViewBinding10 != null ? mViewBinding10.f60390u : null);
            fp.n mViewBinding11 = roomDetailFragment.getMViewBinding();
            if (mViewBinding11 != null && (shapeableImageView = mViewBinding11.f60376g) != null) {
                uf.c.g(shapeableImageView);
            }
            fp.n mViewBinding12 = roomDetailFragment.getMViewBinding();
            if (mViewBinding12 != null && (toolBarCheckInAnimationView = mViewBinding12.f60387r) != null) {
                uf.c.g(toolBarCheckInAnimationView);
            }
            fp.n mViewBinding13 = roomDetailFragment.getMViewBinding();
            if (mViewBinding13 != null && (textView = mViewBinding13.f60388s) != null) {
                uf.c.g(textView);
            }
            fp.n mViewBinding14 = roomDetailFragment.getMViewBinding();
            if (mViewBinding14 == null || (appCompatTextView = mViewBinding14.f60394y) == null) {
                return;
            }
            uf.c.g(appCompatTextView);
            return;
        }
        if (roomDetailFragment.dealWith80) {
            return;
        }
        roomDetailFragment.dealWith80 = true;
        roomDetailFragment.dealWithElse = false;
        roomDetailFragment.state = CollapsingToolbarLayoutState.TOOLBAR;
        fp.n mViewBinding15 = roomDetailFragment.getMViewBinding();
        if (mViewBinding15 != null && (toolbar8 = mViewBinding15.f60384o) != null && (layoutParams2 = toolbar8.getLayoutParams()) != null) {
            layoutParams2.height = com.blankj.utilcode.util.a0.a(44.0f) + com.blankj.utilcode.util.d.c();
        }
        fp.n mViewBinding16 = roomDetailFragment.getMViewBinding();
        if (mViewBinding16 != null && (toolbar7 = mViewBinding16.f60384o) != null) {
            toolbar7.setPadding(0, com.blankj.utilcode.util.d.c(), 0, 0);
        }
        fp.n mViewBinding17 = roomDetailFragment.getMViewBinding();
        ViewGroup.LayoutParams layoutParams4 = (mViewBinding17 == null || (toolbar6 = mViewBinding17.f60384o) == null) ? null : toolbar6.getLayoutParams();
        if (layoutParams4 instanceof CollapsingToolbarLayout.c) {
            ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams4)).topMargin = 0;
        }
        fp.n mViewBinding18 = roomDetailFragment.getMViewBinding();
        if (mViewBinding18 != null && (toolbar5 = mViewBinding18.f60384o) != null) {
            toolbar5.setBackgroundResource(R$color.bg_01);
        }
        if (ij.y.f62128a.a()) {
            fp.n mViewBinding19 = roomDetailFragment.getMViewBinding();
            if (mViewBinding19 != null && (appCompatImageView6 = mViewBinding19.f60375f) != null) {
                appCompatImageView6.setImageResource(R$mipmap.icon_white_back);
            }
            fp.n mViewBinding20 = roomDetailFragment.getMViewBinding();
            if (mViewBinding20 != null && (appCompatImageView5 = mViewBinding20.f60380k) != null) {
                appCompatImageView5.setImageResource(R$mipmap.libui_ic_base_whit_share);
            }
            fp.n mViewBinding21 = roomDetailFragment.getMViewBinding();
            if (mViewBinding21 != null && (publishStateView5 = mViewBinding21.f60377h) != null) {
                publishStateView5.setImageResource(R$mipmap.libui_ic_base_whit_publish);
            }
        } else {
            fp.n mViewBinding22 = roomDetailFragment.getMViewBinding();
            if (mViewBinding22 != null && (appCompatImageView4 = mViewBinding22.f60375f) != null) {
                appCompatImageView4.setImageResource(R$mipmap.libui_ic_base_black_left);
            }
            fp.n mViewBinding23 = roomDetailFragment.getMViewBinding();
            if (mViewBinding23 != null && (appCompatImageView3 = mViewBinding23.f60380k) != null) {
                appCompatImageView3.setImageResource(R$mipmap.libui_ic_base_black_share);
            }
            fp.n mViewBinding24 = roomDetailFragment.getMViewBinding();
            if (mViewBinding24 != null && (publishStateView3 = mViewBinding24.f60377h) != null) {
                publishStateView3.setImageResource(R$mipmap.libui_ic_base_black_publish);
            }
        }
        fp.n mViewBinding25 = roomDetailFragment.getMViewBinding();
        if (mViewBinding25 != null && (shapeableImageView2 = mViewBinding25.f60376g) != null) {
            uf.c.k(shapeableImageView2);
        }
        fp.n mViewBinding26 = roomDetailFragment.getMViewBinding();
        ToolBarCheckInAnimationView toolBarCheckInAnimationView2 = mViewBinding26 != null ? mViewBinding26.f60387r : null;
        fp.n mViewBinding27 = roomDetailFragment.getMViewBinding();
        roomDetailFragment.X0(toolBarCheckInAnimationView2, mViewBinding27 != null ? mViewBinding27.f60388s : null);
        fp.n mViewBinding28 = roomDetailFragment.getMViewBinding();
        if (mViewBinding28 != null && (appCompatTextView2 = mViewBinding28.f60394y) != null) {
            RoomItem roomItem = roomDetailFragment.mRoomDetailItem;
            appCompatTextView2.setText(roomItem != null ? roomItem.getName() : null);
            uf.c.k(appCompatTextView2);
        }
        fp.n mViewBinding29 = roomDetailFragment.getMViewBinding();
        if (mViewBinding29 == null || (publishStateView4 = mViewBinding29.f60377h) == null) {
            return;
        }
        publishStateView4.setProgressColor(Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT));
    }

    public static final void J0(RoomDetailFragment roomDetailFragment, CheckInAnimationView checkInAnimationView, View view) {
        roomDetailFragment.B0(checkInAnimationView);
    }

    public static final void K0(RoomDetailFragment roomDetailFragment, ToolBarCheckInAnimationView toolBarCheckInAnimationView, View view) {
        roomDetailFragment.B0(toolBarCheckInAnimationView);
    }

    public static final void L0(RoomDetailFragment roomDetailFragment, ActivityResult it) {
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            roomDetailFragment.C0();
            return;
        }
        fp.n mViewBinding = roomDetailFragment.getMViewBinding();
        if (mViewBinding != null && (checkInAnimationView = mViewBinding.f60389t) != null) {
            checkInAnimationView.upDateState(1);
        }
        fp.n mViewBinding2 = roomDetailFragment.getMViewBinding();
        if (mViewBinding2 == null || (toolBarCheckInAnimationView = mViewBinding2.f60387r) == null) {
            return;
        }
        toolBarCheckInAnimationView.upDateState(1);
    }

    public static final void M0(RoomDetailFragment roomDetailFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            roomDetailFragment.D0();
        }
    }

    private final void N0() {
        fp.n mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            TabLayoutMediator tabLayoutMediator = new TabLayoutMediator(mViewBinding.f60381l.f60317d, mViewBinding.f60395z, new TabLayoutMediator.TabConfigurationStrategy() {
                @Override
                public final void onConfigureTab(TabLayout.Tab tab, int i10) {
                    RoomDetailFragment.O0(this.f49581a, tab, i10);
                }
            });
            mViewBinding.f60381l.f60317d.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
            if (mViewBinding.f60395z.getAdapter() != null) {
                tabLayoutMediator.attach();
            }
        }
    }

    public static final void O0(RoomDetailFragment roomDetailFragment, TabLayout.Tab tab, int i10) {
        Intrinsics.h(tab, "tab");
        TextView textView = new TextView(roomDetailFragment.requireContext());
        String[] strArr = {roomDetailFragment.getString(R$string.hot), roomDetailFragment.getString(R$string.s_new)};
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{androidx.core.content.b.getColor(roomDetailFragment.requireContext(), R$color.text_01), androidx.core.content.b.getColor(roomDetailFragment.requireContext(), R$color.text_02)});
        textView.setText(strArr[i10]);
        textView.setGravity(17);
        textView.setTextSize(14.0f);
        textView.setTextColor(colorStateList);
        tab.setCustomView(textView);
    }

    public static final void P0(RoomDetailFragment roomDetailFragment, View view) {
        FragmentActivity activity = roomDetailFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final Unit Q0(RoomDetailFragment roomDetailFragment, RoomItem roomItem) {
        roomDetailFragment.showContentView();
        if (roomItem == null) {
            PageStatusFragment.showEmptyView$default(roomDetailFragment, false, 1, null);
        } else {
            roomDetailFragment.c1(roomItem);
            roomDetailFragment.netResultSuccess = true;
        }
        return Unit.f64096a;
    }

    public static final Unit R0(RoomDetailFragment roomDetailFragment, RoomNet roomNet) {
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        CheckInAnimationView checkInAnimationView2;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView2;
        CheckInAnimationView checkInAnimationView3;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView3;
        if (roomNet == null) {
            if (roomDetailFragment.state == CollapsingToolbarLayoutState.INTERNEDIATE) {
                fp.n mViewBinding = roomDetailFragment.getMViewBinding();
                if (mViewBinding != null && (toolBarCheckInAnimationView3 = mViewBinding.f60387r) != null) {
                    toolBarCheckInAnimationView3.setVisibility(0);
                }
            } else {
                fp.n mViewBinding2 = roomDetailFragment.getMViewBinding();
                if (mViewBinding2 != null && (checkInAnimationView2 = mViewBinding2.f60389t) != null) {
                    checkInAnimationView2.setVisibility(0);
                }
            }
            fp.n mViewBinding3 = roomDetailFragment.getMViewBinding();
            if (mViewBinding3 != null && (checkInAnimationView3 = mViewBinding3.f60389t) != null) {
                checkInAnimationView3.upDateState(1);
            }
            fp.n mViewBinding4 = roomDetailFragment.getMViewBinding();
            if (mViewBinding4 != null && (toolBarCheckInAnimationView2 = mViewBinding4.f60387r) != null) {
                toolBarCheckInAnimationView2.upDateState(1);
            }
        } else {
            RoomItem roomItem = roomDetailFragment.mRoomDetailItem;
            if (roomItem != null) {
                roomItem.setHasJoin(Boolean.TRUE);
            }
            fp.n mViewBinding5 = roomDetailFragment.getMViewBinding();
            if (mViewBinding5 != null && (checkInAnimationView = mViewBinding5.f60389t) != null) {
                checkInAnimationView.upDateState(3);
            }
            fp.n mViewBinding6 = roomDetailFragment.getMViewBinding();
            if (mViewBinding6 != null && (toolBarCheckInAnimationView = mViewBinding6.f60387r) != null) {
                toolBarCheckInAnimationView.upDateState(3);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit S0(RoomDetailFragment roomDetailFragment, RoomNet roomNet) {
        if (roomNet != null) {
            roomDetailFragment.D0();
        }
        return Unit.f64096a;
    }

    public static final qx.a T0() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void U0() {
        fp.n mViewBinding;
        PublishStateView publishStateView;
        RoomItem roomItem = this.mRoomDetailItem;
        if (roomItem == null || (mViewBinding = getMViewBinding()) == null || (publishStateView = mViewBinding.f60377h) == null) {
            return;
        }
        String str = this.mGroupId;
        String str2 = str == null ? "" : str;
        String avatar = roomItem.getAvatar();
        String str3 = avatar == null ? "" : avatar;
        String name = roomItem.getName();
        publishStateView.publishSource(4, (30 & 2) != 0 ? "" : null, (30 & 4) != 0 ? "" : null, (30 & 8) != 0 ? "" : null, (30 & 16) != 0 ? "" : null, (30 & 32) != 0 ? "" : str2, (30 & 64) != 0 ? "" : name == null ? "" : name, (30 & 128) == 0 ? str3 : "", (30 & 256) != 0 ? false : false);
    }

    private final void V0() {
        AppCompatImageView appCompatImageView;
        fp.n mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f60380k) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RoomDetailFragment.W0(this.f49544a, view);
            }
        });
    }

    public static final void W0(RoomDetailFragment roomDetailFragment, View view) {
        ShareDialogFragment shareDialogFragment;
        ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
        PostType postType = PostType.GROUP_TYPE;
        String str = roomDetailFragment.mGroupId;
        RoomItem roomItem = roomDetailFragment.mRoomDetailItem;
        String creatorId = roomItem != null ? roomItem.getCreatorId() : null;
        String value = ReportType.GROUP.getValue();
        RoomItem roomItem2 = roomDetailFragment.mRoomDetailItem;
        ShareDialogFragment shareDialogFragmentA = companion.a(postType, str, creatorId, value, (3328 & 16) != 0 ? "" : roomItem2 != null ? roomItem2.getName() : null, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "groupdetail", (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : null);
        roomDetailFragment.mShareDialog = shareDialogFragmentA;
        if (shareDialogFragmentA != null) {
            shareDialogFragmentA.G0(roomDetailFragment.new e());
        }
        FragmentManager childFragmentManager = roomDetailFragment.getChildFragmentManager();
        childFragmentManager.g0();
        ShareDialogFragment shareDialogFragment2 = roomDetailFragment.mShareDialog;
        if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = roomDetailFragment.mShareDialog) != null) {
            shareDialogFragment.show(childFragmentManager, "share");
        }
        com.transsion.baselib.helper.a.f42121a.h("groupdetail", "share", (60 & 4) != 0 ? "" : roomDetailFragment.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void X0(View tvCheckIn, TextView tvEdit) {
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView2;
        CheckInAnimationView checkInAnimationView2;
        UserInfo userInfoI;
        RoomItem roomItem = this.mRoomDetailItem;
        if (!TextUtils.isEmpty(roomItem != null ? roomItem.getCreatorId() : null)) {
            qx.a loginApi = getLoginApi();
            String userId = (loginApi == null || (userInfoI = loginApi.i()) == null) ? null : userInfoI.getUserId();
            RoomItem roomItem2 = this.mRoomDetailItem;
            if (TextUtils.equals(userId, roomItem2 != null ? roomItem2.getCreatorId() : null)) {
                if (tvCheckIn != null) {
                    uf.c.g(tvCheckIn);
                }
                if (tvEdit != null) {
                    uf.c.k(tvEdit);
                }
                if (tvEdit != null) {
                    tvEdit.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            RoomDetailFragment.Y0(this.f49547a, view);
                        }
                    });
                    return;
                }
                return;
            }
        }
        if (tvCheckIn != null) {
            uf.c.k(tvCheckIn);
        }
        if (tvEdit != null) {
            uf.c.g(tvEdit);
        }
        RoomItem roomItem3 = this.mRoomDetailItem;
        if (roomItem3 != null ? Intrinsics.c(roomItem3.getHasJoin(), Boolean.TRUE) : false) {
            fp.n mViewBinding = getMViewBinding();
            if (mViewBinding != null && (checkInAnimationView2 = mViewBinding.f60389t) != null) {
                checkInAnimationView2.upDateState(3);
            }
            fp.n mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (toolBarCheckInAnimationView2 = mViewBinding2.f60387r) == null) {
                return;
            }
            toolBarCheckInAnimationView2.upDateState(3);
            return;
        }
        fp.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (checkInAnimationView = mViewBinding3.f60389t) != null) {
            checkInAnimationView.upDateState(1);
        }
        fp.n mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (toolBarCheckInAnimationView = mViewBinding4.f60387r) == null) {
            return;
        }
        toolBarCheckInAnimationView.upDateState(1);
    }

    public static final void Y0(RoomDetailFragment roomDetailFragment, View view) {
        Intent intent = new Intent(roomDetailFragment.requireActivity(), (Class<?>) CreateRoomActivity.class);
        intent.putExtra("field_key", roomDetailFragment.mRoomDetailItem);
        intent.putExtra("field_type", "type_edit");
        androidx.activity.result.b bVar = roomDetailFragment.updateInfoLaunch;
        if (bVar != null) {
            bVar.a(intent);
        }
        com.transsion.baselib.helper.a.f42121a.h("groupdetail", "edit_room", (60 & 4) != 0 ? "" : roomDetailFragment.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void Z0(String coverUrl) {
        ExpandView expandView;
        ShapeableImageView shapeableImageView;
        ViewGroup.LayoutParams layoutParams;
        fp.n mViewBinding = getMViewBinding();
        Integer numValueOf = (mViewBinding == null || (shapeableImageView = mViewBinding.f60379j) == null || (layoutParams = shapeableImageView.getLayoutParams()) == null) ? null : Integer.valueOf(layoutParams.width);
        ni.f.a aVar = ni.f.f67269a;
        String strE = ni.f.a.e(aVar, coverUrl, numValueOf != null ? numValueOf.intValue() : 0, false, false, 12, null);
        fp.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ni.f.b bVarG = aVar.m(contextRequireContext).g(coverUrl);
            ShapeableImageView ivRoomCover = mViewBinding2.f60379j;
            Intrinsics.g(ivRoomCover, "ivRoomCover");
            bVarG.d(ivRoomCover);
            Context contextRequireContext2 = requireContext();
            Intrinsics.g(contextRequireContext2, "requireContext(...)");
            ni.f.b bVarG2 = aVar.m(contextRequireContext2).g(coverUrl);
            ShapeableImageView ivCoverSmall = mViewBinding2.f60376g;
            Intrinsics.g(ivCoverSmall, "ivCoverSmall");
            bVarG2.d(ivCoverSmall);
        }
        Glide.with(requireContext()).asBitmap().load2(strE).into(new CustomTarget() {
            @Override
            public void onLoadCleared(Drawable drawable) {
            }

            @Override
            public void onResourceReady(Bitmap resource, Transition transition) {
                Intrinsics.h(resource, "resource");
                wf.a.C0922a.f(wf.a.f74274a, "RoomDetailFragment", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, false, 4, null);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f49415a), kotlinx.coroutines.y0.c(), null, new RoomDetailFragment$showCover$2$onResourceReady$1(resource, this.f49415a, null), 2, null);
            }
        });
        fp.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (expandView = mViewBinding3.f60392w) == null) {
            return;
        }
        expandView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                RoomDetailFragment.a1(this.f49552a, view, i10, i11, i12, i13, i14, i15, i16, i17);
            }
        });
    }

    public static final void a1(RoomDetailFragment roomDetailFragment, View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        fp.n mViewBinding = roomDetailFragment.getMViewBinding();
        if (mViewBinding != null) {
            ViewGroup.LayoutParams layoutParams = mViewBinding.f60372c.getLayoutParams();
            int i18 = i13 - i11;
            int i19 = i17 - i15;
            if (layoutParams != null) {
                layoutParams.height += i18 - i19;
            }
            mViewBinding.f60372c.setLayoutParams(layoutParams);
        }
    }

    private final void b1() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        Long postCount;
        PileLayout pileLayout;
        List<String> memberAvatars;
        List<String> memberAvatars2;
        PileLayout pileLayout2;
        fp.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (pileLayout2 = mViewBinding.f60382m) != null) {
            pileLayout2.removeAllViews();
        }
        RoomItem roomItem = this.mRoomDetailItem;
        int size = (roomItem == null || (memberAvatars2 = roomItem.getMemberAvatars()) == null) ? 0 : memberAvatars2.size();
        for (int i10 = 0; i10 < size; i10++) {
            RoomItem roomItem2 = this.mRoomDetailItem;
            String str = (roomItem2 == null || (memberAvatars = roomItem2.getMemberAvatars()) == null) ? null : memberAvatars.get(i10);
            ShapeableImageView shapeableImageView = new ShapeableImageView(getContext());
            shapeableImageView.setShapeAppearanceModel(this.shapeModel);
            if (str != null) {
                ni.f.a aVar = ni.f.f67269a;
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                aVar.m(contextRequireContext).g(str).i(R$drawable.ic_avatar_default).m(this.sz).c(this.sz).d(shapeableImageView);
            }
            fp.n mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (pileLayout = mViewBinding2.f60382m) != null) {
                int i11 = this.sz;
                pileLayout.addView(shapeableImageView, i11, i11);
            }
        }
        RoomItem roomItem3 = this.mRoomDetailItem;
        long jLongValue = (roomItem3 == null || (postCount = roomItem3.getPostCount()) == null) ? 0L : postCount.longValue();
        if (jLongValue > 0) {
            fp.n mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (appCompatTextView2 = mViewBinding3.f60391v) != null) {
                uf.c.k(appCompatTextView2);
            }
            fp.n mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (appCompatTextView = mViewBinding4.f60391v) == null) {
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String string = getString(R$string.member_count_check_in);
            Intrinsics.g(string, "getString(...)");
            String str2 = String.format(string, Arrays.copyOf(new Object[]{Long.valueOf(jLongValue)}, 1));
            Intrinsics.g(str2, "format(...)");
            appCompatTextView.setText(str2);
        }
    }

    private final void c1(RoomItem roomItem) {
        HashMap mapG;
        String avatar;
        ExpandView expandView;
        AppCompatTextView appCompatTextView;
        this.mRoomDetailItem = roomItem;
        if (TextUtils.equals(roomItem.getLevel(), "LIMIT") && com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("adult_restricted", true)) {
            new AdultRestrictedDialogFragment().show(requireActivity().getSupportFragmentManager(), "AdultRestrictedDialogFragment");
        }
        fp.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f60393x) != null) {
            appCompatTextView.setText(roomItem.getName());
        }
        fp.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (expandView = mViewBinding2.f60392w) != null) {
            RoomItem roomItem2 = this.mRoomDetailItem;
            expandView.m(roomItem2 != null ? roomItem2.getDescription() : null);
        }
        CollapsingToolbarLayoutState collapsingToolbarLayoutState = this.state;
        if (collapsingToolbarLayoutState == CollapsingToolbarLayoutState.INTERNEDIATE || collapsingToolbarLayoutState == CollapsingToolbarLayoutState.COLLAPSED) {
            fp.n mViewBinding3 = getMViewBinding();
            ToolBarCheckInAnimationView toolBarCheckInAnimationView = mViewBinding3 != null ? mViewBinding3.f60387r : null;
            fp.n mViewBinding4 = getMViewBinding();
            X0(toolBarCheckInAnimationView, mViewBinding4 != null ? mViewBinding4.f60388s : null);
        } else {
            fp.n mViewBinding5 = getMViewBinding();
            CheckInAnimationView checkInAnimationView = mViewBinding5 != null ? mViewBinding5.f60389t : null;
            fp.n mViewBinding6 = getMViewBinding();
            X0(checkInAnimationView, mViewBinding6 != null ? mViewBinding6.f60390u : null);
        }
        b1();
        RoomItem roomItem3 = this.mRoomDetailItem;
        if (roomItem3 != null && (avatar = roomItem3.getAvatar()) != null) {
            Z0(avatar);
        }
        N0();
        E0().v(roomItem);
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            RoomItem roomItem4 = this.mRoomDetailItem;
            mapG.put("group_id", roomItem4 != null ? roomItem4.getGroupId() : null);
        }
        V0();
        U0();
    }

    private final boolean checkLogin() {
        Intent intentP;
        androidx.activity.result.b bVar;
        qx.a loginApi = getLoginApi();
        if (loginApi == null || loginApi.a()) {
            return true;
        }
        if (this.loginLaunch == null) {
            this.isNeedShowLoginActivity = true;
        }
        Context context = getContext();
        if (context == null || (intentP = loginApi.p(context)) == null || (bVar = this.loginLaunch) == null) {
            return false;
        }
        bVar.a(intentP);
        return false;
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    @Override
    public fp.n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fp.n nVarC = fp.n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        final ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        final CheckInAnimationView checkInAnimationView;
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                RoomDetailFragment.L0(this.f49554a, (ActivityResult) obj);
            }
        });
        this.updateInfoLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                RoomDetailFragment.M0(this.f49557a, (ActivityResult) obj);
            }
        });
        fp.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (checkInAnimationView = mViewBinding.f60389t) != null) {
            checkInAnimationView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomDetailFragment.J0(this.f49560a, checkInAnimationView, view);
                }
            });
        }
        fp.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (toolBarCheckInAnimationView = mViewBinding2.f60387r) != null) {
            toolBarCheckInAnimationView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomDetailFragment.K0(this.f49564a, toolBarCheckInAnimationView, view);
                }
            });
        }
        U0();
        V0();
    }

    @Override
    public void initViewData() {
        AppCompatImageView appCompatImageView;
        Toolbar toolbar;
        pageStateFitStatusBar();
        fp.n mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (toolbar = mViewBinding.f60384o) == null) ? null : toolbar.getLayoutParams();
        if (layoutParams instanceof CollapsingToolbarLayout.c) {
            ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams)).topMargin = com.blankj.utilcode.util.d.c();
        }
        fp.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f60375f) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomDetailFragment.P0(this.f49568a, view);
                }
            });
        }
        fp.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null) {
            mViewBinding3.f60395z.setAdapter(new com.transsion.room.adapter.c(this.mGroupId, this));
            mViewBinding3.f60395z.registerOnPageChangeCallback(new c());
            N0();
        }
        H0();
    }

    @Override
    public void initViewModel() {
        RoomDetailViewModel roomDetailViewModelE0 = E0();
        roomDetailViewModelE0.q().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomDetailFragment.Q0(this.f49571a, (RoomItem) obj);
            }
        }));
        roomDetailViewModelE0.s().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomDetailFragment.R0(this.f49574a, (RoomNet) obj);
            }
        }));
        roomDetailViewModelE0.t().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomDetailFragment.S0(this.f49577a, (RoomNet) obj);
            }
        }));
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public void loadDefaultData() {
        showLoadingView();
        D0();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("groupdetail", false, 2, null);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            D0();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String groupId;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String string = null;
        RoomItem roomItem = arguments != null ? (RoomItem) arguments.getParcelable(WebConstants.FIELD_ITEM) : null;
        if (roomItem == null || (groupId = roomItem.getGroupId()) == null) {
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                string = arguments2.getString("id");
            }
        } else {
            string = groupId;
        }
        this.mGroupId = string;
    }

    @Override
    public void retryLoadData() {
    }
}
