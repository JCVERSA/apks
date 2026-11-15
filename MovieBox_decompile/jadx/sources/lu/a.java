package lu;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$string;
import com.transsion.push.PushConstants;
import com.transsion.search_pugc.fragment.hot.SearchHotFragment;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.ugcvideodetail.dialog.UGCImmVideoCommentDialog;
import com.transsion.ugcvideodetail.dialog.UGCImmVideoPlayListDialog;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsion.usercenterapi.ReportType;
import com.transsnet.loginapi.bean.UserInfo;
import iu.r;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class a {

    public static final C0808a f66114e = new C0808a(null);

    private final b f66115a;

    private final i f66116b;

    private final e f66117c;

    private ShareDialogFragment f66118d;

    public static final class C0808a {
        public C0808a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0808a() {
        }
    }

    public interface b {
        r a();

        UGCImmVideoDetailViewModel b();

        UGCImmVideoDetailFragment c();

        String d();

        String e();

        String f();

        boolean g();

        UGCImmVideo getData();

        qx.a h();

        void i(boolean z10);
    }

    public static final class c implements com.transsion.share.share.a {
        c() {
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void b(String str) {
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
            Intrinsics.h(id2, "id");
        }

        @Override
        public void e(String str) {
            com.transsion.share.share.a.C0627a.c(this, str);
        }
    }

    public a(b host, i reportDelegate, e downloadDelegate) {
        Intrinsics.h(host, "host");
        Intrinsics.h(reportDelegate, "reportDelegate");
        Intrinsics.h(downloadDelegate, "downloadDelegate");
        this.f66115a = host;
        this.f66116b = reportDelegate;
        this.f66117c = downloadDelegate;
    }

    private final void b() {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC;
        FragmentManager childFragmentManager;
        UGCVideo ugcVideo;
        UGCVideoInteractiveInfo interactiveInfo;
        String commentNum;
        Integer numV;
        UGCVideo ugcVideo2;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC2 = this.f66115a.c();
        if (uGCImmVideoDetailFragmentC2 == null || !uGCImmVideoDetailFragmentC2.isAdded() || (uGCImmVideoDetailFragmentC = this.f66115a.c()) == null || (childFragmentManager = uGCImmVideoDetailFragmentC.getChildFragmentManager()) == null) {
            return;
        }
        i iVar = this.f66116b;
        UGCImmVideo data = this.f66115a.getData();
        String ugcVideoId = null;
        UGCVideo ugcVideo3 = data != null ? data.getUgcVideo() : null;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a("comment", ugcVideo3, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        UGCImmVideoCommentDialog.Companion aVar = UGCImmVideoCommentDialog.INSTANCE;
        UGCImmVideo data2 = this.f66115a.getData();
        if (data2 != null && (ugcVideo2 = data2.getUgcVideo()) != null) {
            ugcVideoId = ugcVideo2.getUgcVideoId();
        }
        UGCImmVideo data3 = this.f66115a.getData();
        aVar.a(ugcVideoId, (data3 == null || (ugcVideo = data3.getUgcVideo()) == null || (interactiveInfo = ugcVideo.getInteractiveInfo()) == null || (commentNum = interactiveInfo.getCommentNum()) == null || (numV = StringsKt.v(commentNum)) == null) ? 0 : numV.intValue()).show(childFragmentManager, "immComment");
    }

    private final void c() {
        UGCImmVideo data;
        UGCVideo ugcVideo;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f66115a.c();
        FragmentActivity activity = uGCImmVideoDetailFragmentC != null ? uGCImmVideoDetailFragmentC.getActivity() : null;
        FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? activity : null;
        if (fragmentActivity == null || (data = this.f66115a.getData()) == null || (ugcVideo = data.getUgcVideo()) == null) {
            return;
        }
        if (this.f66115a.g()) {
            this.f66117c.f(ugcVideo, this.f66116b);
            return;
        }
        i iVar = this.f66116b;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a("download", ugcVideo, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        this.f66117c.l(fragmentActivity, ugcVideo, this.f66115a.d(), this.f66115a.f(), this.f66115a.e());
    }

    private final void d() {
        UGCVideo ugcVideo;
        String ugcVideoId;
        String favoriteNum;
        Integer numV;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        i iVar = this.f66116b;
        UGCImmVideo data = this.f66115a.getData();
        UGCVideo ugcVideo2 = data != null ? data.getUgcVideo() : null;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a("favorite", ugcVideo2, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        UGCImmVideo data2 = this.f66115a.getData();
        if (data2 == null || (ugcVideo = data2.getUgcVideo()) == null || (ugcVideoId = ugcVideo.getUgcVideoId()) == null) {
            return;
        }
        UGCVideoInteractiveInfo interactiveInfo = ugcVideo.getInteractiveInfo();
        boolean zC = interactiveInfo != null ? Intrinsics.c(interactiveInfo.getHasFavorite(), Boolean.TRUE) : false;
        boolean z10 = !zC;
        com.transsion.baseui.util.m.c(!zC ? com.transsion.ugcvideodetail.R$string.ugc_video_detail_added_to_list : com.transsion.ugcvideodetail.R$string.ugc_video_detail_removed_from_list);
        this.f66115a.a().C.setSelected(z10);
        UGCVideoInteractiveInfo interactiveInfo2 = ugcVideo.getInteractiveInfo();
        int iIntValue = (interactiveInfo2 == null || (favoriteNum = interactiveInfo2.getFavoriteNum()) == null || (numV = StringsKt.v(favoriteNum)) == null) ? 0 : numV.intValue();
        int iMax = !zC ? iIntValue + 1 : Math.max(0, iIntValue - 1);
        this.f66115a.a().C.setText(String.valueOf(iMax));
        UGCVideoInteractiveInfo interactiveInfo3 = ugcVideo.getInteractiveInfo();
        if (interactiveInfo3 != null) {
            interactiveInfo3.setFavoriteNum(String.valueOf(iMax));
        }
        UGCVideoInteractiveInfo interactiveInfo4 = ugcVideo.getInteractiveInfo();
        if (interactiveInfo4 != null) {
            interactiveInfo4.setHasFavorite(Boolean.valueOf(z10));
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f66115a.b();
        if (uGCImmVideoDetailViewModelB2 != null) {
            uGCImmVideoDetailViewModelB2.l0(ugcVideoId, z10);
        }
    }

    private final void e() {
        UGCVideo ugcVideo;
        String ugcVideoId;
        String likeNum;
        Integer numV;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        i iVar = this.f66116b;
        UGCImmVideo data = this.f66115a.getData();
        UGCVideo ugcVideo2 = data != null ? data.getUgcVideo() : null;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a("like", ugcVideo2, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        UGCImmVideo data2 = this.f66115a.getData();
        if (data2 == null || (ugcVideo = data2.getUgcVideo()) == null || (ugcVideoId = ugcVideo.getUgcVideoId()) == null) {
            return;
        }
        UGCVideoInteractiveInfo interactiveInfo = ugcVideo.getInteractiveInfo();
        boolean zC = interactiveInfo != null ? Intrinsics.c(interactiveInfo.getHasLike(), Boolean.TRUE) : false;
        boolean z10 = !zC;
        com.transsion.baseui.util.m.c(!zC ? com.transsion.ugcvideodetail.R$string.ugc_video_detail_liked : com.transsion.ugcvideodetail.R$string.ugc_video_detail_like_removed);
        UGCVideoInteractiveInfo interactiveInfo2 = ugcVideo.getInteractiveInfo();
        int iIntValue = (interactiveInfo2 == null || (likeNum = interactiveInfo2.getLikeNum()) == null || (numV = StringsKt.v(likeNum)) == null) ? 0 : numV.intValue();
        int iMax = !zC ? iIntValue + 1 : Math.max(0, iIntValue - 1);
        this.f66115a.a().D.setText(String.valueOf(iMax));
        this.f66115a.a().D.setSelected(z10);
        UGCVideoInteractiveInfo interactiveInfo3 = ugcVideo.getInteractiveInfo();
        if (interactiveInfo3 != null) {
            interactiveInfo3.setLikeNum(String.valueOf(iMax));
        }
        UGCVideoInteractiveInfo interactiveInfo4 = ugcVideo.getInteractiveInfo();
        if (interactiveInfo4 != null) {
            interactiveInfo4.setHasLike(Boolean.valueOf(z10));
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f66115a.b();
        if (uGCImmVideoDetailViewModelB2 != null) {
            uGCImmVideoDetailViewModelB2.m0(ugcVideoId, z10);
        }
    }

    private final void f() {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC;
        FragmentManager childFragmentManager;
        Object objM453constructorimpl;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC2 = this.f66115a.c();
        if (uGCImmVideoDetailFragmentC2 != null) {
            boolean z10 = true;
            if (!uGCImmVideoDetailFragmentC2.isAdded() || (uGCImmVideoDetailFragmentC = this.f66115a.c()) == null || (childFragmentManager = uGCImmVideoDetailFragmentC.getChildFragmentManager()) == null) {
                return;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
                if (uGCImmVideoDetailViewModelB == null || !uGCImmVideoDetailViewModelB.Y0()) {
                    z10 = false;
                }
                i iVar = this.f66116b;
                UGCImmVideo data = this.f66115a.getData();
                UGCVideo ugcVideo = data != null ? data.getUgcVideo() : null;
                UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f66115a.b();
                iVar.a("play_list", ugcVideo, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB2 != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB2.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
                UGCImmVideoPlayListDialog.INSTANCE.a(z10).show(childFragmentManager, "immPlayList");
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
    }

    private final void g() {
        UGCVideo ugcVideo;
        UGCVideo ugcVideo2;
        List<String> searchWord;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        i iVar = this.f66116b;
        UGCImmVideo data = this.f66115a.getData();
        UGCVideo ugcVideo3 = data != null ? data.getUgcVideo() : null;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a("search", ugcVideo3, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        UGCImmVideo data2 = this.f66115a.getData();
        Navigator navigatorK = TheRouter.c(SearchHotFragment.PAGE_NAME).K("keyword", (data2 == null || (ugcVideo2 = data2.getUgcVideo()) == null || (searchWord = ugcVideo2.getSearchWord()) == null) ? null : (String) CollectionsKt.k0(searchWord));
        UGCImmVideo data3 = this.f66115a.getData();
        Navigator navigatorZ = navigatorK.K("form_ugc_video_id", (data3 == null || (ugcVideo = data3.getUgcVideo()) == null) ? null : ugcVideo.getUgcVideoId()).z("back_exit", true);
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f66115a.c();
        Navigator.x(navigatorZ, uGCImmVideoDetailFragmentC != null ? uGCImmVideoDetailFragmentC.requireContext() : null, null, 2, null);
    }

    private final void h() {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC;
        FragmentManager childFragmentManager;
        ShareDialogFragment shareDialogFragment;
        UGCVideo ugcVideo;
        UGCVideo ugcVideo2;
        UGCVideo ugcVideo3;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        i iVar = this.f66116b;
        UGCImmVideo data = this.f66115a.getData();
        String ops = null;
        UGCVideo ugcVideo4 = data != null ? data.getUgcVideo() : null;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a("share", ugcVideo4, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        if (this.f66118d == null) {
            qx.a aVarH = this.f66115a.h();
            UserInfo userInfoI = aVarH != null ? aVarH.i() : null;
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.UGC_VIDEO;
            UGCImmVideo data2 = this.f66115a.getData();
            String ugcVideoId = (data2 == null || (ugcVideo3 = data2.getUgcVideo()) == null) ? null : ugcVideo3.getUgcVideoId();
            String userId = userInfoI != null ? userInfoI.getUserId() : null;
            String value = ReportType.UFC_VIDEO.getValue();
            UGCImmVideo data3 = this.f66115a.getData();
            String title = (data3 == null || (ugcVideo2 = data3.getUgcVideo()) == null) ? null : ugcVideo2.getTitle();
            UGCImmVideo data4 = this.f66115a.getData();
            if (data4 != null && (ugcVideo = data4.getUgcVideo()) != null) {
                ops = ugcVideo.getOps();
            }
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, ugcVideoId, userId, value, (3328 & 16) != 0 ? "" : title, (3328 & 32) != 0 ? "" : null, (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "UGCVideoDetail", (3328 & 1024) != 0 ? "" : ops, (3328 & 2048) != 0 ? "" : null);
            this.f66118d = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new c());
            }
        }
        try {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC2 = this.f66115a.c();
            if (uGCImmVideoDetailFragmentC2 == null || !uGCImmVideoDetailFragmentC2.isAdded() || (uGCImmVideoDetailFragmentC = this.f66115a.c()) == null || (childFragmentManager = uGCImmVideoDetailFragmentC.getChildFragmentManager()) == null) {
                return;
            }
            childFragmentManager.g0();
            ShareDialogFragment shareDialogFragment2 = this.f66118d;
            if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = this.f66118d) != null) {
                shareDialogFragment.show(childFragmentManager, "share");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void i() {
        UGCVideo ugcVideo;
        UGCVideoCreator creator;
        String uid;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        UGCImmVideo data = this.f66115a.getData();
        if (data == null || (ugcVideo = data.getUgcVideo()) == null || (creator = ugcVideo.getCreator()) == null || (uid = creator.getUid()) == null) {
            return;
        }
        boolean z10 = !Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE);
        i iVar = this.f66116b;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a(PushConstants.TOPIC_SUBSCRIBE, ugcVideo, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        this.f66115a.i(true);
        AppCompatImageView ivUgcImmSubscribe = this.f66115a.a().f62788p;
        Intrinsics.g(ivUgcImmSubscribe, "ivUgcImmSubscribe");
        uf.c.h(ivUgcImmSubscribe);
        ProgressBar pbUgcImmSubscribeLoading = this.f66115a.a().f62793u;
        Intrinsics.g(pbUgcImmSubscribeLoading, "pbUgcImmSubscribeLoading");
        uf.c.k(pbUgcImmSubscribeLoading);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f66115a.b();
        if (uGCImmVideoDetailViewModelB2 != null) {
            uGCImmVideoDetailViewModelB2.n0(uid, z10);
        }
    }

    private final void j() {
        UGCVideo ugcVideo;
        String uid;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f66115a.c();
        FragmentActivity activity = uGCImmVideoDetailFragmentC != null ? uGCImmVideoDetailFragmentC.getActivity() : null;
        UGCImmVideo data = this.f66115a.getData();
        if (data == null || (ugcVideo = data.getUgcVideo()) == null || activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        i iVar = this.f66116b;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66115a.b();
        iVar.a("user", ugcVideo, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        UGCVideoCreator creator = ugcVideo.getCreator();
        if (creator == null || (uid = creator.getUid()) == null) {
            return;
        }
        Navigator navigatorK = TheRouter.c("/profile/user_profile").K("userId", uid);
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC2 = this.f66115a.c();
        Navigator.x(navigatorK, uGCImmVideoDetailFragmentC2 != null ? uGCImmVideoDetailFragmentC2.requireContext() : null, null, 2, null);
    }

    public final void a(View view) {
        FragmentActivity activity;
        if (com.transsion.baseui.util.c.f42332a.a(view != null ? view.getId() : 0, 500L)) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoAction", "onclick, " + view, false, 4, null);
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R$id.ivUgcImmBack;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f66115a.c();
            if (uGCImmVideoDetailFragmentC == null || (activity = uGCImmVideoDetailFragmentC.getActivity()) == null) {
                return;
            }
            activity.finish();
            return;
        }
        int i11 = R$id.tvUgcImmLike;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            e();
            return;
        }
        int i12 = R$id.tvUgcImmFavorite;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            d();
            return;
        }
        int i13 = R$id.tvUgcImmComment;
        if (numValueOf != null && numValueOf.intValue() == i13) {
            b();
            return;
        }
        int i14 = R$id.ivUgcImmShare;
        if (numValueOf != null && numValueOf.intValue() == i14) {
            h();
            return;
        }
        int i15 = R$id.ivUgcImmDownload;
        if (numValueOf != null && numValueOf.intValue() == i15) {
            c();
            return;
        }
        int i16 = R$id.ivUgcImmUserCover;
        if (numValueOf == null || numValueOf.intValue() != i16) {
            int i17 = R$id.tvUgcImmUserName;
            if (numValueOf == null || numValueOf.intValue() != i17) {
                int i18 = R$id.ivUgcImmSubscribe;
                if (numValueOf != null && numValueOf.intValue() == i18) {
                    i();
                    return;
                }
                int i19 = R$id.layoutUgcImmTvEpisode;
                if (numValueOf != null && numValueOf.intValue() == i19) {
                    f();
                    return;
                }
                int i20 = R$id.layoutUgcImmTvSearch;
                if (numValueOf != null && numValueOf.intValue() == i20) {
                    g();
                    return;
                }
                return;
            }
        }
        j();
    }
}
