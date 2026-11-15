package com.transsion.cloud.share;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.transsion.cloud.share.ShareInfoDialogFragment;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.cloudcore.cloudapi.model.FileDownloadUrlInfo;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.netdisk.R;
import com.transsion.palmsdk.b;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.okdownload.a;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;
import defpackage.dr9;
import defpackage.el0;
import defpackage.g1a;
import defpackage.h27;
import defpackage.jz5;
import defpackage.mc2;
import defpackage.wx0;
import defpackage.xkb;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 F2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001GB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0017¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0005J/\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0016\u0010\u0012\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00110\u0010\"\u0004\u0018\u00010\u0011H\u0017¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0005J!\u0010\u0019\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u001cH\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0005J\u000f\u0010&\u001a\u00020%H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b(\u0010\u0005R\u0018\u0010+\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u00109\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00102R\u0018\u0010;\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00102R\u0018\u0010=\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00102R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006H"}, d2 = {"Lcom/transsion/cloud/share/ShareInfoDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "Lh27$b;", "Landroid/content/DialogInterface$OnClickListener;", MethodDecl.initName, "()V", "Lzfb;", "downloadFile", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onStart", "", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "onDestroy", "Landroid/content/DialogInterface;", "dialog", "which", "onClick", "(Landroid/content/DialogInterface;I)V", "K", "Lcom/transsion/widgetslib/dialog/d;", "F", "()Lcom/transsion/widgetslib/dialog/d;", "N", "L", "P", "Q", "M", "I", "", ExifInterface.LONGITUDE_EAST, "()Z", "J", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/widgetslib/dialog/d;", "mDialog", "Landroid/widget/LinearLayout;", CmcdData.OBJECT_TYPE_MANIFEST, "Landroid/widget/LinearLayout;", "llShareFrom", "Landroid/widget/TextView;", "n", "Landroid/widget/TextView;", "tvLoginHint", "Landroid/widget/ImageView;", "o", "Landroid/widget/ImageView;", "ivCover", TtmlNode.TAG_P, "tvFileName", "q", "tvFileSize", "r", "tvShareFrom", "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;", "s", "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;", "fileShareInfo", "Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;", "t", "Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;", "fileDownloadUrlInfo", "u", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShareInfoDialogFragment extends DialogFragment implements h27.b, DialogInterface.OnClickListener {

    public static final Companion INSTANCE = new Companion(null);

    public d mDialog;

    public LinearLayout llShareFrom;

    public TextView tvLoginHint;

    public ImageView ivCover;

    public TextView tvFileName;

    public TextView tvFileSize;

    public TextView tvShareFrom;

    public FileShareInfo fileShareInfo;

    public FileDownloadUrlInfo fileDownloadUrlInfo;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShareInfoDialogFragment a(FileShareInfo fileShareInfo, FileDownloadUrlInfo fileDownloadUrlInfo) {
            y45.j(fileShareInfo, "fileShareInfo");
            ShareInfoDialogFragment shareInfoDialogFragment = new ShareInfoDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("file_share_info", fileShareInfo);
            bundle.putParcelable("file_download_url_info", fileDownloadUrlInfo);
            shareInfoDialogFragment.setArguments(bundle);
            return shareInfoDialogFragment;
        }

        public Companion() {
        }
    }

    public static final void G(ShareInfoDialogFragment shareInfoDialogFragment) {
        shareInfoDialogFragment.K();
    }

    public static final void H(ShareInfoDialogFragment shareInfoDialogFragment) {
        shareInfoDialogFragment.K();
    }

    public static final void O(ShareInfoDialogFragment shareInfoDialogFragment, View view) {
        shareInfoDialogFragment.J();
    }

    private final void downloadFile() {
        String fileCoverUrl;
        String fileName;
        String contentHash;
        Log.d("ShareInfoDialogFragment", "downloadFile fileDownloadUrlInfo: " + this.fileDownloadUrlInfo);
        if (this.fileDownloadUrlInfo != null) {
            a aVar = new a();
            aVar.b(2);
            aVar.g = dr9.a.a();
            FileDownloadUrlInfo fileDownloadUrlInfo = this.fileDownloadUrlInfo;
            aVar.b = fileDownloadUrlInfo != null ? fileDownloadUrlInfo.getUrl() : null;
            FileShareInfo fileShareInfo = this.fileShareInfo;
            if (fileShareInfo == null || (fileCoverUrl = fileShareInfo.getFileCoverUrl()) == null) {
                fileCoverUrl = aVar.b;
            }
            aVar.c = fileCoverUrl;
            FileShareInfo fileShareInfo2 = this.fileShareInfo;
            aVar.e = fileShareInfo2 != null ? fileShareInfo2.getFileSize() : 0L;
            FileShareInfo fileShareInfo3 = this.fileShareInfo;
            if (fileShareInfo3 == null || (fileName = fileShareInfo3.getFileName()) == null) {
                fileName = "";
            }
            aVar.d = fileName;
            FileDownloadUrlInfo fileDownloadUrlInfo2 = this.fileDownloadUrlInfo;
            if (fileDownloadUrlInfo2 == null || (contentHash = fileDownloadUrlInfo2.getContentHash()) == null) {
                contentHash = aVar.b;
            }
            aVar.t = contentHash;
            Log.d("ShareInfoDialogFragment", "downloadFile fileDownloadTag: " + contentHash);
            try {
                GlobalDownloadManger.B().p(requireContext(), aVar);
            } catch (Exception e) {
                Log.e("ShareInfoDialogFragment", "downloadFile error: " + e.getMessage());
            }
        }
    }

    public final boolean E() {
        FileShareInfo fileShareInfo = this.fileShareInfo;
        if (fileShareInfo == null || !fileShareInfo.getShareExpired()) {
            return false;
        }
        ToastUtils.x(getString(R.string.visha_share_expired), new Object[0]);
        LogUtils.j("ShareInfoDialogFragment", "Share has expired for file: " + fileShareInfo.getFileName());
        return true;
    }

    public final d F() {
        boolean zS = b.s();
        String string = zS ? getString(R.string.visha_save_to_my_cloud) : getString(R.string.cancel);
        y45.g(string);
        String string2 = zS ? getString(R.string.visha_high_speed_download) : getString(R.string.login_now);
        y45.g(string2);
        FileShareInfo fileShareInfo = this.fileShareInfo;
        if (g1a.F(fileShareInfo != null ? fileShareInfo.getPageHost() : null, com.transsion.cloudcore.cloudapi.impl.a.a.i(), false, 2, null)) {
            this.mDialog = new d.a(requireContext()).D(R.layout.dialog_share_info).e(false).c(false).n(string, this).w(string2, this).a();
        } else {
            this.mDialog = new d.a(requireContext()).D(R.layout.dialog_share_info).e(false).c(false).w(string2, this).a();
        }
        d dVar = this.mDialog;
        y45.g(dVar);
        return dVar;
    }

    public final void I() {
        try {
            b.g(requireActivity());
            LogUtils.i("ShareInfoDialogFragment", "navigateToLogin");
        } catch (Exception e) {
            LogUtils.l("ShareInfoDialogFragment", "navigateToLogin error: " + e.getMessage());
        }
    }

    public final void J() {
        String url;
        String fileCoverUrl;
        String fileName;
        String fileId;
        if (E()) {
            return;
        }
        if (!b.s()) {
            LogUtils.j("ShareInfoDialogFragment", "navigateToVideoPlay not login");
            return;
        }
        FileShareInfo fileShareInfo = this.fileShareInfo;
        if (fileShareInfo != null) {
            CloudVideoPlayInfoManager.a.a0(fileShareInfo.getFileId(), fileShareInfo);
        }
        FileShareInfo fileShareInfo2 = this.fileShareInfo;
        String str = "";
        String str2 = (fileShareInfo2 == null || (fileId = fileShareInfo2.getFileId()) == null) ? "" : fileId;
        FileShareInfo fileShareInfo3 = this.fileShareInfo;
        String str3 = (fileShareInfo3 == null || (fileName = fileShareInfo3.getFileName()) == null) ? "" : fileName;
        FileShareInfo fileShareInfo4 = this.fileShareInfo;
        Long lValueOf = Long.valueOf(fileShareInfo4 != null ? fileShareInfo4.getFileSize() : 0L);
        FileShareInfo fileShareInfo5 = this.fileShareInfo;
        PlayVideoData playVideoData = new VideoCloudData(null, str2, str3, lValueOf, null, null, null, null, null, null, 0L, null, (fileShareInfo5 == null || (fileCoverUrl = fileShareInfo5.getFileCoverUrl()) == null) ? "" : fileCoverUrl, null, null, null, 0, null, null, null, 1044465, null).toPlayVideoData();
        playVideoData.needRecordVideoStates = false;
        FileDownloadUrlInfo fileDownloadUrlInfo = this.fileDownloadUrlInfo;
        if (fileDownloadUrlInfo != null && (url = fileDownloadUrlInfo.getUrl()) != null) {
            str = url;
        }
        playVideoData.mShareDownloadUrl = str;
        playVideoData.mShareSource = 2;
        VideoPlayerActivityInner.F2(getActivity(), playVideoData);
        dismiss();
    }

    public final void K() {
        FileShareInfo fileShareInfo;
        dismiss();
        try {
            FragmentActivity activity = getActivity();
            FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
            if (supportFragmentManager == null || (fileShareInfo = this.fileShareInfo) == null || this.fileDownloadUrlInfo == null) {
                return;
            }
            Companion companion = INSTANCE;
            y45.g(fileShareInfo);
            companion.a(fileShareInfo, this.fileDownloadUrlInfo).show(supportFragmentManager, "ShareInfoDialog");
        } catch (Exception e) {
            LogUtils.l("ShareInfoDialogFragment", "recreateDialog error: " + e.getMessage());
        }
    }

    public final void L() {
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
    }

    public final void M() {
        FileShareInfo fileShareInfo = this.fileShareInfo;
        if (fileShareInfo != null) {
            jz5.c(fileShareInfo.getFileName(), fileShareInfo.getFileSize());
            el0.d(kotlinx.coroutines.d.a(mc2.b()), null, null, new ShareInfoDialogFragment$saveFileToMyCloudDrive$1$1(this, fileShareInfo, null), 3, null);
        }
    }

    public final void N() {
        d dVar = this.mDialog;
        if (dVar != null) {
            boolean zS = b.s();
            this.llShareFrom = (LinearLayout) dVar.findViewById(R.id.ll_share_from);
            this.tvLoginHint = (TextView) dVar.findViewById(R.id.tv_login_hint);
            this.tvFileName = (TextView) dVar.findViewById(R.id.tv_file_name);
            this.tvFileSize = (TextView) dVar.findViewById(R.id.tv_file_size);
            this.tvShareFrom = (TextView) dVar.findViewById(R.id.tv_share_from);
            this.ivCover = (ImageView) dVar.findViewById(R.id.iv_video_cover);
            LinearLayout linearLayout = this.llShareFrom;
            if (linearLayout != null) {
                linearLayout.setVisibility(zS ? 0 : 8);
            }
            TextView textView = this.tvLoginHint;
            if (textView != null) {
                textView.setVisibility(zS ? 8 : 0);
            }
        }
        FileShareInfo fileShareInfo = this.fileShareInfo;
        if (fileShareInfo != null) {
            TextView textView2 = this.tvFileName;
            if (textView2 != null) {
                textView2.setText(fileShareInfo.getFileName());
            }
            TextView textView3 = this.tvFileSize;
            if (textView3 != null) {
                textView3.setText(xkb.a.a(fileShareInfo.getFileSize()));
            }
            TextView textView4 = this.tvShareFrom;
            if (textView4 != null) {
                textView4.setText(getString(R.string.visha_share_from, fileShareInfo.getShareCreatorName()));
            }
            ImageView imageView = this.ivCover;
            if (imageView != null) {
                Glide.with(requireContext()).load2(fileShareInfo.getFileCoverUrl()).into(imageView);
                imageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        ShareInfoDialogFragment.O(this.b, view);
                    }
                });
            }
        }
    }

    public final void P() {
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
    }

    public final void Q() {
        if (b.s()) {
            LinearLayout linearLayout = this.llShareFrom;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            TextView textView = this.tvLoginHint;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        LinearLayout linearLayout2 = this.llShareFrom;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        TextView textView2 = this.tvLoginHint;
        if (textView2 != null) {
            textView2.setVisibility(0);
        }
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        FragmentActivity activity;
        y45.j(args, "args");
        if (wx0.a.a()) {
            return;
        }
        if (eventId != 1031) {
            if (eventId == 1032 && (activity = getActivity()) != null) {
                activity.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        ShareInfoDialogFragment.H(this.b);
                    }
                });
                return;
            }
            return;
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            activity2.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    ShareInfoDialogFragment.G(this.b);
                }
            });
        }
    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        boolean zS = b.s();
        if (which == -2) {
            if (!zS) {
                dismiss();
                return;
            } else {
                if (E()) {
                    return;
                }
                M();
                return;
            }
        }
        if (which != -1) {
            return;
        }
        if (!zS) {
            I();
        } else {
            if (E()) {
                return;
            }
            downloadFile();
            dismiss();
        }
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        this.fileShareInfo = arguments != null ? (FileShareInfo) arguments.getParcelable("file_share_info") : null;
        Bundle arguments2 = getArguments();
        this.fileDownloadUrlInfo = arguments2 != null ? (FileDownloadUrlInfo) arguments2.getParcelable("file_download_url_info") : null;
        this.mDialog = F();
        L();
        d dVar = this.mDialog;
        y45.g(dVar);
        return dVar;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        P();
    }

    @Override
    public void onStart() {
        super.onStart();
        N();
        Q();
    }
}
