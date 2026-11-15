package com.mgtv.ssp.control;

import androidx.annotation.NonNull;

public class a implements c, d {
    private d a;
    private c b;

    public a(@NonNull d dVar, @NonNull c cVar) {
        this.a = dVar;
        this.b = cVar;
    }

    public void a() {
        System.out.println("gesture  toggleShowState " + isShowing());
        if (isShowing()) {
            forceHide();
        } else {
            show();
        }
    }

    public void b() {
        setLocked(!isLocked());
    }

    @Override
    public void forceHide() {
        this.b.forceHide();
    }

    @Override
    public int getBufferedPercentage() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.getBufferedPercentage();
        }
        return 0;
    }

    @Override
    public float getCurrentPlaySpeed() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.getCurrentPlaySpeed();
        }
        return 1.0f;
    }

    @Override
    public int getCurrentPosition() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.getCurrentPosition();
        }
        return 0;
    }

    @Override
    public int getCutoutHeight() {
        return this.b.getCutoutHeight();
    }

    @Override
    public int getPlayerStatus() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.getPlayerStatus();
        }
        return 0;
    }

    @Override
    public int getVideoDuration() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.getVideoDuration();
        }
        return 0;
    }

    @Override
    public int getVideoTotalTime() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.getVideoTotalTime();
        }
        return 0;
    }

    @Override
    public boolean hasCutout() {
        return this.b.hasCutout();
    }

    @Override
    public boolean isFullScreen() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.isFullScreen();
        }
        return false;
    }

    @Override
    public boolean isLocked() {
        return this.b.isLocked();
    }

    @Override
    public boolean isPlaying() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isShowing() {
        System.out.println("gesture  mController.isShowing() " + this.b.isShowing());
        return this.b.isShowing();
    }

    @Override
    public void lockScreen(boolean z) {
        d dVar = this.a;
        if (dVar != null) {
            dVar.lockScreen(z);
        }
    }

    @Override
    public void reStart() {
        d dVar = this.a;
        if (dVar != null) {
            dVar.reStart();
        }
    }

    @Override
    public void seekTo(int i) {
        this.a.seekTo(i);
    }

    @Override
    public void setLocked(boolean z) {
        this.b.setLocked(z);
        lockScreen(z);
    }

    @Override
    public String setMute(boolean z) {
        d dVar = this.a;
        if (dVar == null) {
            return "0";
        }
        dVar.setMute(z);
        return "0";
    }

    @Override
    public void show() {
        this.b.show();
    }

    @Override
    public void start() {
        this.a.start();
    }

    @Override
    public void startFadeOut() {
        this.b.startFadeOut();
    }

    @Override
    public void startProgress() {
        this.b.startProgress();
    }

    @Override
    public void stopFadeOut() {
        this.b.stopFadeOut();
    }

    @Override
    public void stopProgress() {
        this.b.stopProgress();
    }

    @Override
    public void switchFullScreen(boolean z) {
        d dVar = this.a;
        if (dVar != null) {
            dVar.switchFullScreen(z);
        }
    }

    @Override
    public void togglePlay() {
        d dVar = this.a;
        if (dVar != null) {
            dVar.togglePlay();
        }
    }
}
