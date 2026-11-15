package com.transsnet.downloader.view;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import bx.r;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.push.notification.permission.NoticePermissionFrom;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.manager.p;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.k;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 I2\u00020\u0001:\u0001JB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\u0003J\u0017\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001d\u00108\u001a\u0004\u0018\u0001048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b6\u00107R\u001d\u0010=\u001a\u0004\u0018\u0001098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00100\u001a\u0004\b;\u0010<R\u001b\u0010B\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u00100\u001a\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006K"}, d2 = {"Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "H0", "()I", "", "Q0", "P0", "M0", "L0", "K0", "J0", "", MediaItem.MUSIC_FLOAT_STATE_PLAY, "N0", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "O0", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "onDestroy", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "c", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "Lbx/r;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lbx/r;", "mViewBinding", "Lcom/transsnet/downloader/manager/g;", "e", "Lkotlin/Lazy;", "G0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lep/a;", "f", "getMAudioApi", "()Lep/a;", "mAudioApi", "Lep/b;", "g", "getMFloatApi", "()Lep/b;", "mFloatApi", "Lsi/a;", "h", "F0", "()Lsi/a;", "audioDao", "i", "Ljava/lang/Integer;", "mTitle", "j", "Lcom/transsion/baselib/db/download/DownloadBean;", "data", CampaignEx.JSON_KEY_AD_K, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadingTipsDialogFragment extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    private BiddingNativeManager nativeManager;

    private r mViewBinding;

    private final Lazy downloadManager;

    private final Lazy mAudioApi;

    private final Lazy mFloatApi;

    private final Lazy audioDao;

    private Integer mTitle;

    private DownloadBean data;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadingTipsDialogFragment a(int i10) {
            DownloadingTipsDialogFragment downloadingTipsDialogFragment = new DownloadingTipsDialogFragment();
            downloadingTipsDialogFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("arguments_file_size", Integer.valueOf(i10))));
            return downloadingTipsDialogFragment;
        }

        private Companion() {
        }
    }

    public DownloadingTipsDialogFragment() {
        super(R$layout.downloading_tips_dialog_fragment_layout);
        this.downloadManager = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadingTipsDialogFragment.E0();
            }
        });
        this.mAudioApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadingTipsDialogFragment.mAudioApi_delegate$lambda$1();
            }
        });
        this.mFloatApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadingTipsDialogFragment.mFloatApi_delegate$lambda$2();
            }
        });
        this.audioDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadingTipsDialogFragment.D0();
            }
        });
    }

    public static final si.a D0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).n1();
    }

    public static final com.transsnet.downloader.manager.g E0() {
        return p.f57282a.a(Utils.a());
    }

    public final si.a F0() {
        return (si.a) this.audioDao.getValue();
    }

    public final com.transsnet.downloader.manager.g G0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final int H0() {
        return y.c() / 2;
    }

    public static final void I0() {
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB == null || activityB.isFinishing() || activityB.isDestroyed() || !(activityB instanceof FragmentActivity) || vo.e.f73683a.f((FragmentActivity) activityB, NoticePermissionFrom.DOWNLOAD_RES)) {
            return;
        }
        com.transsnet.downloader.util.d.f57712a.i("download");
    }

    private final void J0() {
        DownloadBean downloadBean = this.data;
        if (downloadBean != null) {
            if (downloadBean == null || !downloadBean.isUGCVideo()) {
                Navigator.x(TheRouter.c(pr.a.f69252a.b()).K("id", downloadBean.getSubjectId()).F("ep", downloadBean.getEp()).K("ops", downloadBean.getOps()).G("ms", downloadBean.getReadProgress()).F("ep", downloadBean.getEp()), getContext(), null, 2, null);
            } else {
                Navigator.x(TheRouter.c("/ugc_video/detail").K("id", downloadBean.getUgcVideoId()).K("collection_id", downloadBean.getUgcVideoCollectionId()).K("ops", downloadBean.getOps()).z("ugc_without_history", true).K("videoStyle", UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue()), getActivity(), null, 2, null);
            }
        }
    }

    private final void K0() {
        String strH;
        DownloadBean downloadBean = this.data;
        if (downloadBean != null && downloadBean.isUGCVideo()) {
            DownloadBean downloadBean2 = this.data;
            if (downloadBean2 != null && downloadBean2.getUgcVideoIsVertical()) {
                Navigator navigatorC = TheRouter.c("/ugc_video/detail");
                DownloadBean downloadBean3 = this.data;
                Navigator navigatorK = navigatorC.K("id", downloadBean3 != null ? downloadBean3.getUgcVideoId() : null);
                DownloadBean downloadBean4 = this.data;
                Navigator navigatorK2 = navigatorK.K("collection_id", downloadBean4 != null ? downloadBean4.getUgcVideoCollectionId() : null);
                DownloadBean downloadBean5 = this.data;
                k.p(navigatorK2.K("ops", downloadBean5 != null ? downloadBean5.getOps() : null).z("ugc_without_history", true).K("videoStyle", UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue()));
                return;
            }
            Navigator navigatorC2 = TheRouter.c("/ugc_video/local_detail");
            DownloadBean downloadBean6 = this.data;
            Navigator navigatorK3 = navigatorC2.K("id", downloadBean6 != null ? downloadBean6.getUgcVideoId() : null);
            DownloadBean downloadBean7 = this.data;
            Navigator navigatorK4 = navigatorK3.K("resource_id", downloadBean7 != null ? downloadBean7.getResourceId() : null);
            DownloadBean downloadBean8 = this.data;
            Navigator navigatorK5 = navigatorK4.K("ugcCategory", downloadBean8 != null ? downloadBean8.getUgcVideoType() : null);
            DownloadBean downloadBean9 = this.data;
            k.p(navigatorK5.K("ops", downloadBean9 != null ? downloadBean9.getOps() : null));
            return;
        }
        DownloadBean downloadBean10 = this.data;
        boolean zIsCompleted = downloadBean10 != null ? downloadBean10.isCompleted() : false;
        com.transsnet.downloader.manager.g gVarG0 = G0();
        DownloadBean downloadBean11 = this.data;
        Intrinsics.e(downloadBean11);
        gVarG0.l(downloadBean11);
        if (zIsCompleted) {
            strH = null;
        } else {
            com.transsnet.downloader.manager.g gVarA = p.f57282a.a(Utils.a());
            DownloadBean downloadBean12 = this.data;
            Intrinsics.e(downloadBean12);
            strH = gVarA.h(downloadBean12);
        }
        Navigator navigatorC3 = TheRouter.c("/video/detail");
        DownloadBean downloadBean13 = this.data;
        Navigator navigatorK6 = navigatorC3.K("extra_local_path", downloadBean13 != null ? downloadBean13.getPath() : null);
        DownloadBean downloadBean14 = this.data;
        Navigator navigatorK7 = navigatorK6.K("extra_url", downloadBean14 != null ? downloadBean14.getUrl() : null);
        DownloadBean downloadBean15 = this.data;
        Navigator navigatorF = navigatorK7.F("subject_type", downloadBean15 != null ? downloadBean15.getType() : 2);
        DownloadBean downloadBean16 = this.data;
        Navigator navigatorK8 = navigatorF.K("id", downloadBean16 != null ? downloadBean16.getSubjectId() : null).K("extra_proxy_url", strH);
        DownloadBean downloadBean17 = this.data;
        Navigator navigatorK9 = navigatorK8.K("extra_resource_id", downloadBean17 != null ? downloadBean17.getResourceId() : null);
        DownloadBean downloadBean18 = this.data;
        Navigator navigatorK10 = navigatorK9.K("extra_subject_id", downloadBean18 != null ? downloadBean18.getSubjectId() : null);
        DownloadBean downloadBean19 = this.data;
        Navigator navigatorK11 = navigatorK10.K("extra_name", downloadBean19 != null ? downloadBean19.getName() : null);
        DownloadBean downloadBean20 = this.data;
        Navigator navigatorZ = navigatorK11.K("extra_post_id", downloadBean20 != null ? downloadBean20.getPostId() : null).z("extra_completed", zIsCompleted);
        DownloadBean downloadBean21 = this.data;
        Navigator navigatorZ2 = navigatorZ.z("extra_is_series", downloadBean21 != null ? downloadBean21.isSeries() : false);
        DownloadBean downloadBean22 = this.data;
        Navigator.x(navigatorZ2.K("extra_page_from", downloadBean22 != null ? downloadBean22.getPageFrom() : null), getContext(), null, 2, null);
    }

    private final void L0() {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new DownloadingTipsDialogFragment$opnAudio$1(this, null), 3, null);
    }

    private final void M0() {
        DownloadBean downloadBean = this.data;
        if (downloadBean == null) {
            return;
        }
        if (downloadBean == null || !downloadBean.isVideo()) {
            L0();
            return;
        }
        DownloadBean downloadBean2 = this.data;
        if (downloadBean2 != null && downloadBean2.isShotTV()) {
            J0();
            return;
        }
        Activity activityB = com.blankj.utilcode.util.a.b();
        String simpleName = activityB.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        if (StringsKt.c0(simpleName, "VideoDetailActivity", false, 2, null)) {
            activityB.finish();
        }
        K0();
    }

    private final void N0(boolean play) {
        String pageFrom;
        DownloadBean downloadBean = this.data;
        if (downloadBean == null || (pageFrom = downloadBean.getPageFrom()) == null) {
            return;
        }
        qi.h hVar = qi.h.f69682a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("dialog_name", "download_tips");
        linkedHashMap.put(EventConstants.KEY_ACTION, play ? MediaItem.MUSIC_FLOAT_STATE_PLAY : MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        Unit unit = Unit.f64096a;
        hVar.o(pageFrom, linkedHashMap);
    }

    private final void P0() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadingTipsDialogFragment$showAd$1(this, null), 3, null);
    }

    private final void Q0() {
        AppCompatTextView appCompatTextView;
        r rVar = this.mViewBinding;
        if (rVar != null) {
            rVar.f16219d.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadingTipsDialogFragment.R0(this.f57768a, view);
                }
            });
            rVar.f16221f.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadingTipsDialogFragment.S0(this.f57769a, view);
                }
            });
            rVar.f16222g.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadingTipsDialogFragment.T0(this.f57770a, view);
                }
            });
        }
        r rVar2 = this.mViewBinding;
        if (rVar2 == null || (appCompatTextView = rVar2.f16224i) == null) {
            return;
        }
        appCompatTextView.setText(" " + String.valueOf(this.mTitle) + " ");
    }

    public static final void R0(DownloadingTipsDialogFragment downloadingTipsDialogFragment, View view) {
        downloadingTipsDialogFragment.dismissAllowingStateLoss();
    }

    public static final void S0(DownloadingTipsDialogFragment downloadingTipsDialogFragment, View view) {
        downloadingTipsDialogFragment.N0(false);
        DownloadBean downloadBean = downloadingTipsDialogFragment.data;
        if (downloadBean == null || !downloadBean.isUGCVideo()) {
            Navigator.x(TheRouter.c("/download/panel_activity").F("extra_page_index", 0), downloadingTipsDialogFragment.getContext(), null, 2, null);
        } else {
            Navigator.x(TheRouter.c("/download/ugc_my_downloads").F("main_tab_index", 0), downloadingTipsDialogFragment.getContext(), null, 2, null);
        }
        downloadingTipsDialogFragment.dismissAllowingStateLoss();
    }

    public static final void T0(DownloadingTipsDialogFragment downloadingTipsDialogFragment, View view) {
        downloadingTipsDialogFragment.N0(true);
        downloadingTipsDialogFragment.M0();
        downloadingTipsDialogFragment.dismissAllowingStateLoss();
    }

    public final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    public final ep.b getMFloatApi() {
        return (ep.b) this.mFloatApi.getValue();
    }

    public static final ep.a mAudioApi_delegate$lambda$1() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    public static final ep.b mFloatApi_delegate$lambda$2() {
        return (ep.b) TheRouter.d(ep.b.class, new Object[0]);
    }

    public final void O0(DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        this.data = downloadBean;
        if (downloadBean == null || !downloadBean.isShotTV()) {
            DownloadManagerApi.f56187j.a().T(downloadBean.getSubjectId(), downloadBean.getResourceId(), downloadBean.isSeries(), downloadBean.getTotalEpisode(), true, downloadBean.isMultiresolution());
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mTitle = Integer.valueOf(arguments.getInt("arguments_file_size"));
        }
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f42330a.b(contextRequireContext);
            attributes.height = H0();
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BiddingNativeManager biddingNativeManager = this.nativeManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        this.nativeManager = null;
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                DownloadingTipsDialogFragment.I0();
            }
        }, 1000L);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.mViewBinding = r.a(view);
        Q0();
        P0();
    }
}
