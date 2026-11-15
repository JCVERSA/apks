package com.transsion.cloud.updownload.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lzy.okgo.model.Progress;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.cloud.updownload.activity.TransferSheetDialogActivity;
import com.transsion.cloud.updownload.adapter.TransmittedAdapter;
import com.transsion.cloud.updownload.fragment.TransmitMainFragment;
import com.transsion.cloud.updownload.viewmodel.TransferDataViewModel;
import com.transsion.cloud.updownload.widgets.TransferOperationBar;
import com.transsion.cloud.upload.task.NewUploadTask;
import com.transsion.cloud_drive.base.api.model.SpaceStatistics;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.utils.CloudTaskUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.utils.LoadDataUtils;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.sniffer_load.DownloadGuideActivity;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.ao;
import defpackage.b23;
import defpackage.cu4;
import defpackage.cz5;
import defpackage.f5;
import defpackage.gf7;
import defpackage.h27;
import defpackage.hb0;
import defpackage.hf7;
import defpackage.if7;
import defpackage.k29;
import defpackage.kz6;
import defpackage.m21;
import defpackage.mc7;
import defpackage.p06;
import defpackage.pz6;
import defpackage.r06;
import defpackage.raa;
import defpackage.ri4;
import defpackage.rw4;
import defpackage.s44;
import defpackage.se;
import defpackage.srb;
import defpackage.t6b;
import defpackage.t74;
import defpackage.vb;
import defpackage.yx2;
import defpackage.zf1;
import defpackage.zz0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public class TransmitMainFragment extends PlayBaseFragment implements cu4, rw4 {
    public boolean A;
    public boolean B;
    public TransferOperationBar C;
    public VideoMainRecyclerView D;
    public RecyclerViewFastScroller E;
    public TransmittedAdapter F;
    public TransferDataViewModel G;
    public t6b J;
    public com.transsion.widgetslib.dialog.d K;
    public com.transsion.widgetslib.dialog.c L;
    public boolean N;
    public RelativeLayout O;
    public MainViewModel P;
    public boolean l;
    public ConstraintLayout m;
    public View n;
    public TextView o;
    public View p;
    public LinearLayout q;
    public TextView r;
    public ProgressBar s;
    public TextView t;
    public TextView u;
    public TextView v;
    public ImageView w;
    public ImageView x;
    public TextView y;
    public boolean z;
    public List H = new ArrayList();
    public List I = new ArrayList();
    public boolean M = true;
    public ActivityResultLauncher Q = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
        @Override
        public final void onActivityResult(Object obj) {
            this.a.q1((ActivityResult) obj);
        }
    });
    public final Observer R = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.r1((Boolean) obj);
        }
    };

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    public class b extends hf7 {
        public b(String str) {
            super(str);
        }

        @Override
        public void a(int i) {
            TransmitMainFragment transmitMainFragment = TransmitMainFragment.this;
            if (transmitMainFragment.C != null) {
                transmitMainFragment.W0(i);
            }
        }
    }

    public class c implements t6b.b {
        public c() {
        }

        @Override
        public void a(final double d) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.f(d);
                }
            });
        }

        @Override
        public void b(boolean z) {
            try {
                if (((BaseFragment) TransmitMainFragment.this).mContext != null && TransmitMainFragment.this.K != null && TransmitMainFragment.this.K.isShowing() && (((BaseFragment) TransmitMainFragment.this).mContext instanceof Activity) && !((Activity) ((BaseFragment) TransmitMainFragment.this).mContext).isFinishing()) {
                    TransmitMainFragment.this.K.dismiss();
                }
            } catch (Exception e) {
                Log.e("visha_cloud_TransmitMainFragment", "onDeleteResult: " + e.getMessage());
            }
            if (((PlayBaseFragment) TransmitMainFragment.this).isInEditMode) {
                if (((PlayBaseFragment) TransmitMainFragment.this).mEditModeListener != null) {
                    ((PlayBaseFragment) TransmitMainFragment.this).mEditModeListener.a(false);
                } else {
                    TransmitMainFragment.this.editMode(false);
                }
            }
        }

        @Override
        public void c(boolean z, String str) {
        }

        @Override
        public void d() {
            TransmitMainFragment transmitMainFragment = TransmitMainFragment.this;
            transmitMainFragment.L = new com.transsion.widgetslib.dialog.c(((BaseFragment) transmitMainFragment).mContext);
            TransmitMainFragment.this.L.j(((BaseFragment) TransmitMainFragment.this).mContext.getResources().getString(R.string.delete_progress));
            TransmitMainFragment transmitMainFragment2 = TransmitMainFragment.this;
            transmitMainFragment2.K = transmitMainFragment2.L.l();
        }

        public final void f(double d) {
            if (TransmitMainFragment.this.L != null) {
                TransmitMainFragment.this.L.h((int) (d * 100.0d));
            }
        }
    }

    public class d implements Observer {
        public d() {
        }

        @Override
        public void onChanged(Boolean bool) {
            TransmitMainFragment.this.b1(ri4.e().h() > 0, false);
        }
    }

    public class e implements Observer {
        public e() {
        }

        @Override
        public void onChanged(SpaceStatistics spaceStatistics) {
            if (spaceStatistics != null) {
                LogUtils.j("visha_cloud_TransmitMainFragment", "spaceStatistics onChanged: " + spaceStatistics.getUsedSize() + ", " + spaceStatistics.getTotalSize());
                SpannableString spannableStringA = s44.a(((BaseFragment) TransmitMainFragment.this).mContext, spaceStatistics.getUsedSize(), spaceStatistics.getTotalSize());
                if (TransmitMainFragment.this.o != null) {
                    TransmitMainFragment.this.o.setText(spannableStringA);
                }
            }
        }
    }

    public class f extends CustomGridLayoutManager {
        public f(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            return super.canScrollVertically();
        }
    }

    public class g extends gf7 {
        public g() {
        }

        @Override
        public void a(View view) {
            boolean z;
            boolean z2;
            if (!TransmitMainFragment.this.B) {
                if (MainApp.w == 0) {
                    ToastUtils.s(com.transsion.sniffer_load.R.string.net_not_connect);
                    return;
                }
                if (!MainApp.h && pz6.c(MainApp.w)) {
                    TransmitMainFragment.this.B1();
                    return;
                }
                if (TransmitMainFragment.this.l) {
                    ri4.e().o();
                    ToastUtils.s(com.transsion.sniffer_load.R.string.visha_start_upload);
                } else {
                    TransmitMainFragment.this.t1(false);
                    GlobalDownloadManger.B().q();
                    ToastUtils.s(com.transsion.sniffer_load.R.string.visha_start_download);
                }
                TransmitMainFragment.this.b1(true, false);
                return;
            }
            if (TransmitMainFragment.this.l) {
                List<NewUploadTask> listG = ri4.e().g();
                if (listG != null) {
                    z = false;
                    z2 = false;
                    for (NewUploadTask newUploadTask : listG) {
                        if (newUploadTask.mProgressInfo != null) {
                            if (newUploadTask.mProgressInfo.status == 8) {
                                z = true;
                            } else if (newUploadTask.mProgressInfo.status != 9) {
                                z2 = true;
                            }
                        }
                    }
                } else {
                    z = false;
                    z2 = false;
                }
                if (z && !z2) {
                    ToastUtils.s(com.transsion.sniffer_load.R.string.visha_video_transcoding_unable_pause);
                    return;
                } else {
                    ri4.e().j(false);
                    ToastUtils.s(com.transsion.sniffer_load.R.string.visha_upload_paused);
                }
            } else {
                TransmitMainFragment.this.t1(true);
                GlobalDownloadManger.B().f(false);
                ToastUtils.s(com.transsion.sniffer_load.R.string.visha_download_paused);
            }
            TransmitMainFragment.this.b1(false, false);
        }
    }

    public class h extends gf7 {
        public h() {
        }

        @Override
        public void a(View view) {
            TransmitMainFragment.this.a1();
            Log.i("visha_cloud_TransmitMainFragment", "llWorking onClick");
        }
    }

    public class i extends if7 {
        public i() {
        }

        public static AudioItem d(CloudTaskEntity cloudTaskEntity, CloudTaskEntity cloudTaskEntity2) {
            return LoadDataUtils.m(cloudTaskEntity.localFileId) ? ao.U().F(cloudTaskEntity.localFileId) : ao.U().G(cloudTaskEntity.localFilePath);
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            int iD0;
            super.OnNoDoubleItemClickListener(baseQuickAdapter, view, i);
            final CloudTaskEntity cloudTaskEntity = (CloudTaskEntity) baseQuickAdapter.getData().get(i);
            Log.i("visha_cloud_TransmitMainFragment", "onItemClick " + cloudTaskEntity);
            if (((PlayBaseFragment) TransmitMainFragment.this).isInEditMode) {
                TransmitMainFragment.this.w1(baseQuickAdapter, view, i, false);
                TransmitMainFragment.this.X0();
                return;
            }
            if (!cloudTaskEntity.isLocalFileExist) {
                if (zz0.d() && cloudTaskEntity.isCloudFileExist) {
                    g(cloudTaskEntity);
                    return;
                } else {
                    ToastUtils.s(TransmitMainFragment.this.l ? com.transsion.sniffer_load.R.string.visha_cloud_deleted : com.transsion.sniffer_load.R.string.visha_local_deleted);
                    return;
                }
            }
            int i2 = cloudTaskEntity.fileType;
            if (i2 == MediaItem.MediaType.IMAGE.mValue) {
                try {
                    p06.d0("dl_manager_downloaded_image_cl");
                    raa.k(TransmitMainFragment.this.getContext(), Uri.fromFile(new File(cloudTaskEntity.localFilePath)));
                    return;
                } catch (Exception e) {
                    Log.e("visha_cloud_TransmitMainFragment", "openImageFile error: ", e);
                    ToastUtils.s(com.transsion.sniffer_load.R.string.operation_fail);
                    return;
                }
            }
            if (i2 == MediaItem.MediaType.SUBTITLE.mValue) {
                ToastUtils.s(com.transsion.sniffer_load.R.string.subtitle_file_ext);
                return;
            }
            if (i2 == MediaItem.MediaType.OTHERS.mValue) {
                try {
                    raa.j(TransmitMainFragment.this.getContext(), new File(cloudTaskEntity.localFilePath));
                    return;
                } catch (Exception e2) {
                    Log.e("visha_cloud_TransmitMainFragment", "openFile error: ", e2);
                    ToastUtils.s(com.transsion.sniffer_load.R.string.operation_fail);
                    return;
                }
            }
            if (i2 == MediaItem.MediaType.AUDIO.mValue) {
                mc7.K(cloudTaskEntity).g(((BaseActivity) ((BaseFragment) TransmitMainFragment.this).mContext).bindToLifecycle()).L(new t74() {
                    @Override
                    public final Object apply(Object obj) {
                        return TransmitMainFragment.i.d(cloudTaskEntity, (CloudTaskEntity) obj);
                    }
                }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        this.b.e(cloudTaskEntity, (AudioItem) obj);
                    }
                }, new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        this.b.f((Throwable) obj);
                    }
                });
                return;
            }
            PlayVideoData playVideoData = new PlayVideoData();
            playVideoData.listFlag = 49;
            playVideoData.mediaId = cloudTaskEntity.localFileId;
            playVideoData.playTitle = cloudTaskEntity.fileName;
            playVideoData.duration = cloudTaskEntity.duration;
            playVideoData.setData(Uri.parse(cloudTaskEntity.localFilePath));
            playVideoData.path = cloudTaskEntity.localFilePath;
            playVideoData.setNeedRecordVideoStates(true);
            if (VideoPlayManager.X().c0() != null && VideoPlayManager.X().c0().id == cloudTaskEntity.localFileId && (iD0 = VideoPlayManager.X().d0()) != 0) {
                playVideoData.playPosition = iD0;
            }
            VideoPlayerActivityInner.F2(((BaseFragment) TransmitMainFragment.this).mContext, playVideoData);
            if (cloudTaskEntity.downloadSource == 1 || TransmitMainFragment.this.l) {
                Toast.makeText(se.a(), se.a().getString(com.transsion.sniffer_load.R.string.visha_playing_local_file), 0).show();
            }
        }

        public final void e(CloudTaskEntity cloudTaskEntity, AudioItem audioItem) {
            int iQ;
            PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
            playAudioDataConvertToPlayAudioData.listFlag = 49;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            if (audioItem.equals(MusicPlayManager.S().a0()) && (iQ = MusicPlayManager.S().Q()) != 0) {
                playAudioDataConvertToPlayAudioData.playPosition = iQ;
            }
            AudioPlayerActivity.D1(((BaseFragment) TransmitMainFragment.this).mContext, playAudioDataConvertToPlayAudioData);
            if (cloudTaskEntity.downloadSource == 1) {
                Toast.makeText(se.a(), se.a().getString(com.transsion.sniffer_load.R.string.visha_playing_local_file), 0).show();
            }
        }

        public final void f(Throwable th) {
            Log.e("visha_cloud_TransmitMainFragment", "queryAudioItem error: " + th);
            ToastUtils.s(TransmitMainFragment.this.l ? com.transsion.sniffer_load.R.string.visha_cloud_deleted : com.transsion.sniffer_load.R.string.visha_local_deleted);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void g(CloudTaskEntity cloudTaskEntity) {
            if (((Boolean) CloudTaskFinishCacheManager.a.n().getValue()).booleanValue()) {
                m21.a.d();
            } else {
                VideoPlayerActivityInner.F2(((BaseFragment) TransmitMainFragment.this).mContext, CloudTaskUtils.b(cloudTaskEntity));
                srb.a.b(((BaseFragment) TransmitMainFragment.this).mContext.getString(com.transsion.sniffer_load.R.string.visha_playing_cloud_file));
            }
        }
    }

    public class j implements BaseQuickAdapter.OnItemLongClickListener {
        public j() {
        }

        @Override
        public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (((PlayBaseFragment) TransmitMainFragment.this).isInEditMode) {
                TransmitMainFragment.this.w1(baseQuickAdapter, view, i, false);
            } else {
                TransmitMainFragment.this.editMode(true);
                TransmitMainFragment.this.F.j((CloudTaskEntity) baseQuickAdapter.getData().get(i), true, i);
            }
            return true;
        }
    }

    public class k implements BaseQuickAdapter.OnItemChildClickListener {
        public k() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            CloudTaskEntity cloudTaskEntity = (CloudTaskEntity) baseQuickAdapter.getData().get(i);
            Log.i("visha_cloud_TransmitMainFragment", "onItemChildClick " + cloudTaskEntity);
            if (((PlayBaseFragment) TransmitMainFragment.this).isInEditMode) {
                TransmitMainFragment.this.w1(baseQuickAdapter, view, i, true);
                TransmitMainFragment.this.X0();
            } else if (view.getId() == com.transsion.sniffer_load.R.id.iv_bucket_fragment_item_more) {
                TransmitMainFragment.this.A1(cloudTaskEntity, i);
            }
        }
    }

    public class l implements DialogInterface.OnClickListener {
        public l() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (TransmitMainFragment.this.l) {
                ri4.e().o();
                ToastUtils.s(com.transsion.sniffer_load.R.string.visha_start_upload);
            } else {
                TransmitMainFragment.this.t1(false);
                GlobalDownloadManger.B().q();
                ToastUtils.s(com.transsion.sniffer_load.R.string.visha_start_download);
            }
            TransmitMainFragment.this.b1(true, false);
        }
    }

    public void W0(int i2) {
        if (i2 != 0) {
            return;
        }
        v1(null);
        t6b t6bVar = this.J;
        if (t6bVar != null) {
            t6bVar.I(this.F.g());
        }
    }

    public void X0() {
        TransferOperationBar transferOperationBar = this.C;
        if (transferOperationBar != null) {
            transferOperationBar.changeItemEnable(0, !this.F.g().isEmpty());
        }
    }

    private void Z0() {
        if (this.l) {
            return;
        }
        mc7.K(this).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return TransmitMainFragment.i1((TransmitMainFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.j1((Long) obj);
            }
        });
    }

    private void d1() {
        if (this.l) {
            ri4.e().n("visha_cloud_TransmitMainFragment", this);
        } else {
            GlobalDownloadManger.B().k("visha_cloud_TransmitMainFragment", this);
        }
        this.x.setOnClickListener(new g());
        this.q.setOnClickListener(new h());
        this.F.setOnItemClickListener(new i());
        this.F.setOnItemLongClickListener(new j());
        this.F.setOnItemChildClickListener(new k());
    }

    public static Long i1(TransmitMainFragment transmitMainFragment) {
        return Long.valueOf(b23.l(yx2.f));
    }

    public static TransmitMainFragment u1(boolean z, boolean z2) {
        TransmitMainFragment transmitMainFragment = new TransmitMainFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("support_theme_background", z);
        bundle.putBoolean("transmit_upload_type", z2);
        transmitMainFragment.setArguments(bundle);
        return transmitMainFragment;
    }

    public final void A1(CloudTaskEntity cloudTaskEntity, int i2) {
        v1(cloudTaskEntity);
        Intent intent = new Intent();
        intent.putExtra("data", cloudTaskEntity);
        intent.setClass(this.mActivity, TransferSheetDialogActivity.class);
        this.Q.launch(intent);
    }

    public final void B1() {
        int i2;
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(getActivity());
        if (this.l) {
            i2 = com.transsion.utils.a.A() ? R.string.tablet_visha_non_wifi_upload_warning : R.string.visha_non_wifi_upload_warning;
        } else {
            i2 = com.transsion.utils.a.A() ? R.string.tablet_visha_non_wifi_download_warning : R.string.visha_non_wifi_download_warning;
        }
        aVar.j(i2).m(R.string.cancel, new a()).u(R.string.ok, new l()).F();
    }

    public final void C1() {
        TextView textView = this.v;
        if (textView != null) {
            textView.setVisibility((this.isInEditMode || h1()) ? 8 : 0);
        }
    }

    public void D1(long j2) {
        if (this.u != null) {
            this.u.setText(j2 > 0 ? s44.d(this.mContext, j2) : "--");
        }
    }

    public void E1(int i2) {
        TextView textView = this.y;
        if (textView != null) {
            textView.setText(this.mContext.getString(this.l ? R.string.visha_uploading_all : R.string.visha_downloading_all, Integer.valueOf(i2)));
        }
        z1(!this.isInEditMode && g1());
    }

    public final void F1(float f2, long j2) {
        boolean z;
        List listG;
        if (this.l && (listG = ri4.e().g()) != null) {
            Iterator it = listG.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                NewUploadTask newUploadTask = (NewUploadTask) it.next();
                if (newUploadTask.mProgressInfo != null && newUploadTask.mProgressInfo.status != 8 && newUploadTask.mProgressInfo.status != 9) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        ProgressBar progressBar = this.s;
        if (progressBar != null) {
            progressBar.setProgress((int) (f2 * 100.0f));
        }
        TextView textView = this.t;
        if (textView != null) {
            if (!this.l || z) {
                this.t.setText(kz6.a(this.mContext, j2));
            } else {
                textView.setText("");
            }
        }
    }

    public final void G1(boolean z) {
        if (this.M || z) {
            this.G.s(this.H, this.l);
            if (z) {
                return;
            }
            this.M = false;
        }
    }

    public final void Y0() {
        getActivity();
    }

    public final void a1() {
        if (this.l) {
            UploadingFragment uploadingFragmentH1 = UploadingFragment.h1(this.A);
            uploadingFragmentH1.setBaseActivity(this.mActivity);
            a64.n(uploadingFragmentH1, true, true);
        } else {
            DownloadingFragment downloadingFragmentH1 = DownloadingFragment.h1(this.A);
            downloadingFragmentH1.setBaseActivity(this.mActivity);
            a64.n(downloadingFragmentH1, true, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addBottomBarShowStateObserver() {
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.P = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.R);
        notifyVideoBarShowStateChange(((Boolean) this.P.g.getValue()).booleanValue());
    }

    @Override
    public void b(int i2) {
        y1(i2);
    }

    public final void b1(boolean z, boolean z2) {
        boolean z3;
        int i2;
        List listG;
        if (this.x != null) {
            if (z2 || this.B != z) {
                this.B = z;
                if (this.l && !z && (listG = ri4.e().g()) != null) {
                    Iterator it = listG.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z3 = false;
                            break;
                        }
                        NewUploadTask newUploadTask = (NewUploadTask) it.next();
                        if (newUploadTask.mProgressInfo != null && newUploadTask.mProgressInfo.status == 9) {
                            z3 = true;
                            break;
                        }
                    }
                } else {
                    z3 = false;
                    break;
                }
                if (z3) {
                    this.x.setImageResource(com.transsion.sniffer_load.R.drawable.ic_download_retry);
                } else {
                    ImageView imageView = this.x;
                    if (z) {
                        i2 = com.transsion.sniffer_load.R.drawable.ic_download_parse;
                    } else {
                        i2 = this.l ? com.transsion.sniffer_load.R.drawable.transfer_ic_upload_continue : com.transsion.sniffer_load.R.drawable.ic_download_continue;
                    }
                    imageView.setImageResource(i2);
                }
                TextView textView = this.t;
                if (textView != null) {
                    if (this.B) {
                        if (this.l) {
                            F1(0.0f, 0L);
                        } else {
                            this.t.setText(kz6.a(this.mContext, 0L));
                        }
                        this.t.setTextColor(this.mContext.getColor(com.transsion.sniffer_load.R.color.os_text_tertiary_color));
                        return;
                    }
                    if (z3) {
                        textView.setText("");
                        this.t.setTextColor(this.mContext.getColor(com.transsion.sniffer_load.R.color.visha_download_error_color));
                    } else {
                        textView.setText(com.transsion.sniffer_load.R.string.paused);
                        this.t.setTextColor(this.mContext.getColor(com.transsion.sniffer_load.R.color.os_text_tertiary_color));
                    }
                }
            }
        }
    }

    @Override
    public void c(boolean z) {
        y1(z ? this.H.size() : 0);
    }

    public void c1(boolean z) {
        View view;
        if (z && this.n == null && (view = this.p) != null) {
            View viewInflate = ((ViewStub) view.findViewById(com.transsion.sniffer_load.R.id.main_empty_view)).inflate();
            this.n = viewInflate;
            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate.findViewById(com.transsion.sniffer_load.R.id.cl_empty_view);
            this.m = constraintLayout;
            int i2 = com.transsion.sniffer_load.R.string.file_empty;
            constraintLayout.setContentDescription(getString(i2));
            ((ImageView) this.n.findViewById(com.transsion.magicvideo.R.id.lottie_no_videos_view)).setImageResource(this.l ? com.transsion.common.R.drawable.ic_video_empty_illustration : com.transsion.common.R.drawable.ic_file_empty_illustration);
            if (!this.l && !zz0.d()) {
                TextView textView = (TextView) this.n.findViewById(com.transsion.sniffer_load.R.id.add_video_tv);
                textView.setVisibility(0);
                textView.setText(com.transsion.sniffer_load.R.string.download_guide_dialog_title);
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        this.b.k1(view2);
                    }
                });
            }
            View view2 = this.n;
            if (view2 != null) {
                view2.setPadding(0, 0, 0, this.mActivity.isInMultiWindowMode() ? this.mEmptyPaddingBottomInMulti : this.mEmptyPaddingBottom);
            }
            TextView textView2 = (TextView) this.n.findViewById(com.transsion.sniffer_load.R.id.text_no_videos);
            if (this.l) {
                i2 = com.transsion.sniffer_load.R.string.visha_no_video_uploaded;
            }
            textView2.setText(i2);
        }
        View view3 = this.n;
        if (view3 != null) {
            view3.setVisibility(z ? 0 : 8);
        }
        if (z) {
            hb0.markTrackSingle("dl_manager_godl_show", ES6Iterator.VALUE_PROPERTY, 0);
        }
    }

    @Override
    public void didReceivedNotification(int i2, Object... objArr) {
        super.didReceivedNotification(i2, objArr);
        if (i2 == 1116) {
            TransferDataViewModel transferDataViewModel = this.G;
            if (transferDataViewModel != null) {
                transferDataViewModel.j();
                return;
            }
            return;
        }
        if (i2 == 1127) {
            TransferDataViewModel transferDataViewModel2 = this.G;
            if (transferDataViewModel2 != null) {
                transferDataViewModel2.m();
                return;
            }
            return;
        }
        if (i2 == 1136) {
            b1(GlobalDownloadManger.B().o() > 0, false);
        } else {
            if (i2 != 1137) {
                return;
            }
            b1(ri4.e().h() > 0, false);
        }
    }

    public final void e1() {
        z1(false);
        TextView textView = this.r;
        if (textView != null) {
            textView.setText(this.mContext.getString(this.l ? R.string.visha_uploading : R.string.downloading_status));
        }
        TextView textView2 = this.v;
        if (textView2 != null) {
            textView2.setText(this.mContext.getText(this.l ? R.string.visha_uploaded : R.string.photo_video_loaded));
        }
    }

    @Override
    public void editMode(boolean z) {
        super.editMode(z);
        this.isInEditMode = z;
        TransmittedAdapter transmittedAdapter = this.F;
        if (transmittedAdapter != null) {
            if (z) {
                transmittedAdapter.i(false);
            }
            this.F.k(this.isInEditMode);
            this.F.notifyDataSetChanged();
        }
        Log.i("visha_cloud_TransmitMainFragment", "editMode: enter = " + z + StringUtils.COMMA + this.mEditModeListener);
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null && z) {
            dVar.a(true);
        }
        inflateOperationBar();
        TransferOperationBar transferOperationBar = this.C;
        if (transferOperationBar != null) {
            transferOperationBar.setVisibility(z ? 0 : 8);
            this.C.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.X0();
                }
            });
        }
        this.o.setVisibility(z ? 4 : 0);
        z1(!z && g1());
        C1();
        h27.c().e(1125, Boolean.valueOf(z), 0);
    }

    public final void f1() {
        TransferDataViewModel transferDataViewModel = (TransferDataViewModel) getViewModelByActivity(TransferDataViewModel.class);
        this.G = transferDataViewModel;
        if (!this.l) {
            transferDataViewModel.getSmartDownloadedTaskLiveData().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.n1((List) obj);
                }
            });
            this.G.t(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.o1((Boolean) obj);
                }
            });
            this.G.j();
            this.G.g(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.p1((List) obj);
                }
            });
            return;
        }
        transferDataViewModel.getSmartUploadedTaskLiveData().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.l1((List) obj);
            }
        });
        this.G.u(this, new d());
        this.G.m();
        this.G.i(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.m1((List) obj);
            }
        });
        this.G.r();
        this.G.getMCloudStorageInfo().observe(this, new e());
    }

    public boolean g1() {
        return !this.I.isEmpty();
    }

    public boolean h1() {
        return this.H.isEmpty();
    }

    @Override
    public void inflateOperationBar() {
        View view;
        super.inflateOperationBar();
        if (this.C != null || (view = this.p) == null) {
            return;
        }
        TransferOperationBar transferOperationBar = (TransferOperationBar) ((ViewStub) view.findViewById(com.transsion.sniffer_load.R.id.transfer_bottom_action_bar)).inflate();
        this.C = transferOperationBar;
        transferOperationBar.initMenu(!this.l ? 1 : 0);
        this.C.setOnFootOptBarClickListener(new b("visha_cloud_TransmitMainFragment"));
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(Integer.valueOf(AnalyticsListener.EVENT_PLAYER_RELEASED));
        this.mEvents.add(1052);
        this.mEvents.add(1055);
    }

    public final void j1(Long l2) {
        SpannableString spannableStringB = s44.b(this.mContext, l2.longValue());
        TextView textView = this.o;
        if (textView != null) {
            textView.setText(spannableStringB);
        }
    }

    public final void k1(View view) {
        hb0.markTrackSingle("dl_manager_godl_cl", ES6Iterator.VALUE_PROPERTY, 0);
        Intent intent = new Intent(getContext(), (Class<?>) DownloadGuideActivity.class);
        intent.putExtra("need_guide", true);
        intent.putExtra("support_theme_background", this.A);
        f5.c(intent, this.mActivity);
    }

    public final void l1(List list) {
        StringBuilder sb = new StringBuilder();
        sb.append("getSmartUploadedTaskLiveData updated: ");
        sb.append(list != null ? list.size() : 0);
        Log.d("visha_cloud_TransmitMainFragment", sb.toString());
        if (list != null) {
            this.H.clear();
            this.H.addAll(list);
            updateUiForDataChanged();
            G1(false);
        }
        this.G.r();
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        Y0();
    }

    @Override
    public void m(long j2) {
        D1(j2);
    }

    public final void m1(List list) {
        NewUploadTask newUploadTask;
        this.I.clear();
        this.I.addAll(list);
        b1(ri4.e().h() > 0, false);
        Log.d("visha_cloud_TransmitMainFragment", "addObserverUploadingTasks: " + list.size() + ", " + this.I.size());
        updateUiForDataChanged();
        if (list.isEmpty() || (newUploadTask = (NewUploadTask) list.get(list.size() - 1)) == null) {
            return;
        }
        s1(newUploadTask.mProgressInfo.filePath);
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "dl_manager_show");
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            String str = this.l ? "upload" : "download";
            int size = this.I.size();
            bundle.putInt("transfer_count", size);
            bundle.putString("task_type", str);
            trackData.add("transfer_count", size);
            trackData.add("task_type", str);
            cz5.h(bundle, trackData, "cloud_transfer_show");
        }
    }

    public final void n1(List list) {
        StringBuilder sb = new StringBuilder();
        sb.append("getSmartDownloadedTaskLiveData updated: ");
        sb.append(list != null ? list.size() : 0);
        Log.d("visha_cloud_TransmitMainFragment", sb.toString());
        if (list != null) {
            this.H.clear();
            this.H.addAll(list);
            updateUiForDataChanged();
            G1(false);
        }
    }

    public void notifyVideoBarShowStateChange(boolean z) {
        Log.d("visha_cloud_TransmitMainFragment", "notifyVideoBarShowStateChange :" + z);
        if (this.O != null) {
            applyPaddingBottomWithNav(this.O, com.transsion.utils.a.d(this.mContext, (isFoldScreen() && z) ? 60 : 0));
        }
    }

    public final void o1(Boolean bool) {
        b1(GlobalDownloadManger.B().o() > 0, false);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.A = arguments.getBoolean("support_theme_background", true);
            this.l = arguments.getBoolean("transmit_upload_type", false);
        }
        TransmittedAdapter transmittedAdapter = new TransmittedAdapter(this.mContext);
        this.F = transmittedAdapter;
        transmittedAdapter.r(this.l);
        this.F.l(this);
        f1();
        if (this.l) {
            h27.c().b(this, 1137);
            h27.c().b(this, 1127);
        } else {
            h27.c().b(this, 1136);
            h27.c().b(this, 1116);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(com.transsion.sniffer_load.R.layout.transfer_fragment_transmit_main_layout, viewGroup, false);
        this.p = viewInflate;
        return viewInflate;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.l) {
            this.G.getSmartUploadedTaskLiveData().removeObservers(this);
            this.G.x(this);
            this.G.B(this);
            h27.c().f(this, 1127);
            h27.c().f(this, 1137);
            return;
        }
        this.G.getSmartDownloadedTaskLiveData().removeObservers(this);
        this.G.z(this);
        this.G.A(this);
        h27.c().f(this, 1116);
        h27.c().f(this, 1136);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.p = null;
        if (this.l) {
            ri4.e().n("visha_cloud_TransmitMainFragment", null);
        } else {
            GlobalDownloadManger.B().k("visha_cloud_TransmitMainFragment", null);
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.z) {
            this.z = false;
            Y0();
        }
        this.M = true;
        G1(true);
        D1(this.l ? ri4.e().a() : GlobalDownloadManger.B().g());
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.D = (VideoMainRecyclerView) view.findViewById(com.transsion.sniffer_load.R.id.rv_main_fragment);
        this.E = (RecyclerViewFastScroller) view.findViewById(com.transsion.magicvideo.R.id.rv_fast_scroller);
        this.q = (LinearLayout) view.findViewById(com.transsion.sniffer_load.R.id.ll_transmitting);
        this.r = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_title_transmitting);
        this.s = (ProgressBar) view.findViewById(com.transsion.sniffer_load.R.id.progressBar_transmitting);
        this.t = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_transmitting_speed);
        this.u = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_download_size);
        this.v = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_transmitted_done);
        this.w = (ImageView) view.findViewById(com.transsion.sniffer_load.R.id.iv_transmitting_cover);
        this.x = (ImageView) view.findViewById(com.transsion.sniffer_load.R.id.iv_transmitting);
        this.y = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_working_type);
        this.O = (RelativeLayout) view.findViewById(com.transsion.sniffer_load.R.id.rl_parent);
        e1();
        this.D.setType("download");
        this.o = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_size_info);
        TypedValue typedValue = new TypedValue();
        this.mActivity.getTheme().resolveAttribute(com.transsion.sniffer_load.R.attr.OsBgPrimary, typedValue, true);
        this.o.setBackgroundColor(this.mActivity.getResources().getColor(typedValue.resourceId));
        f fVar = new f(getContext(), 1);
        this.D.setAdapter(this.F);
        this.D.setLayoutManager(fVar);
        boolean z = false;
        OverScrollDecorHelper.setUpOverScroll(this.D, 0);
        if (!this.l ? GlobalDownloadManger.B().o() > 0 : ri4.e().h() > 0) {
            z = true;
        }
        b1(z, true);
        d1();
        if (this.N) {
            a1();
        }
        addBottomBarShowStateObserver();
    }

    public final void p1(List list) {
        NewDownloadTask newDownloadTask;
        Log.d("visha_cloud_TransmitMainFragment", "addObserverDownloadingTasks: " + list.size());
        this.I.clear();
        this.I.addAll(list);
        b1(GlobalDownloadManger.B().o() > 0, false);
        updateUiForDataChanged();
        if (list.isEmpty() || (newDownloadTask = (NewDownloadTask) list.get(list.size() - 1)) == null) {
            return;
        }
        s1(newDownloadTask.progress.imgUrl);
    }

    public final void q1(ActivityResult activityResult) {
        Intent data;
        t6b t6bVar;
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        int intExtra = data.getIntExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, 0);
        CloudTaskEntity cloudTaskEntity = (CloudTaskEntity) data.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA);
        if (intExtra == 5) {
            t6b t6bVar2 = this.J;
            if (t6bVar2 != null) {
                t6bVar2.I(Collections.singletonList(cloudTaskEntity));
                return;
            }
            return;
        }
        if (intExtra == 2) {
            t6b t6bVar3 = this.J;
            if (t6bVar3 != null) {
                t6bVar3.K();
                return;
            }
            return;
        }
        if (intExtra != 6 || (t6bVar = this.J) == null) {
            return;
        }
        t6bVar.J();
    }

    @Override
    public void r(float f2, long j2) {
        Log.d("visha_cloud_TransmitMainFragment", "onTransmittingTaskProgress: isUpload = " + this.l + ", fraction = " + f2 + ",,speed:" + j2 + StringUtils.COMMA + this.B);
        F1(f2, j2);
    }

    public final void r1(Boolean bool) {
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    public final void s1(String str) {
        if (getContext() == null || this.w == null) {
            return;
        }
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(getContext()).load2(str);
        int i2 = com.transsion.sniffer_load.R.drawable.transfer_ic_default_placeholder;
        requestBuilderLoad2.placeholder(i2).error(i2).centerCrop().into(this.w);
    }

    @Override
    public void selectAll(boolean z) {
        super.selectAll(z);
        TransmittedAdapter transmittedAdapter = this.F;
        if (transmittedAdapter != null) {
            transmittedAdapter.i(z);
        }
    }

    public final void t1(boolean z) {
        int i2;
        List<NewDownloadTask> listT = GlobalDownloadManger.B().t();
        if (listT == null || listT.isEmpty()) {
            return;
        }
        int i3 = 0;
        boolean z2 = false;
        for (NewDownloadTask newDownloadTask : listT) {
            if (newDownloadTask != null && newDownloadTask.progress != null) {
                Progress progress = newDownloadTask.progress;
                if (progress.downloadSource == 0 && (i2 = progress.status) != 4 && i2 != 5) {
                    if (i3 == 0) {
                        z2 = progress.isClient;
                    }
                    i3++;
                }
            }
        }
        if (i3 > 0) {
            p06.V(!z ? 1 : 0, i3, z2 ? 1 : 0);
        }
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        this.F.setNewData(this.H);
        Z0();
        c1(this.H.isEmpty() && this.I.isEmpty());
        this.D.setVisibility(h1() ? 8 : 0);
        C1();
        E1(this.I.size());
    }

    public final void v1(CloudTaskEntity cloudTaskEntity) {
        t6b t6bVar = new t6b(getContext(), cloudTaskEntity);
        this.J = t6bVar;
        t6bVar.setOnOperateListener(new c());
    }

    public void w1(BaseQuickAdapter baseQuickAdapter, View view, int i2, boolean z) {
        if (baseQuickAdapter.getData().isEmpty()) {
            return;
        }
        ((TransmittedAdapter) baseQuickAdapter).j((CloudTaskEntity) baseQuickAdapter.getData().get(i2), z == ((CheckBox) view.findViewById(com.transsion.sniffer_load.R.id.iv_bucket_fragment_checkBox)).isChecked(), i2);
    }

    public void x1(boolean z) {
        this.N = z;
    }

    public void y1(int i2) {
        if (this.mTitleTv != null && getContext() != null) {
            if (i2 == 0) {
                this.mTitleTv.setText(getContext().getString(R.string.none_select));
            } else {
                this.mTitleTv.setText(getContext().getString(i2 > 1 ? R.string.items : R.string.item, Integer.valueOf(i2)));
            }
        }
        CheckBox checkBox = this.mAllCheckBox;
        if (checkBox != null) {
            checkBox.setChecked(i2 != 0 && i2 == this.H.size());
        }
        X0();
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.b(this.F.g(), i2 != 0 && i2 == this.H.size(), false);
        }
    }

    public final void z1(boolean z) {
        int i2 = z ? 0 : 8;
        Log.e(AbstractID3v1Tag.TAG, "showDownloadProgress: " + z + StringUtils.COMMA + this.l);
        LinearLayout linearLayout = this.q;
        if (linearLayout != null) {
            linearLayout.setVisibility(i2);
        }
        TextView textView = this.r;
        if (textView != null) {
            textView.setVisibility(i2);
        }
    }
}
