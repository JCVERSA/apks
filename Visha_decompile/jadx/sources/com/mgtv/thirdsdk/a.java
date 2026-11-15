package com.mgtv.thirdsdk;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mgtv.ssp.authbase.MgSspAccountCallback;
import com.mgtv.ssp.play.bean.SubTitleData;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.b;
import com.mgtv.thirdsdk.playcore.c;
import com.mgtv.thirdsdk.playcore.callback.MgtvPlayerListener;
import com.mgtv.thirdsdk.playcore.callback.SdkPlayerInterface;
import com.mgtv.thirdsdk.playcore.d;
import com.mgtv.thirdsdk.playcore.e;
import com.mgtv.thirdsdk.playcore.f;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;
import java.io.PrintStream;
import java.util.Map;

public class a implements SdkPlayerInterface {
    public String a;
    private MgtvPlayerView b;
    private b c;
    private b d;
    private boolean e;

    public a(Context context) {
        if (this.b == null) {
            this.b = new MgtvPlayerView(context);
        }
    }

    @Override
    public void adClick() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.p();
        }
    }

    @Override
    public void changeDefination(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(i);
        }
    }

    @Override
    public int getAdTotalDuration() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.t();
        }
        return 0;
    }

    @Override
    public int getBufferedPercentage() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.s();
        }
        return 0;
    }

    @Override
    public int getBufferingPosition() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.r();
        }
        return 0;
    }

    @Override
    public ViewGroup getControlLayout() {
        MgtvPlayerView mgtvPlayerView = this.b;
        if (mgtvPlayerView != null) {
            return mgtvPlayerView.getControlLayout();
        }
        return null;
    }

    @Override
    public int getCurrentDefinition() {
        b bVar = this.c;
        if (bVar == null || bVar.g() == null) {
            return 0;
        }
        return this.c.g().ah ? this.c.g().am : this.c.g().t;
    }

    @Override
    public int getCurrentPosition() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.l();
        }
        return 0;
    }

    @Override
    public SubTitleData getCurrentSubtitleSource() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.C();
        }
        return null;
    }

    @Override
    public int getDefaultDefinition() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.o();
        }
        return -1;
    }

    @Override
    public Map<Integer, Long> getDefinitionSizeMap() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.x();
        }
        return null;
    }

    @Override
    public View getDisPlayView() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.z();
        }
        return null;
    }

    @Override
    public long getLoadingSpeed() {
        b bVar = this.c;
        if (bVar == null || bVar.g() == null) {
            return 0L;
        }
        return this.c.g().ad;
    }

    @Override
    public float getPlaySpeed() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.u();
        }
        return 0.0f;
    }

    @Override
    public e getPlayerData() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.g();
        }
        return null;
    }

    @Override
    public int getPlayerStatus() {
        b bVar = this.c;
        if (bVar == null || bVar.g() == null) {
            return 0;
        }
        return this.c.g().k();
    }

    @Override
    public int getRealDuration() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.c();
        }
        return 0;
    }

    @Override
    public String getVersion() {
        return com.hunantv.imgo.util.b.e();
    }

    @Override
    public int getVideoDuration() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.j();
        }
        return 0;
    }

    @Override
    public int getVideoHeight() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.h();
        }
        return 0;
    }

    @Override
    public int getVideoPreDuration() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.k();
        }
        return 0;
    }

    @Override
    public int getVideoWidth() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.i();
        }
        return 0;
    }

    @Override
    public void init(Context context) {
        MgtvPlayerView mgtvPlayerView = this.b;
        if (mgtvPlayerView != null) {
            mgtvPlayerView.setFrom(this.a);
            this.b.init();
            VideoSDKReport.a().a(this.b.getVideoPlayer());
        }
        if (this.c == null) {
            c cVar = new c(context, this.b);
            this.d = cVar;
            cVar.b(this.a);
            this.d.g(this.e);
            this.d.a();
            this.c = this.d;
        }
    }

    @Override
    public boolean isFullScreen() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.w();
        }
        return false;
    }

    @Override
    public boolean isLocalPlay() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.v();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.y();
        }
        return false;
    }

    @Override
    public boolean isPreview() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.b();
        }
        return false;
    }

    @Override
    public boolean isSupport3X() {
        b bVar = this.c;
        if (bVar != null) {
            return bVar.E();
        }
        return false;
    }

    @Override
    public void lockScreen(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.k(z);
        }
    }

    @Override
    public void noticeAdScreenChange(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.j(z);
        }
    }

    @Override
    public void noticePlayViewMode(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.g(i);
        }
    }

    @Override
    public void onActivityStart(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.d(z);
        }
    }

    @Override
    public void onActivityStop() {
        PrintStream printStream = System.out;
        printStream.println("MgtvPlayer onActivityStop");
        if (this.c != null) {
            printStream.println("mPlayerControl onActivityStop");
            this.c.n();
        }
    }

    @Override
    public void onPause() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.A();
        }
    }

    @Override
    public void onResume() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.B();
        }
    }

    @Override
    public void pause() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.d();
        }
    }

    @Override
    public void play() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override
    public void playByUser() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.D();
        }
    }

    @Override
    public void release() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.m();
        }
    }

    @Override
    public void seekTo(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.b(i);
        }
    }

    @Override
    public void setActivity(Activity activity) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(activity);
        }
    }

    @Override
    public void setAspectRatio(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.e(i);
        }
    }

    @Override
    public void setBookmark(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.d(i);
        }
    }

    @Override
    public void setBufferStatus(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.c(z);
        }
    }

    @Override
    public void setDefaultDefination(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.c(i);
        }
    }

    @Override
    public void setFrom(String str) {
        b bVar;
        this.a = str;
        if (!"live".equals(str) || (bVar = this.d) == null) {
            return;
        }
        bVar.b(str);
    }

    @Override
    public void setJumpBeforeOrEnd(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(z);
        }
    }

    @Override
    public void setMute(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.b(z);
        }
    }

    @Override
    public void setOnAdListener(MgtvPlayerListener.AdListener adListener) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(adListener);
        }
    }

    @Override
    public void setOnAuthResultListener(MgtvPlayerListener.AuthResultListener authResultListener) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(authResultListener);
        }
    }

    @Override
    public void setOnErrorListener(MgtvPlayerListener.ErrorListener errorListener) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(errorListener);
        }
    }

    @Override
    public void setOnSourcePrepareListener(com.mgtv.ssp.c cVar) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(cVar);
        }
    }

    @Override
    public void setOnStopAdListener(MgtvPlayerListener.AdStopListener adStopListener) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(adStopListener);
        }
    }

    @Override
    public void setOnVideoListener(MgtvPlayerListener.VideoListener videoListener) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(videoListener);
        }
    }

    @Override
    public void setPlaySpeed(float f) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(f);
        }
    }

    @Override
    public void setPlayStatusChangeListener(d dVar) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(dVar);
        }
    }

    @Override
    public void setRequestPauseAd(boolean z) {
        this.e = z;
    }

    @Override
    public void setScreenOrientationChangeListener(f fVar) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(fVar);
        }
    }

    @Override
    public void setSspAccountCallback(MgSspAccountCallback mgSspAccountCallback) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(mgSspAccountCallback);
        }
    }

    @Override
    public void setSspVipCallback(com.mgtv.ssp.authbase.c cVar) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(cVar);
        }
    }

    @Override
    public void setSupportChangeOrientation(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.h(z);
        }
    }

    @Override
    public void setSupportChangeScreenMode(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.i(z);
        }
    }

    @Override
    public void setVolumeProcess(c.InterfaceC0188c interfaceC0188c) {
        this.c.a(interfaceC0188c);
    }

    @Override
    public void start() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.q();
        }
    }

    @Override
    public void startLivePlayer(String str, String str2) {
        b bVar = this.d;
        this.c = bVar;
        if (bVar != null) {
            bVar.b(str, str2);
        }
    }

    @Override
    public void startLocalPlayer(String str) {
        b bVar = this.d;
        this.c = bVar;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    @Override
    public void startPlayer(String str, String str2) {
        b bVar = this.d;
        this.c = bVar;
        if (bVar != null) {
            bVar.a(str, str2);
        }
    }

    @Override
    public void stop() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override
    public void switchFullScreen(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.e(z);
        }
    }

    @Override
    public void switchFullscreenByAd(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.f(z);
        }
    }

    @Override
    public void switchSubtitleSource(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.f(i);
        }
    }
}
