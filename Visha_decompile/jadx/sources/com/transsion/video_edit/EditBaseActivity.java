package com.transsion.video_edit;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.media.MediaMetadataRetriever;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.transformer.Composition;
import androidx.media3.transformer.EditedMediaItem;
import androidx.media3.transformer.EditedMediaItemSequence;
import androidx.media3.transformer.ExportException;
import androidx.media3.transformer.ExportResult;
import androidx.media3.transformer.ProgressHolder;
import androidx.media3.transformer.Transformer;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.Utils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.utils.ToastUtils;
import com.transsion.video_edit.EditBaseActivity;
import com.transsion.videodownloader.model.Video;
import defpackage.av3;
import defpackage.e39;
import defpackage.p06;
import defpackage.ux0;
import java.io.File;
import java.io.IOException;

public class EditBaseActivity extends BasePermissionActivity implements Player.Listener, Transformer.Listener, SurfaceHolder.Callback, ThumbnailBar.c, ThumbnailSelectorBar.a {
    public SurfaceView N;
    public FrameLayout O;
    public ThumbnailBar Q;
    public ThumbnailSelectorBar R;
    public ImageView S;
    public ImageView T;
    public ImageView U;
    public TextView V;
    public TextView W;
    public View X;
    public String Y;
    public String Z;
    public String a0;
    public long c0;
    public com.transsion.video_edit.b.a g0;
    public com.transsion.widgetslib.dialog.c h0;
    public com.transsion.widgetslib.dialog.d i0;
    public long j0;
    public long k0;
    public Runnable n0;
    public ux0 o0;
    public Handler p0;
    public ExoPlayer P = null;
    public boolean b0 = false;
    public int d0 = -1;
    public int e0 = 1;
    public int f0 = 1;
    public Transformer l0 = null;
    public final ProgressHolder m0 = new ProgressHolder();
    public boolean q0 = true;
    public Runnable r0 = new Runnable() {
        @Override
        public void run() {
            try {
                if (EditBaseActivity.this.P == null || !EditBaseActivity.this.P.isPlaying()) {
                    return;
                }
                EditBaseActivity.this.R.seekTime(EditBaseActivity.this.P.getCurrentPosition());
                EditBaseActivity.this.p0.postDelayed(EditBaseActivity.this.r0, 100L);
            } catch (Exception e) {
                Log.e("EditMainActivity", "run " + e.getMessage());
            }
        }
    };

    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        public void lambda$run$0() {
            EditBaseActivity editBaseActivity = EditBaseActivity.this;
            editBaseActivity.Y0(editBaseActivity.c0);
        }

        @Override
        public void run() {
            EditBaseActivity.this.S.setVisibility(0);
            EditBaseActivity.this.R.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$run$0();
                }
            });
        }
    }

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                if (EditBaseActivity.this.P.isPlaying()) {
                    EditBaseActivity.this.S.setVisibility(0);
                    EditBaseActivity.this.P.pause();
                    EditBaseActivity.this.p0.removeCallbacks(EditBaseActivity.this.r0);
                    return true;
                }
            } catch (Exception e) {
                Log.e("EditMainActivity", "onDoubleTap " + e.getMessage());
            }
            return false;
        }
    }

    public class b implements View.OnTouchListener {
        public final GestureDetector b;

        public b(GestureDetector gestureDetector) {
            this.b = gestureDetector;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            this.b.onTouchEvent(motionEvent);
            return true;
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                if (EditBaseActivity.this.l0 != null) {
                    EditBaseActivity.this.l0.cancel();
                }
            } catch (Exception e) {
                Log.i("EditMainActivity", e.getMessage());
            }
            if (EditBaseActivity.this.n0 != null) {
                EditBaseActivity.this.p0.removeCallbacks(EditBaseActivity.this.n0);
            }
            EditBaseActivity.this.V0();
            com.transsion.widgetslib.dialog.d dVar = EditBaseActivity.this.i0;
            if (dVar == null || !dVar.isShowing()) {
                return;
            }
            EditBaseActivity.this.i0.dismiss();
            EditBaseActivity.this.i0 = null;
        }
    }

    public class d extends ux0 {
        public d(int i) {
            super(i);
        }

        @Override
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.iv_play) {
                EditBaseActivity.this.g1();
                return;
            }
            if (view.getId() == R.id.iv_video_play_setting) {
                EditBaseActivity.this.W0();
                p06.f0(null, "vd_export_confirmation_cl", 932460000068L);
            } else if (view.getId() == R.id.iv_video_play_back) {
                EditBaseActivity.this.setResult(1237);
                EditBaseActivity.this.finish();
            }
        }
    }

    public static void b1(String str) {
        try {
            new File(str).delete();
        } catch (Exception e) {
            Log.i("EditMainActivity", "deleteOutputFileAsync:" + e.getMessage());
        }
    }

    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    private void initData() {
        StringBuilder sb;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(this.a0);
                String strTrim = mediaMetadataRetriever.extractMetadata(9).trim();
                if (TextUtils.isEmpty(strTrim)) {
                    strTrim = "1";
                }
                this.c0 = Long.valueOf(strTrim).longValue();
                this.d0 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                this.e0 = Integer.valueOf(mediaMetadataRetriever.extractMetadata(18)).intValue();
                this.f0 = Integer.valueOf(mediaMetadataRetriever.extractMetadata(19)).intValue();
                try {
                    mediaMetadataRetriever.close();
                } catch (IOException e) {
                    e = e;
                    sb = new StringBuilder();
                    sb.append("initData ");
                    sb.append(e.getMessage());
                    Log.e("EditMainActivity", sb.toString());
                }
            } catch (Throwable th) {
                try {
                    mediaMetadataRetriever.close();
                } catch (IOException e2) {
                    Log.e("EditMainActivity", "initData " + e2.getMessage());
                }
                throw th;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            try {
                mediaMetadataRetriever.close();
            } catch (IOException e4) {
                e = e4;
                sb = new StringBuilder();
                sb.append("initData ");
                sb.append(e.getMessage());
                Log.e("EditMainActivity", sb.toString());
            }
        }
    }

    public final int T0() {
        return (e39.d(this) - e39.a(this, 38.0f)) - e39.a(this, 38.0f);
    }

    public void U0(String str, Uri uri) {
    }

    public final void V0() {
        final String str = com.transsion.video_edit.b.d + this.Y;
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                EditBaseActivity.b1(str);
            }
        });
    }

    public final void W0() {
        com.transsion.widgetslib.dialog.d dVar;
        k1();
        if (this.P == null) {
            return;
        }
        long j = this.k0;
        if (j < 1000) {
            ToastUtils.s(R.string.edit_export_invalid);
            return;
        }
        p06.C(j);
        String str = this.a0;
        String strSubstring = str.substring(str.lastIndexOf("/"));
        this.Y = av3.b(strSubstring.substring(0, strSubstring.lastIndexOf(Consts.DOT)), Video.SUFFIX.SUFFIX_MP4);
        String str2 = com.transsion.video_edit.b.d;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (this.l0 == null) {
            this.l0 = new Transformer.Builder(this).addListener(this).build();
        }
        if (this.h0 != null && (dVar = this.i0) != null && dVar.isShowing()) {
            this.i0.dismiss();
            this.i0 = null;
        }
        com.transsion.widgetslib.dialog.c cVar = new com.transsion.widgetslib.dialog.c(this);
        this.h0 = cVar;
        cVar.h(0);
        this.h0.f(R.string.cancel, new c());
        this.h0.i(R.string.edit_generating);
        this.h0.k(R.string.cut_exporting);
        this.i0 = this.h0.l();
        try {
            Composition compositionBuild = new Composition.Builder(new EditedMediaItemSequence.Builder(new EditedMediaItem.Builder(new MediaItem.Builder().setUri(Uri.parse(this.Z)).setClippingConfiguration(new MediaItem.ClippingConfiguration.Builder().setStartPositionMs(this.j0).setEndPositionMs(this.j0 + this.k0).build()).build()).build()).build(), new EditedMediaItemSequence[0]).build();
            this.l0.start(compositionBuild, str2 + this.Y);
            if (this.n0 == null) {
                this.n0 = new Runnable() {
                    @Override
                    public void run() {
                        com.transsion.widgetslib.dialog.d dVar2;
                        if (EditBaseActivity.this.l0 != null) {
                            EditBaseActivity editBaseActivity = EditBaseActivity.this;
                            if (editBaseActivity.h0 == null || (dVar2 = editBaseActivity.i0) == null || !dVar2.isShowing()) {
                                return;
                            }
                            int progress = EditBaseActivity.this.l0.getProgress(EditBaseActivity.this.m0);
                            if (progress == 2 || progress == 1) {
                                int i = EditBaseActivity.this.m0.progress;
                                if (i < 0) {
                                    i = 0;
                                }
                                if (i > 100) {
                                    i = 100;
                                }
                                EditBaseActivity.this.h0.h(i);
                            }
                            EditBaseActivity.this.p0.postDelayed(this, 100L);
                        }
                    }
                };
            }
            this.p0.removeCallbacks(this.n0);
            this.p0.post(this.n0);
        } catch (Exception e) {
            Log.e("EditMainActivity", "transformer.start failed:" + e.getMessage());
            ToastUtils.s(R.string.edit_export_error);
            V0();
            com.transsion.widgetslib.dialog.d dVar2 = this.i0;
            if (dVar2 == null || !dVar2.isShowing()) {
                return;
            }
            this.i0.dismiss();
        }
    }

    public final void X0() {
        this.o0 = new d(1000);
        this.O.setOnTouchListener(new b(new GestureDetector(this, new a())));
    }

    public final void Y0(long j) {
        if (j < 0) {
            return;
        }
        long jC = com.transsion.video_edit.b.c(j);
        this.R.setValueTime(-this.g0.b(this.R.getLeftSpace()), jC, this.g0);
    }

    public final void Z0(long j) {
        if (j < 0) {
            return;
        }
        this.Q.initThumbnailInfo(this.Z, j * 1000, this.g0.b(e39.a(this, 48.0f)) * 1000);
    }

    public final void a1() {
        Log.i("EditMainActivity", "initVideoEdit.filePath:" + this.Z);
        Uri uri = Uri.parse(this.Z);
        if (!TextUtils.isEmpty(uri.getQuery()) || !TextUtils.isEmpty(uri.getFragment())) {
            ToastUtils.s(R.string.invalid_filename);
            finish();
            return;
        }
        ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(this).build();
        this.P = exoPlayerBuild;
        exoPlayerBuild.addListener(this);
        this.P.setVideoSurfaceView(this.N);
        this.P.setMediaItem(new MediaItem.Builder().setUri(uri).setClippingConfiguration(new MediaItem.ClippingConfiguration.Builder().setStartPositionMs(0L).setEndPositionMs(com.transsion.video_edit.b.c(this.c0)).build()).build());
        this.P.prepare();
    }

    public final void c1() {
        Z0(this.c0);
    }

    @Override
    public void d(RecyclerView recyclerView, int i) {
        this.R.updateTimeByStartChanged(this.g0.b(i - this.R.getLeftSpace()), true, true);
    }

    public final void d1() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        this.g0 = new com.transsion.video_edit.b.a(T0(), com.transsion.video_edit.b.d(this.c0));
        l1(com.transsion.video_edit.b.c(this.c0));
        this.Q.post(new Runnable() {
            @Override
            public final void run() {
                this.b.c1();
            }
        });
        int iC = ((e39.c(this) - e39.a(this, 238.0f)) - e39.b(this)) - e39.e(this);
        int iD = e39.d(this);
        int i = this.d0;
        if (i == 270 || i == 90) {
            int i2 = this.e0;
            this.e0 = this.f0;
            this.f0 = i2;
        }
        i1(iD, iC, this.e0, this.f0);
        a1();
        this.j0 = 0L;
        this.k0 = com.transsion.video_edit.b.c(this.c0);
        j1(true);
    }

    @Override
    public void e(boolean z, boolean z2, boolean z3, long... jArr) {
        ExoPlayer exoPlayer = this.P;
        if (exoPlayer == null || !this.b0) {
            return;
        }
        try {
            if (exoPlayer.isPlaying()) {
                k1();
            }
            this.P.setMediaItem(new MediaItem.Builder().setUri(Uri.parse(this.Z)).setClippingConfiguration(new MediaItem.ClippingConfiguration.Builder().setStartPositionMs(jArr[0]).setEndPositionMs(jArr[1]).build()).build());
            this.P.prepare();
            if (z3) {
                l1(jArr[1] - jArr[0]);
            }
            long j = jArr[0];
            this.j0 = j;
            long j2 = jArr[1] - j;
            this.k0 = j2;
            if (!z2 && !z) {
                this.P.seekTo(j2);
                return;
            }
            this.P.seekTo(0L);
        } catch (Exception e) {
            Log.e("EditMainActivity", "seekTo " + e);
        }
    }

    public final void e1() {
        initData();
        runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.d1();
            }
        });
    }

    @Override
    public void f(long j) {
        k1();
        try {
            ExoPlayer exoPlayer = this.P;
            if (exoPlayer != null) {
                exoPlayer.seekTo(j);
            }
        } catch (Exception e) {
            Log.e("EditMainActivity", "onPointerDrag " + e);
        }
    }

    public final void f1() {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.e1();
            }
        });
    }

    public final void g1() {
        this.S.setVisibility(8);
        try {
            ExoPlayer exoPlayer = this.P;
            if (exoPlayer != null) {
                exoPlayer.play();
            }
        } catch (Exception e) {
            Log.e("EditMainActivity", "previewVideo " + e.getMessage());
        }
    }

    @Override
    public void h(RecyclerView recyclerView, int i) {
    }

    public final void h1() {
        try {
            ExoPlayer exoPlayer = this.P;
            if (exoPlayer != null) {
                exoPlayer.release();
                this.P = null;
            }
        } catch (Exception e) {
            Log.e("EditMainActivity", "relaseEidtPlayer " + e.getMessage());
        }
    }

    public final void i1(int i, int i2, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams = this.N.getLayoutParams();
        float f = (i * 1.0f) / i2;
        float f2 = (i3 * 1.0f) / i4;
        if (Float.compare(f, f2) == -1 && f2 != 0.0f) {
            layoutParams.width = i;
            layoutParams.height = (int) (i / f2);
            this.N.setLayoutParams(layoutParams);
        } else {
            if (Float.compare(f, f2) != 1 || f2 == 0.0f) {
                return;
            }
            layoutParams.height = i2;
            layoutParams.width = (int) (i2 * f2);
            this.N.setLayoutParams(layoutParams);
        }
    }

    public final void j1(boolean z) {
        ImageView imageView = this.S;
        if (imageView != null) {
            imageView.setEnabled(z);
        }
        ImageView imageView2 = this.U;
        if (imageView2 != null) {
            imageView2.setEnabled(z);
        }
    }

    public final void k1() {
        this.S.setVisibility(0);
        try {
            ExoPlayer exoPlayer = this.P;
            if (exoPlayer != null && exoPlayer.isPlaying()) {
                this.P.pause();
            }
        } catch (Exception e) {
            Log.e("EditMainActivity", "stopPreview " + e.getMessage());
        }
        this.p0.removeCallbacks(this.r0);
    }

    public final void l1(long j) {
        this.W.setText(getResources().getString(R.string.edit_has_selected) + "  " + com.transsion.video_edit.b.a(j) + "/" + com.transsion.video_edit.b.a(com.transsion.video_edit.b.d(this.c0)));
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onCompleted(Composition composition, ExportResult exportResult) {
        runOnUiThread(new Runnable() {

            public class a implements MediaScannerConnection.OnScanCompletedListener {
                public a() {
                }

                @Override
                public void onScanCompleted(String str, Uri uri) {
                    EditBaseActivity.this.U0(str, uri);
                }
            }

            @Override
            public void run() {
                com.transsion.widgetslib.dialog.c cVar = EditBaseActivity.this.h0;
                if (cVar != null) {
                    cVar.h(100);
                }
                com.transsion.widgetslib.dialog.d dVar = EditBaseActivity.this.i0;
                if (dVar != null && dVar.isShowing()) {
                    EditBaseActivity.this.i0.dismiss();
                }
                if (EditBaseActivity.this.n0 != null) {
                    EditBaseActivity.this.p0.removeCallbacks(EditBaseActivity.this.n0);
                }
                ToastUtils.w(EditBaseActivity.this.getString(R.string.edit_video_save_notice) + " " + com.transsion.video_edit.b.c);
                MediaScannerConnection.scanFile(Utils.a(), new String[]{com.transsion.video_edit.b.d + EditBaseActivity.this.Y}, new String[]{"mp4"}, new a());
                p06.f0(null, "vd_save_successful", 932460000070L);
            }
        });
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i1(e39.d(this), ((e39.c(this) - e39.a(this, 238.0f)) - e39.b(this)) - e39.e(this), this.e0, this.f0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setWindowBackground(true);
        setContentView(R.layout.activity_edit_main);
        this.X = findViewById(R.id.edit_fragment_content);
        this.N = (SurfaceView) findViewById(R.id.edit_surface);
        this.O = (FrameLayout) findViewById(R.id.touch_frame);
        this.Q = (ThumbnailBar) findViewById(R.id.thumbnail_bar_view);
        this.R = (ThumbnailSelectorBar) findViewById(R.id.selector_bar_view);
        this.T = (ImageView) findViewById(R.id.iv_video_play_back);
        this.V = (TextView) findViewById(R.id.tv_video_play_title);
        this.W = (TextView) findViewById(R.id.time_textview);
        this.U = (ImageView) findViewById(R.id.iv_video_play_setting);
        this.R.setOnSeekListener(this);
        this.S = (ImageView) findViewById(R.id.iv_play);
        this.V.setText(R.string.edit_cut);
        this.Q.setOnThumbnailBarScrollListener(this);
        String stringExtra = getIntent().getStringExtra("FILE_PATH");
        this.a0 = stringExtra;
        if (Build.VERSION.SDK_INT >= 30) {
            this.Z = Uri.fromFile(new File(this.a0)).toString();
        } else {
            this.Z = stringExtra;
        }
        Log.i("EditMainActivity", "originPath:" + this.a0);
        Log.i("EditMainActivity", "filePath:" + this.Z);
        this.p0 = new Handler(Looper.getMainLooper());
        this.N.setKeepScreenOn(true);
        this.N.getHolder().addCallback(this);
        X0();
        this.S.setOnClickListener(this.o0);
        this.T.setOnClickListener(this.o0);
        this.U.setOnClickListener(this.o0);
        j1(false);
        f1();
        p06.f0(null, "vd_clip_page_show", 932460000117L);
    }

    @Override
    public void onDestroy() {
        Handler handler;
        if (this.h0 != null) {
            this.h0 = null;
        }
        com.transsion.widgetslib.dialog.d dVar = this.i0;
        if (dVar != null && dVar.isShowing()) {
            this.i0.dismiss();
            this.i0 = null;
        }
        Runnable runnable = this.n0;
        if (runnable != null && (handler = this.p0) != null) {
            handler.removeCallbacks(runnable);
        }
        Transformer transformer = this.l0;
        if (transformer != null) {
            try {
                transformer.cancel();
            } catch (Exception unused) {
            }
            this.l0 = null;
        }
        h1();
        super.onDestroy();
    }

    @Override
    public void onError(Composition composition, ExportResult exportResult, ExportException exportException) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                ToastUtils.s(R.string.edit_export_error);
                EditBaseActivity.this.V0();
                if (EditBaseActivity.this.n0 != null) {
                    EditBaseActivity.this.p0.removeCallbacks(EditBaseActivity.this.n0);
                }
                com.transsion.widgetslib.dialog.d dVar = EditBaseActivity.this.i0;
                if (dVar == null || !dVar.isShowing()) {
                    return;
                }
                EditBaseActivity.this.i0.dismiss();
            }
        });
    }

    @Override
    public void onIsPlayingChanged(boolean z) {
        if (!z) {
            this.p0.removeCallbacks(this.r0);
        } else {
            this.p0.removeCallbacks(this.r0);
            this.p0.post(this.r0);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        k1();
    }

    @Override
    public void onPlaybackStateChanged(int i) {
        if (i == 3 && !this.b0) {
            this.b0 = true;
            runOnUiThread(new AnonymousClass2());
        } else if (i == 4) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    if (EditBaseActivity.this.S != null) {
                        EditBaseActivity.this.S.setVisibility(0);
                        try {
                            EditBaseActivity.this.R.seekTime(EditBaseActivity.this.P.getCurrentPosition());
                        } catch (Exception e) {
                            Log.e("EditMainActivity", "onPlayEnd " + e.getMessage());
                        }
                    }
                }
            });
        }
    }

    @Override
    public void onPlayerError(PlaybackException playbackException) {
        Log.e("EditMainActivity", "onPlayError " + playbackException.getMessage());
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                EditBaseActivity.this.k1();
            }
        });
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onStop() {
        super.onStop();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.Q.setCanScoll(true);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }
}
