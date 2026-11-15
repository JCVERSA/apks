package com.transsion.room.fragment;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.Lifecycle;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLLinearLayout;
import com.therouter.TheRouter;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.RoomJoinStatus;
import com.tn.lib.view.expand.ExpandView;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.publish.bean.PublishResult;
import com.transsion.publish.view.UploadView;
import com.transsion.room.R$color;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.view.RoomHomeTabTitleView;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u0086\u00012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0087\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J\u001f\u0010\u0019\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\"\u0010#J\u0011\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0005J\u0017\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010)¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010\u0005J\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\u0005J\u000f\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b/\u0010\u0005J\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102J\u0011\u00104\u001a\u0004\u0018\u000103H\u0016¢\u0006\u0004\b4\u00105J\u0011\u00107\u001a\u0004\u0018\u000106H\u0016¢\u0006\u0004\b7\u00108J\u001a\u0010;\u001a\r\u0012\t\u0012\u00070\u0003¢\u0006\u0002\b:09H\u0016¢\u0006\u0004\b;\u0010<J\u0019\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bB\u0010\u0005J\u0017\u0010C\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\bC\u0010DJ-\u0010I\u001a\u00020\u00062\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020=2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\u000309H\u0016¢\u0006\u0004\bI\u0010JR\u001f\u0010M\u001a\r\u0012\t\u0012\u00070\u0003¢\u0006\u0002\b:098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0014\u0010P\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010R\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010OR\u0014\u0010T\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010OR\u0014\u0010V\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010OR\u0014\u0010X\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010OR\u0014\u0010Z\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010OR\u0014\u0010\\\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010OR\u0014\u0010^\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010OR\u0018\u0010a\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010g\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010p\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0014\u0010t\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\br\u0010sR\u001d\u0010z\u001a\u0004\u0018\u00010u8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bv\u0010w\u001a\u0004\bx\u0010yR#\u0010\u0080\u0001\u001a\u0010\u0012\f\u0012\n }*\u0004\u0018\u00010|0|0{8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010\u007fR\"\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0081\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0082\u0001\u0010w\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001¨\u0006\u0088\u0001"}, d2 = {"Lcom/transsion/room/fragment/RoomDetailFragmentNew;", "Lcom/transsion/room/fragment/RoomBaseFragment;", "Lfp/o;", "", "<init>", "()V", "", "j1", "h1", "Landroid/content/Context;", "context", "p1", "(Landroid/content/Context;)V", "S0", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "roomItem", "q1", "(Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "d1", "e1", "m1", "l1", "checkToShowEmptyView", "", "collapsePercentage", "Q0", "(Landroid/content/Context;F)V", "", "checkLogin", "()Z", "Landroid/view/LayoutInflater;", "inflater", "T0", "(Landroid/view/LayoutInflater;)Lfp/o;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "initViewData", "initViewModel", "Lcom/transsion/publish/bean/PublishResult;", "eventBean", "n1", "(Lcom/transsion/publish/bean/PublishResult;)V", "initListener", "retryLoadData", "loadDefaultData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "u0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "", "Lkotlin/jvm/internal/EnhancedNullability;", "y0", "()Ljava/util/List;", "", RequestParameters.POSITION, "Landroidx/fragment/app/Fragment;", "m0", "(I)Landroidx/fragment/app/Fragment;", "k1", "v0", "(I)V", "Lcom/transsion/room/view/RoomHomeTabTitleView;", "tabView", "index", "tabList", "x0", "(Lcom/transsion/room/view/RoomHomeTabTitleView;ILjava/util/List;)V", "g", "Ljava/util/List;", "mTabs", "h", "I", "dp22", "i", "initialRoomCoverSize", "j", "finalRoomCoverSize", CampaignEx.JSON_KEY_AD_K, "finalRoomHeaderSize", "l", "finalMarginStart", "m", "initialMarginStart", "n", "finalMarginTop", "o", "initialMarginTop", TtmlNode.TAG_P, "Ljava/lang/String;", "mGroupId", CampaignEx.JSON_KEY_AD_Q, "Z", "mIsNeedStartRoomHome", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/moviedetailapi/bean/RoomItem;", "mRoomDetailItem", "Lcom/transsion/share/share/ShareDialogFragment;", "s", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "t", "Lcom/transsion/publish/bean/PublishResult;", TmcStartParams.KEY_URL_SHORT, "Landroid/view/View;", "mLoadingView", "Lcb/n;", "v", "Lcb/n;", "mMemberAvatarShapeModel", "Lqx/a;", "w", "Lkotlin/Lazy;", "getMLoginApi", "()Lqx/a;", "mLoginApi", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "x", "Landroidx/activity/result/b;", "mLoginLaunch", "Ljo/a;", "y", "R0", "()Ljo/a;", "mPublishedApi", "z", "a", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomDetailFragmentNew extends RoomBaseFragment<fp.o, String> {

    public static final Companion INSTANCE = new Companion(null);

    private final List mTabs = CollectionsKt.o(Utils.a().getString(R$string.Popular), Utils.a().getString(R$string.Newest));

    private final int dp22 = lj.a.b(24);

    private final int initialRoomCoverSize = lj.a.b(52);

    private final int finalRoomCoverSize = lj.a.b(24);

    private final int finalRoomHeaderSize = lj.a.b(28);

    private final int finalMarginStart = lj.a.b(48);

    private final int initialMarginStart = lj.a.b(12);

    private final int finalMarginTop = lj.a.b(12);

    private final int initialMarginTop = lj.a.b(54);

    private String mGroupId;

    private boolean mIsNeedStartRoomHome;

    private RoomItem mRoomDetailItem;

    private ShareDialogFragment mShareDialog;

    private PublishResult eventBean;

    private View mLoadingView;

    private final cb.n mMemberAvatarShapeModel;

    private final Lazy mLoginApi;

    private final androidx.activity.result.b mLoginLaunch;

    private final Lazy mPublishedApi;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomDetailFragmentNew a(RoomItem roomItem, String str, boolean z10) {
            RoomDetailFragmentNew roomDetailFragmentNew = new RoomDetailFragmentNew();
            roomDetailFragmentNew.setArguments(androidx.core.os.d.b(TuplesKt.a(WebConstants.FIELD_ITEM, roomItem), TuplesKt.a("id", str), TuplesKt.a("need_start_room_home", Boolean.valueOf(z10))));
            return roomDetailFragmentNew;
        }

        private Companion() {
        }
    }

    public static final class b extends androidx.activity.u {
        b() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            RoomDetailFragmentNew.this.j1();
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f49441a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49441a = function;
        }

        @Override
        public final Function a() {
            return this.f49441a;
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
            this.f49441a.invoke(obj);
        }
    }

    public static final class d implements com.transsion.share.share.a {
        d() {
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
            if (com.transsion.baseui.util.c.f42332a.a(2, 2000L) || (str = RoomDetailFragmentNew.this.mGroupId) == null) {
                return;
            }
            RoomDetailFragmentNew.this.p0().x(str);
        }

        @Override
        public void e(String str) {
            com.transsion.share.share.a.C0627a.c(this, str);
        }
    }

    public RoomDetailFragmentNew() {
        cb.n nVarM = cb.n.a().q(0, 10.0f).p(cb.n.f16848m).m();
        Intrinsics.g(nVarM, "build(...)");
        this.mMemberAvatarShapeModel = nVarM;
        this.mLoginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomDetailFragmentNew.mLoginApi_delegate$lambda$0();
            }
        });
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                RoomDetailFragmentNew.f1(this.f49530a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.mLoginLaunch = bVarRegisterForActivityResult;
        this.mPublishedApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomDetailFragmentNew.g1();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Q0(Context context, float collapsePercentage) {
        int color;
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        RoomJoinAnimationView roomJoinAnimationView3;
        ExpandView expandView;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        View view;
        ConstraintLayout constraintLayout;
        FrameLayout frameLayout;
        ImageView imageView;
        RoomItem roomItem;
        Cover cover;
        String averageHueDark;
        Cover cover2;
        Cover cover3;
        int i10 = this.initialRoomCoverSize;
        float f10 = i10 - ((i10 - this.finalRoomCoverSize) * collapsePercentage);
        float f11 = i10 - ((i10 - this.finalRoomHeaderSize) * collapsePercentage);
        int i11 = this.initialMarginStart;
        float f12 = i11 - ((i11 - this.finalMarginStart) * collapsePercentage);
        int i12 = this.initialMarginTop;
        float f13 = i12 - ((i12 - this.finalMarginTop) * collapsePercentage);
        RoomItem roomItem2 = this.mRoomDetailItem;
        ViewGroup.LayoutParams layoutParams = null;
        String averageHueDark2 = (roomItem2 == null || (cover3 = roomItem2.getCover()) == null) ? null : cover3.getAverageHueDark();
        if (averageHueDark2 == null || averageHueDark2.length() == 0 || (roomItem = this.mRoomDetailItem) == null || (cover = roomItem.getCover()) == null || (averageHueDark = cover.getAverageHueDark()) == null || !StringsKt.W(averageHueDark, com.transsion.gslb.Utils.SEPARATOR, false, 2, null)) {
            color = context.getResources().getColor(R$color.post_detail_top_bg);
        } else {
            RoomItem roomItem3 = this.mRoomDetailItem;
            color = Color.parseColor((roomItem3 == null || (cover2 = roomItem3.getCover()) == null) ? null : cover2.getAverageHueDark());
        }
        int iA = wy.a.a(collapsePercentage, color, context.getResources().getColor(com.tn.lib.widget.R$color.bg_01));
        fp.o oVar = (fp.o) getMViewBinding();
        if (oVar != null && (imageView = oVar.f60406k) != null) {
            imageView.setBackgroundColor(iA);
        }
        fp.o oVar2 = (fp.o) getMViewBinding();
        if (oVar2 != null && (frameLayout = oVar2.f60400e) != null) {
            frameLayout.setBackgroundColor(iA);
        }
        fp.o oVar3 = (fp.o) getMViewBinding();
        if (oVar3 != null && (constraintLayout = oVar3.f60398c) != null) {
            constraintLayout.setBackgroundColor(iA);
        }
        fp.o oVar4 = (fp.o) getMViewBinding();
        if (oVar4 != null && (view = oVar4.f60414s) != null) {
            view.setBackgroundColor(iA);
        }
        fp.o oVar5 = (fp.o) getMViewBinding();
        ViewGroup.LayoutParams layoutParams2 = (oVar5 == null || (linearLayout2 = oVar5.f60407l) == null) ? null : linearLayout2.getLayoutParams();
        Intrinsics.f(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams.setMarginStart((int) f12);
        marginLayoutParams.topMargin = (int) f13;
        marginLayoutParams.height = (int) f11;
        fp.o oVar6 = (fp.o) getMViewBinding();
        if (oVar6 != null && (linearLayout = oVar6.f60407l) != null) {
            linearLayout.setLayoutParams(marginLayoutParams);
        }
        fp.o oVar7 = (fp.o) getMViewBinding();
        if (oVar7 != null && (shapeableImageView2 = oVar7.f60404i) != null) {
            layoutParams = shapeableImageView2.getLayoutParams();
        }
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        int i13 = (int) f10;
        layoutParams.width = i13;
        layoutParams.height = i13;
        fp.o oVar8 = (fp.o) getMViewBinding();
        if (oVar8 != null && (shapeableImageView = oVar8.f60404i) != null) {
            shapeableImageView.setLayoutParams(layoutParams);
        }
        fp.o oVar9 = (fp.o) getMViewBinding();
        if (oVar9 != null && (appCompatTextView = oVar9.f60412q) != null) {
            appCompatTextView.setMaxLines(collapsePercentage > 0.9f ? 1 : 2);
        }
        float f14 = collapsePercentage * 2;
        if (f14 > 1.0f) {
            f14 = 1.0f;
        }
        fp.o oVar10 = (fp.o) getMViewBinding();
        if (oVar10 != null && (appCompatImageView = oVar10.f60405j) != null) {
            appCompatImageView.setAlpha(1 - f14);
        }
        fp.o oVar11 = (fp.o) getMViewBinding();
        if (oVar11 != null && (expandView = oVar11.f60399d) != null) {
            expandView.setAlpha(1 - f14);
        }
        fp.o oVar12 = (fp.o) getMViewBinding();
        if (oVar12 != null && (roomJoinAnimationView3 = oVar12.f60413r) != null) {
            roomJoinAnimationView3.setAlpha(1 - f14);
        }
        float f15 = 1 - f14;
        boolean z10 = f15 > 0.0f;
        fp.o oVar13 = (fp.o) getMViewBinding();
        if (oVar13 != null && (roomJoinAnimationView2 = oVar13.f60413r) != null) {
            if ((roomJoinAnimationView2.getVisibility() == 0) == z10) {
                return;
            }
        }
        fp.o oVar14 = (fp.o) getMViewBinding();
        if (oVar14 == null || (roomJoinAnimationView = oVar14.f60413r) == null) {
            return;
        }
        roomJoinAnimationView.setVisibility(f15 > 0.0f ? 0 : 8);
    }

    private final jo.a R0() {
        return (jo.a) this.mPublishedApi.getValue();
    }

    private final void S0() {
        String str = this.mGroupId;
        if (str != null) {
            p0().p(str);
        }
    }

    public static final void U0(RoomDetailFragmentNew roomDetailFragmentNew, View view) {
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L)) {
            return;
        }
        roomDetailFragmentNew.m1();
    }

    public static final void V0(RoomDetailFragmentNew roomDetailFragmentNew, View view) {
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L)) {
            return;
        }
        RoomItem roomItem = roomDetailFragmentNew.mRoomDetailItem;
        if (roomItem != null ? Intrinsics.c(roomItem.getHasJoin(), Boolean.TRUE) : false) {
            roomDetailFragmentNew.e1();
        } else {
            roomDetailFragmentNew.d1();
        }
    }

    public static final void W0(RoomDetailFragmentNew roomDetailFragmentNew, View view) {
        roomDetailFragmentNew.k1();
    }

    public static final void X0(RoomDetailFragmentNew roomDetailFragmentNew, View view) {
        roomDetailFragmentNew.k1();
    }

    public static final void Y0(RoomDetailFragmentNew roomDetailFragmentNew, AppBarLayout appBarLayout, int i10) {
        float fAbs = Math.abs(i10) / appBarLayout.getTotalScrollRange();
        Context context = appBarLayout.getContext();
        Intrinsics.g(context, "getContext(...)");
        roomDetailFragmentNew.Q0(context, fAbs);
    }

    public static final void Z0(RoomDetailFragmentNew roomDetailFragmentNew, View view) {
        roomDetailFragmentNew.j1();
    }

    public static final Unit a1(RoomDetailFragmentNew roomDetailFragmentNew, RoomItem roomItem) {
        if (roomItem == null) {
            roomDetailFragmentNew.checkToShowEmptyView();
        } else {
            roomDetailFragmentNew.showContentView();
            roomDetailFragmentNew.q1(roomItem);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit b1(RoomDetailFragmentNew roomDetailFragmentNew, RoomNet roomNet) {
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        roomDetailFragmentNew.S0();
        if (roomNet == null) {
            fp.o oVar = (fp.o) roomDetailFragmentNew.getMViewBinding();
            if (oVar != null && (roomJoinAnimationView2 = oVar.f60413r) != null) {
                roomJoinAnimationView2.setStatus(RoomJoinStatus.JOIN);
            }
        } else {
            fp.o oVar2 = (fp.o) roomDetailFragmentNew.getMViewBinding();
            if (oVar2 != null && (roomJoinAnimationView = oVar2.f60413r) != null) {
                roomJoinAnimationView.setStatus(RoomJoinStatus.JOINED);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit c1(RoomDetailFragmentNew roomDetailFragmentNew, RoomNet roomNet) {
        if (roomNet != null) {
            roomDetailFragmentNew.S0();
        }
        return Unit.f64096a;
    }

    private final boolean checkLogin() {
        qx.a mLoginApi;
        qx.a mLoginApi2 = getMLoginApi();
        if (mLoginApi2 != null && mLoginApi2.a()) {
            return true;
        }
        androidx.activity.result.b bVar = this.mLoginLaunch;
        Context context = getContext();
        Intent intentP = null;
        if (context != null && (mLoginApi = getMLoginApi()) != null) {
            intentP = mLoginApi.p(context);
        }
        bVar.a(intentP);
        return false;
    }

    private final void checkToShowEmptyView() {
        if (yg.l.f76264a.e()) {
            showEmptyView(false);
        } else {
            showNoNetworkView(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void d1() {
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        fp.o oVar = (fp.o) getMViewBinding();
        if ((oVar == null || (roomJoinAnimationView2 = oVar.f60413r) == null || !roomJoinAnimationView2.isLoading()) && checkLogin() && !com.transsion.baseui.util.c.f42332a.a(1001, 2000L)) {
            if (!yg.l.f76264a.e()) {
                fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
                return;
            }
            String groupId = this.mGroupId;
            if (groupId == null) {
                RoomItem roomItem = this.mRoomDetailItem;
                groupId = roomItem != null ? roomItem.getGroupId() : null;
            }
            if (groupId != null) {
                fp.o oVar2 = (fp.o) getMViewBinding();
                if (oVar2 != null && (roomJoinAnimationView = oVar2.f60413r) != null) {
                    roomJoinAnimationView.setStatus(RoomJoinStatus.LOADING);
                }
                p0().w(groupId);
                com.transsion.baselib.helper.a.f42121a.h("room_detail", "join", (60 & 4) != 0 ? "" : this.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e1() {
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        fp.o oVar = (fp.o) getMViewBinding();
        if (oVar == null || (roomJoinAnimationView2 = oVar.f60413r) == null || !roomJoinAnimationView2.isLoading()) {
            String groupId = this.mGroupId;
            if (groupId == null) {
                RoomItem roomItem = this.mRoomDetailItem;
                groupId = roomItem != null ? roomItem.getGroupId() : null;
            }
            if (groupId != null) {
                fp.o oVar2 = (fp.o) getMViewBinding();
                if (oVar2 != null && (roomJoinAnimationView = oVar2.f60413r) != null) {
                    roomJoinAnimationView.setStatus(RoomJoinStatus.LOADING);
                }
                p0().x(groupId);
                com.transsion.baselib.helper.a.f42121a.h("room_detail", "leave", (60 & 4) != 0 ? "" : this.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void f1(RoomDetailFragmentNew roomDetailFragmentNew, ActivityResult it) {
        RoomJoinAnimationView roomJoinAnimationView;
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            roomDetailFragmentNew.S0();
            roomDetailFragmentNew.d1();
            return;
        }
        fp.o oVar = (fp.o) roomDetailFragmentNew.getMViewBinding();
        if (oVar == null || (roomJoinAnimationView = oVar.f60413r) == null) {
            return;
        }
        roomJoinAnimationView.setStatus(RoomJoinStatus.JOIN);
    }

    public static final jo.a g1() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    private final qx.a getMLoginApi() {
        return (qx.a) this.mLoginApi.getValue();
    }

    private final void h1() {
        Object context = getContext();
        if (context instanceof ComponentActivity) {
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomDetailFragmentNew.i1(this.f49591a, (PublishResult) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishResult.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent((androidx.p009lifecycle.u) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
        }
    }

    public static final Unit i1(RoomDetailFragmentNew roomDetailFragmentNew, PublishResult it) {
        Intrinsics.h(it, "it");
        roomDetailFragmentNew.n1(it);
        return Unit.f64096a;
    }

    public final void j1() {
        if (this.mIsNeedStartRoomHome) {
            ep.k.i(ep.k.f59780a, null, null, null, false, 15, null);
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void l1(RoomItem roomItem) {
        Group group;
        String strD;
        ColorStateList colorStateList;
        int color;
        PileLayout pileLayout;
        Cover cover;
        String averageHueDark;
        PileLayout pileLayout2;
        Cover cover2;
        String averageHueDark2;
        PileLayout pileLayout3;
        AppCompatTextView appCompatTextView;
        Group group2;
        List<String> memberAvatars = roomItem.getMemberAvatars();
        List<String> listU0 = memberAvatars != null ? CollectionsKt.U0(memberAvatars) : null;
        List list = listU0;
        if (list == null || list.isEmpty()) {
            fp.o oVar = (fp.o) getMViewBinding();
            if (oVar == null || (group = oVar.f60401f) == null) {
                return;
            }
            uf.c.g(group);
            return;
        }
        fp.o oVar2 = (fp.o) getMViewBinding();
        if (oVar2 != null && (group2 = oVar2.f60401f) != null) {
            uf.c.k(group2);
        }
        if (roomItem.getUserCount() != null) {
            Long userCount = roomItem.getUserCount();
            Intrinsics.e(userCount);
            strD = ij.k.d(userCount.longValue());
        } else {
            strD = "0";
        }
        fp.o oVar3 = (fp.o) getMViewBinding();
        if (oVar3 != null && (appCompatTextView = oVar3.f60410o) != null) {
            Long userCount2 = roomItem.getUserCount();
            appCompatTextView.setText((userCount2 != null ? userCount2.longValue() : 0L) == 1 ? Utils.a().getString(com.transsion.room.R$string.one_members) : Utils.a().getString(com.transsion.room.R$string.x_members, strD));
        }
        fp.o oVar4 = (fp.o) getMViewBinding();
        if (oVar4 != null && (pileLayout3 = oVar4.f60409n) != null) {
            pileLayout3.removeAllViews();
        }
        Long userCount3 = roomItem.getUserCount();
        boolean z10 = (userCount3 != null ? userCount3.longValue() : 0L) > 8;
        Cover cover3 = roomItem.getCover();
        String averageHueDark3 = cover3 != null ? cover3.getAverageHueDark() : null;
        if (averageHueDark3 == null || averageHueDark3.length() == 0 || (cover2 = roomItem.getCover()) == null || (averageHueDark2 = cover2.getAverageHueDark()) == null || !StringsKt.W(averageHueDark2, com.transsion.gslb.Utils.SEPARATOR, false, 2, null)) {
            colorStateList = androidx.core.content.b.getColorStateList(Utils.a(), R$color.post_detail_top_bg);
        } else {
            Cover cover4 = roomItem.getCover();
            colorStateList = ColorStateList.valueOf(Color.parseColor(cover4 != null ? cover4.getAverageHueDark() : null));
        }
        for (String str : listU0) {
            fp.o oVar5 = (fp.o) getMViewBinding();
            if (oVar5 != null && (pileLayout2 = oVar5.f60409n) != null) {
                ShapeableImageView shapeableImageView = new ShapeableImageView(pileLayout2.getContext());
                shapeableImageView.setStrokeWidth(lj.a.b(2));
                shapeableImageView.setStrokeColor(colorStateList);
                shapeableImageView.setShapeAppearanceModel(this.mMemberAvatarShapeModel);
                int iB = lj.a.b(1);
                shapeableImageView.setPadding(iB, iB, iB, iB);
                shapeableImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                ni.f.a aVar = ni.f.f67269a;
                Context context = pileLayout2.getContext();
                Intrinsics.g(context, "getContext(...)");
                aVar.m(context).g(str).m(this.dp22).c(this.dp22).i(com.tn.lib.widget.R$color.transparent).d(shapeableImageView);
                int i10 = this.dp22;
                pileLayout2.addView(shapeableImageView, i10, i10);
            }
        }
        if (z10) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_member_avatar_more, (ViewGroup) null);
            Cover cover5 = roomItem.getCover();
            String averageHueDark4 = cover5 != null ? cover5.getAverageHueDark() : null;
            if (averageHueDark4 == null || averageHueDark4.length() == 0 || (cover = roomItem.getCover()) == null || (averageHueDark = cover.getAverageHueDark()) == null || !StringsKt.W(averageHueDark, com.transsion.gslb.Utils.SEPARATOR, false, 2, null)) {
                color = viewInflate.getContext().getResources().getColor(R$color.post_detail_top_bg);
            } else {
                Cover cover6 = roomItem.getCover();
                color = Color.parseColor(cover6 != null ? cover6.getAverageHueDark() : null);
            }
            ((BLLinearLayout) viewInflate.findViewById(R$id.v_more)).setBackgroundDrawable(new DrawableCreator.Builder().setCornersRadius(lj.a.b(12)).setSolidColor(viewInflate.getContext().getResources().getColor(com.tn.lib.widget.R$color.gray_dark_30)).setStrokeColor(color).setStrokeWidth(lj.a.b(2)).build());
            fp.o oVar6 = (fp.o) getMViewBinding();
            if (oVar6 == null || (pileLayout = oVar6.f60409n) == null) {
                return;
            }
            int i11 = this.dp22;
            pileLayout.addView(viewInflate, i11, i11);
        }
    }

    private final void m1() {
        ShareDialogFragment shareDialogFragment;
        ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
        PostType postType = PostType.GROUP_TYPE;
        String str = this.mGroupId;
        RoomItem roomItem = this.mRoomDetailItem;
        String creatorId = roomItem != null ? roomItem.getCreatorId() : null;
        String value = ReportType.GROUP.getValue();
        RoomItem roomItem2 = this.mRoomDetailItem;
        ShareDialogFragment shareDialogFragmentA = companion.a(postType, str, creatorId, value, (3328 & 16) != 0 ? "" : roomItem2 != null ? roomItem2.getName() : null, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "groupdetail", (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : null);
        this.mShareDialog = shareDialogFragmentA;
        if (shareDialogFragmentA != null) {
            shareDialogFragmentA.G0(new d());
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        childFragmentManager.g0();
        ShareDialogFragment shareDialogFragment2 = this.mShareDialog;
        if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = this.mShareDialog) != null) {
            shareDialogFragment.show(childFragmentManager, "share");
        }
        com.transsion.baselib.helper.a.f42121a.h("room_detail", "share", (60 & 4) != 0 ? "" : this.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    public static final qx.a mLoginApi_delegate$lambda$0() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final void o1(RoomDetailFragmentNew roomDetailFragmentNew) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        roomDetailFragmentNew.p1(applicationA);
    }

    private final void p1(Context context) {
        UploadView uploadView = new UploadView(context);
        uploadView.setPageName("room_detail");
        if (!uploadView.getIsShow()) {
            uploadView.setVisibility(0);
            uploadView.setAlpha(1.0f);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || activityB.isFinishing() || activityB.isDestroyed()) {
                activityB = com.blankj.utilcode.util.a.b();
            }
            if (activityB == null || activityB.isFinishing() || activityB.isDestroyed()) {
                return;
            } else {
                uploadView.show(activityB);
            }
        }
        uploadView.showFloatView(this.eventBean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void q1(RoomItem roomItem) {
        RoomJoinAnimationView roomJoinAnimationView;
        ExpandView expandView;
        AppCompatTextView appCompatTextView;
        ShapeableImageView shapeableImageView;
        this.mRoomDetailItem = roomItem;
        fp.o oVar = (fp.o) getMViewBinding();
        if (oVar != null && (shapeableImageView = oVar.f60404i) != null) {
            ni.f.a aVar = ni.f.f67269a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            String avatar = roomItem.getAvatar();
            if (avatar == null) {
                avatar = "";
            }
            bVarM.g(avatar).m(this.dp22).c(this.dp22).d(shapeableImageView);
        }
        fp.o oVar2 = (fp.o) getMViewBinding();
        if (oVar2 != null && (appCompatTextView = oVar2.f60412q) != null) {
            appCompatTextView.setText(roomItem.getName());
        }
        fp.o oVar3 = (fp.o) getMViewBinding();
        if (oVar3 != null && (expandView = oVar3.f60399d) != null) {
            expandView.m(roomItem.getDescription());
        }
        fp.o oVar4 = (fp.o) getMViewBinding();
        if (oVar4 != null && (roomJoinAnimationView = oVar4.f60413r) != null) {
            roomJoinAnimationView.setStatus(Intrinsics.c(roomItem.getHasJoin(), Boolean.TRUE) ? RoomJoinStatus.JOINED : RoomJoinStatus.JOIN);
        }
        l1(roomItem);
    }

    @Override
    public fp.o getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fp.o oVarC = fp.o.c(inflater);
        Intrinsics.g(oVarC, "inflate(...)");
        return oVarC;
    }

    @Override
    public View getLoadingView() {
        if (this.mLoadingView == null) {
            this.mLoadingView = LayoutInflater.from(requireContext()).inflate(R$layout.layout_room_detail_loading, (ViewGroup) getFlStateView(), false);
        }
        return this.mLoadingView;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initListener() {
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        RoomJoinAnimationView roomJoinAnimationView;
        AppCompatImageView appCompatImageView2;
        fp.o oVar = (fp.o) getMViewBinding();
        if (oVar != null && (appCompatImageView2 = oVar.f60405j) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomDetailFragmentNew.U0(this.f49542a, view);
                }
            });
        }
        fp.o oVar2 = (fp.o) getMViewBinding();
        if (oVar2 != null && (roomJoinAnimationView = oVar2.f60413r) != null) {
            roomJoinAnimationView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomDetailFragmentNew.V0(this.f49545a, view);
                }
            });
        }
        fp.o oVar3 = (fp.o) getMViewBinding();
        if (oVar3 != null && (appCompatImageView = oVar3.f60403h) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomDetailFragmentNew.W0(this.f49586a, view);
                }
            });
        }
        fp.o oVar4 = (fp.o) getMViewBinding();
        if (oVar4 == null || (gradientTextView = oVar4.f60411p) == null) {
            return;
        }
        gradientTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RoomDetailFragmentNew.X0(this.f49589a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewData() {
        qi.b logViewConfig;
        HashMap mapG;
        OnBackPressedDispatcher onBackPressedDispatcher;
        AppCompatImageView appCompatImageView;
        AppBarLayout appBarLayout;
        ImageView imageView;
        String groupId;
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
        Bundle arguments3 = getArguments();
        this.mIsNeedStartRoomHome = arguments3 != null ? arguments3.getBoolean("need_start_room_home") : false;
        fp.o oVar = (fp.o) getMViewBinding();
        if (oVar != null && (imageView = oVar.f60406k) != null) {
            uf.c.e(imageView);
        }
        fp.o oVar2 = (fp.o) getMViewBinding();
        if (oVar2 != null && (appBarLayout = oVar2.f60397b) != null) {
            appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() {
                @Override
                public final void onOffsetChanged(AppBarLayout appBarLayout2, int i10) {
                    RoomDetailFragmentNew.Y0(this.f49536a, appBarLayout2, i10);
                }
            });
        }
        fp.o oVar3 = (fp.o) getMViewBinding();
        if (oVar3 != null && (appCompatImageView = oVar3.f60402g) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomDetailFragmentNew.Z0(this.f49540a, view);
                }
            });
        }
        FragmentActivity activity = getActivity();
        if (activity != null && (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) != null) {
            androidx.p009lifecycle.u viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            onBackPressedDispatcher.i(viewLifecycleOwner, new b());
        }
        super.initViewData();
        String str = this.mGroupId;
        if (str == null || (logViewConfig = getLogViewConfig()) == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void initViewModel() {
        super.initViewModel();
        p0().q().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomDetailFragmentNew.a1(this.f49583a, (RoomItem) obj);
            }
        }));
        p0().s().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomDetailFragmentNew.b1(this.f49598a, (RoomNet) obj);
            }
        }));
        p0().t().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomDetailFragmentNew.c1(this.f49601a, (RoomNet) obj);
            }
        }));
        h1();
        String str = this.mGroupId;
        if (str != null) {
            p0().C(str);
        }
    }

    public void k1() {
        Context context;
        jo.a aVarR0;
        RoomItem roomItem = this.mRoomDetailItem;
        if (roomItem == null || (context = getContext()) == null || (aVarR0 = R0()) == null) {
            return;
        }
        String groupId = roomItem.getGroupId();
        if (groupId == null) {
            groupId = "";
        }
        String name = roomItem.getName();
        if (name == null) {
            name = "";
        }
        String avatar = roomItem.getAvatar();
        aVarR0.a(context, groupId, name, avatar != null ? avatar : "");
    }

    @Override
    public void loadDefaultData() {
        showLoadingView();
        S0();
    }

    @Override
    public Fragment m0(int position) {
        if (position == 0) {
            io.b bVarQ0 = q0();
            if (bVarQ0 != null) {
                return bVarQ0.k(this.mGroupId);
            }
            return null;
        }
        io.b bVarQ1 = q0();
        if (bVarQ1 != null) {
            return bVarQ1.e(this.mGroupId);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n1(PublishResult eventBean) {
        fp.o oVar;
        AppCompatImageView appCompatImageView;
        this.eventBean = eventBean;
        Integer numValueOf = eventBean != null ? Integer.valueOf(eventBean.getState()) : null;
        if (numValueOf == null || numValueOf.intValue() != 0 || (oVar = (fp.o) getMViewBinding()) == null || (appCompatImageView = oVar.f60403h) == null) {
            return;
        }
        appCompatImageView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                RoomDetailFragmentNew.o1(this.f49594a);
            }
        }, 1500L);
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("room_detail", false, 2, null);
    }

    @Override
    public void retryLoadData() {
        S0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public MagicIndicator u0() {
        fp.o oVar = (fp.o) getMViewBinding();
        if (oVar != null) {
            return oVar.f60408m;
        }
        return null;
    }

    @Override
    public void v0(int position) {
    }

    @Override
    public void x0(RoomHomeTabTitleView tabView, int index, List tabList) {
        Intrinsics.h(tabView, "tabView");
        Intrinsics.h(tabList, "tabList");
        tabView.setTitle((String) tabList.get(index));
    }

    @Override
    public List getMTabs() {
        return this.mTabs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ViewPager2 z0() {
        fp.o oVar = (fp.o) getMViewBinding();
        if (oVar != null) {
            return oVar.f60415t;
        }
        return null;
    }
}
