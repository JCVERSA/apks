package com.transsion.player;

import android.os.Bundle;
import android.util.Log;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.common.collect.r4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.DashDemoActivity;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.e;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import qn.b;
import qn.c;
import qn.d;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010+\u001a\u00020&8\u0006X\u0086D¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/player/DashDemoActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/transsion/player/orplayer/e;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Lqn/c;", "tracks", "onTracksChange", "(Lqn/c;)V", "", "width", "height", "onVideoSizeChanged", "(II)V", "Landroid/view/TextureView;", "a", "Landroid/view/TextureView;", "textureView", "Lin/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lin/e;", "getPalyer", "()Lin/e;", "setPalyer", "(Lin/e;)V", "palyer", "", "c", "F", "speed", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "trackIndex", "", "e", "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DashDemoActivity extends AppCompatActivity implements e {

    private TextureView textureView;

    private in.e palyer;

    private float speed;

    private int trackIndex;

    private final String TAG = "DashActivity";

    public static final void R(DashDemoActivity dashDemoActivity, TextView textView, View view) {
        Object next;
        in.e eVar = dashDemoActivity.palyer;
        if (eVar != null) {
            Iterator<E> it = eVar.getCurrentTracks().a().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((d) next).e() != 2);
            d dVar = (d) next;
            if (dVar != null) {
                int iD = dVar.d();
                int i10 = dashDemoActivity.trackIndex + 1;
                dashDemoActivity.trackIndex = i10;
                int i11 = i10 % iD;
                eVar.changeTrackSelection(dVar, i11);
                b bVar = dVar.b()[i11];
                textView.setText("codecs:" + bVar.b() + " peakBitrate:" + bVar.e() + "  " + bVar.f() + "*" + bVar.c());
            }
        }
    }

    public static final void S(DashDemoActivity dashDemoActivity, View view) {
        in.e eVar = dashDemoActivity.palyer;
        if (eVar != null) {
            long currentPosition = eVar.getCurrentPosition();
            in.e eVar2 = dashDemoActivity.palyer;
            if (eVar2 != null) {
                eVar2.seekTo(currentPosition + ((long) 10000));
            }
        }
    }

    public static final void U(DashDemoActivity dashDemoActivity, View view) {
        float f10 = dashDemoActivity.speed + 0.25f;
        dashDemoActivity.speed = f10;
        Log.e(dashDemoActivity.TAG, "speed:" + f10);
        in.e eVar = dashDemoActivity.palyer;
        if (eVar != null) {
            eVar.setSpeed(dashDemoActivity.speed);
        }
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, d dVar) {
        e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void initPlayer() {
        e.a.b(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        e.a.e(this, eVar);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R$layout.activity_dash);
        this.textureView = (TextureView) findViewById(R$id.f46048tv);
        String str = getFilesDir().getAbsolutePath() + "/test265/1.mpd";
        in.e eVar = new in.e(this, null, false, 6, null);
        TextureView textureView = this.textureView;
        if (textureView == null) {
            Intrinsics.y("textureView");
            textureView = null;
        }
        eVar.setTextureView(textureView);
        eVar.addPlayerListener(this);
        eVar.C(new gn.e(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, str, 0, null, null, 28, null));
        eVar.prepare();
        eVar.play();
        this.palyer = eVar;
        final TextView textView = (TextView) findViewById(R$id.tv_index);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DashDemoActivity.R(this.f61169a, textView, view);
            }
        });
        findViewById(R$id.tv_seek).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DashDemoActivity.S(this.f61171a, view);
            }
        });
        findViewById(R$id.tv_speed).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DashDemoActivity.U(this.f61172a, view);
            }
        });
    }

    @Override
    public void onFocusChange(boolean z10) {
        e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        e.a.i(this, eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        e.a.k(this, eVar);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String str) {
        e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError playError, gn.e eVar) {
        e.a.q(this, playError, eVar);
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e eVar) {
        e.a.w(this, eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        e.a.y(this, j10, eVar);
    }

    @Override
    public void onRenderFirstFrame() {
        e.a.A(this);
    }

    @Override
    public void onSetDataSource() {
        e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(c tracks) {
        Intrinsics.h(tracks, "tracks");
        Log.e(this.TAG, "onTracksChanged  tracks:" + tracks);
        r4 it = tracks.a().iterator();
        Intrinsics.g(it, "iterator(...)");
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int iE = dVar.e();
            boolean zA = dVar.a();
            for (b bVar : dVar.b()) {
                Log.e(this.TAG, "onTracksChanged  trackInGroupIsSupported:" + zA + " \ntrackFormat:" + bVar + " \n");
            }
            Log.e(this.TAG, "onTracksChanged  trackType:" + iE + " \ntrackInGroupIsSupported:" + zA + " \n");
        }
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        e.a.F(this, eVar);
    }

    @Override
    public void onVideoSizeChanged(int width, int height) {
        Log.e(this.TAG, "onVideoSizeChanged  width:" + width + " height:" + height);
        if (width > 0 || height > 0) {
            TextureView textureView = this.textureView;
            TextureView textureView2 = null;
            if (textureView == null) {
                Intrinsics.y("textureView");
                textureView = null;
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) textureView.getLayoutParams();
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).width = 720;
            }
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).height = (height * 720) / width;
            }
            TextureView textureView3 = this.textureView;
            if (textureView3 == null) {
                Intrinsics.y("textureView");
            } else {
                textureView2 = textureView3;
            }
            textureView2.setLayoutParams(bVar);
        }
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        e.a.I(this, eVar);
    }

    @Override
    public void setOnSeekCompleteListener() {
        e.a.K(this);
    }
}
