package com.transsnet.downloader.popup;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.adapter.u0;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.transsnet.downloader.dialog.DownloadReDetectorSaveDialog;
import com.transsnet.downloader.util.DocumentsUtils;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import on.e0;

public final class PopupManager {

    public static final a f57299f = new a(null);

    private final int f57300a;

    private final DownloadBean f57301b;

    private final Lazy f57302c;

    private u0.b f57303d;

    private Function0 f57304e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements PermissionUtils.b {

        final Context f57306b;

        final boolean f57307c;

        final Function2 f57308d;

        b(Context context, boolean z10, Function2 function2) {
            this.f57306b = context;
            this.f57307c = z10;
            this.f57308d = function2;
        }

        @Override
        public void onDenied() {
            PopupManager.this.q(this.f57306b, this.f57307c, this.f57308d);
        }

        @Override
        public void onGranted() {
            PopupManager.this.q(this.f57306b, this.f57307c, this.f57308d);
        }
    }

    public PopupManager(int i10, DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        this.f57300a = i10;
        this.f57301b = downloadBean;
        this.f57302c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return PopupManager.o();
            }
        });
    }

    private final void C(final Context context) {
        List listQ;
        String value;
        Boolean boolM1;
        if (this.f57301b.getType() == 1) {
            listQ = CollectionsKt.q(new Pair(Utils.a().getString(R$string.help), TmcConstants.MENU_KEY_FEEDBACK), new Pair(Utils.a().getString(R$string.download_dialog_audio_playlist), "audio_add"), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE));
        } else {
            ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sb_show_save_to", false, 2, null);
            boolean zBooleanValue = (configBeanD == null || (value = configBeanD.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) ? false : boolM1.booleanValue();
            List listQ2 = CollectionsKt.q(new Pair(Utils.a().getString(R$string.help), TmcConstants.MENU_KEY_FEEDBACK), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE));
            if (!ij.o.f62115a.i()) {
                listQ2.add(1, new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb"));
            }
            if (zBooleanValue) {
                listQ2.add(2, new Pair(Utils.a().getString(R$string.download_save_to_dot), "transfer_file"));
            }
            listQ = listQ2;
        }
        DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(listQ);
        downloadMoreDialogA.s0(new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return PopupManager.D(this.f57311a, context, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.k0(context, "more_Dialog");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Unit D(PopupManager popupManager, Context context, int i10, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (str2 != null) {
            switch (str2.hashCode()) {
                case -2014367408:
                    if (str2.equals("transfer_file")) {
                        L(popupManager, context, false, null, 6, null);
                    }
                    break;
                case -1335458389:
                    if (str2.equals(RequestParameters.SUBRESOURCE_DELETE)) {
                        popupManager.v(context);
                    }
                    break;
                case -191501435:
                    if (str2.equals(TmcConstants.MENU_KEY_FEEDBACK)) {
                        popupManager.J();
                    }
                    break;
                case 188508344:
                    if (str2.equals("audio_add")) {
                        popupManager.n();
                    }
                    break;
                case 1086195281:
                    if (str2.equals("transfer_file_2_mb")) {
                        popupManager.P();
                    }
                    break;
            }
        }
        return Unit.f64096a;
    }

    private final void E(final Context context) {
        DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.help), TmcConstants.MENU_KEY_FEEDBACK), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE)));
        downloadMoreDialogA.s0(new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return PopupManager.F(this.f57313a, context, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.k0(context, "more_Dialog");
    }

    public static final Unit F(PopupManager popupManager, Context context, int i10, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (i10 == 0) {
            popupManager.J();
        } else if (i10 == 1) {
            popupManager.v(context);
        }
        return Unit.f64096a;
    }

    private final void G(final String str, final Function1 function1) {
        try {
            DocumentsUtils.f57670a.k(str, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PopupManager.H(str, function1, (Uri) obj);
                }
            });
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static final Unit H(String str, Function1 function1, Uri uri) {
        if (uri != null) {
            wf.a.C0922a.f(wf.a.f74274a, "SaveVideo", "onStoragePermissionGranted------- uri = " + uri, false, 4, null);
            DocumentsUtils.f57670a.m(Utils.a(), str, uri);
            function1.invoke(Boolean.TRUE);
        } else {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f64096a;
    }

    private final void J() {
        ij.k.p(TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DOWNLOAD").K("subject_id", this.f57301b.getSubjectId()));
    }

    public static void L(PopupManager popupManager, Context context, boolean z10, Function2 function2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            function2 = null;
        }
        popupManager.K(context, z10, function2);
    }

    private final void M(final Context context, final boolean z10, final Function2 function2) {
        String rootPath;
        if (this.f57301b.getIsTransferFailed() || (rootPath = this.f57301b.getRootPath()) == null) {
            rootPath = ui.b.f73084a.e();
        }
        final DownloadReDetectorSaveDialog downloadReDetectorSaveDialogA = DownloadReDetectorSaveDialog.INSTANCE.a(rootPath, z10);
        downloadReDetectorSaveDialogA.I0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PopupManager.N(this.f57319a, context, downloadReDetectorSaveDialogA, z10, function2, (yw.b) obj);
            }
        });
        downloadReDetectorSaveDialogA.H0(new Function0() {
            @Override
            public final Object invoke() {
                return PopupManager.O();
            }
        });
        downloadReDetectorSaveDialogA.k0(context, "save_loading_Dialog");
    }

    public static final Unit N(PopupManager popupManager, Context context, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, boolean z10, Function2 function2, yw.b pathInfo) {
        Intrinsics.h(pathInfo, "pathInfo");
        popupManager.z(context, pathInfo, downloadReDetectorSaveDialog, z10, function2);
        return Unit.f64096a;
    }

    public static final Unit O() {
        return Unit.f64096a;
    }

    private final void P() {
        Function0 function0 = this.f57304e;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void n() {
        String postId = this.f57301b.getPostId();
        if (postId == null) {
            postId = this.f57301b.getUrl();
        }
        String cover = this.f57301b.getCover();
        Long duration = this.f57301b.getDuration();
        Long size = this.f57301b.getSize();
        String url = this.f57301b.getUrl();
        String name = this.f57301b.getName();
        String subjectId = this.f57301b.getSubjectId();
        String subjectName = this.f57301b.getSubjectName();
        int ep2 = this.f57301b.getEp();
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$audioAddPlayList$1(new AudioBean(postId, cover, duration, size, url, name, "", null, null, null, null, null, null, this.f57301b.getPostId(), subjectId, this.f57301b.getGroupId(), 0, subjectName, this.f57301b.getSe(), ep2, 73600, null), null), 3, null);
    }

    public static final ep.a o() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    private final Pair p() {
        if (Build.VERSION.SDK_INT <= 28) {
            String str = "";
            String strB = str;
            for (yw.f fVar : DownloadSDCardUtil.f57674a.b()) {
                if (fVar.c()) {
                    strB = fVar.b();
                    str = strB;
                }
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "SaveVideo", "onStoragePermissionGranted，1  sdRootPath = " + str, false, 4, null);
            if (str.length() > 0) {
                DocumentsUtils documentsUtils = DocumentsUtils.f57670a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                boolean zD = documentsUtils.d(applicationA, str);
                wf.a.C0922a.f(c0922a, "SaveVideo", " check other permission, showOpenDocumentTree = " + zD, false, 4, null);
                if (zD) {
                    return new Pair(Boolean.FALSE, strB);
                }
            }
        }
        return new Pair(Boolean.FALSE, "");
    }

    public final void q(final Context context, final boolean z10, final Function2 function2) {
        Pair pairP = p();
        if (((Boolean) pairP.getFirst()).booleanValue()) {
            G((String) pairP.getSecond(), new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PopupManager.r(this.f57315a, context, z10, function2, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            M(context, z10, function2);
        }
    }

    public static final Unit r(PopupManager popupManager, Context context, boolean z10, Function2 function2, boolean z11) {
        if (z11) {
            popupManager.M(context, z10, function2);
        }
        return Unit.f64096a;
    }

    private final void s() {
        ep.a aVarX;
        com.transsnet.downloader.manager.g gVarA = com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
        DownloadBean downloadBean = this.f57301b;
        if (downloadBean.getStatus() != 10) {
            gVarA.m(downloadBean, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PopupManager.u(this.f57326a, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            if (downloadBean.getSeriesList().isEmpty()) {
                fh.b.f60176a.e(Utils.a().getString(R$string.download_delete_success));
                u0.b bVar = this.f57303d;
                if (bVar != null) {
                    bVar.a(this.f57300a, 4);
                }
                String resourceId = this.f57301b.getResourceId();
                if (resourceId != null) {
                    e0.f67859a.s(resourceId);
                    return;
                }
                return;
            }
            gVarA.y(downloadBean.getSeriesList(), new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PopupManager.t(this.f57325a, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (downloadBean.getType() == 1 && (aVarX = x()) != null && aVarX.a(downloadBean.getUrl())) {
            ep.b bVar2 = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
            if (bVar2 != null) {
                bVar2.hide();
            }
            ep.a aVarX2 = x();
            if (aVarX2 != null) {
                aVarX2.stop();
            }
        }
    }

    public static final Unit t(PopupManager popupManager, boolean z10) {
        fh.b.f60176a.e(Utils.a().getString(R$string.download_delete_success));
        u0.b bVar = popupManager.f57303d;
        if (bVar != null) {
            bVar.a(popupManager.f57300a, 4);
        }
        String resourceId = popupManager.f57301b.getResourceId();
        if (resourceId != null) {
            e0.f67859a.s(resourceId);
        }
        return Unit.f64096a;
    }

    public static final Unit u(PopupManager popupManager, boolean z10) {
        fh.b.f60176a.e(Utils.a().getString(R$string.download_delete_success));
        u0.b bVar = popupManager.f57303d;
        if (bVar != null) {
            bVar.a(popupManager.f57300a, 4);
        }
        String resourceId = popupManager.f57301b.getResourceId();
        if (resourceId != null) {
            e0.f67859a.s(resourceId);
        }
        return Unit.f64096a;
    }

    private final void v(Context context) {
        String string;
        int rootPathType = this.f57301b.getRootPathType();
        if (rootPathType != 2) {
            string = rootPathType != 3 ? context.getString(com.transsion.lib.push.R$string.app_name) : context.getString(R$string.str_download_dialog_path_albums);
        } else {
            string = context.getString(R$string.sdcard_name);
        }
        Intrinsics.e(string);
        DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(context.getString(R$string.cancel), context.getString(R$string.delete), context.getString(R$string.download_delete_tips, string), null);
        downloadConfirmDialogA.s0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PopupManager.w(this.f57324a, ((Boolean) obj).booleanValue());
            }
        });
        downloadConfirmDialogA.k0(context, "confirm_Dialog");
    }

    public static final Unit w(PopupManager popupManager, boolean z10) {
        if (z10) {
            popupManager.s();
        }
        return Unit.f64096a;
    }

    private final ep.a x() {
        return (ep.a) this.f57302c.getValue();
    }

    public final String y(boolean z10) {
        if (z10) {
            return Utils.a().getString(R$string.download_move_successful) + "\n" + Utils.a().getString(R$string.download_save_subtitle_tips);
        }
        return Utils.a().getString(R$string.download_save_successful) + "\n" + Utils.a().getString(R$string.download_save_subtitle_tips);
    }

    private final void z(Context context, yw.b bVar, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, boolean z10, Function2 function2) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PopupManager$handleTransferFile$1(this, z10, context, bVar, downloadReDetectorSaveDialog, function2, null), 3, null);
    }

    public final void A(u0.b listener) {
        Intrinsics.h(listener, "listener");
        this.f57303d = listener;
    }

    public final void B(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f57304e = callback;
    }

    public final void I(View anchorView, int i10) {
        Intrinsics.h(anchorView, "anchorView");
        if (i10 == 1) {
            Context context = anchorView.getContext();
            Intrinsics.g(context, "getContext(...)");
            C(context);
        } else {
            Context context2 = anchorView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            E(context2);
        }
    }

    public final void K(Context context, boolean z10, Function2 function2) {
        Intrinsics.h(context, "context");
        if (Build.VERSION.SDK_INT > 29) {
            M(context, z10, function2);
        } else if (PermissionUtils.s("android.permission.WRITE_EXTERNAL_STORAGE")) {
            q(context, z10, function2);
        } else {
            PermissionUtils.x("android.permission.WRITE_EXTERNAL_STORAGE").m(new b(context, z10, function2)).y();
        }
    }
}
