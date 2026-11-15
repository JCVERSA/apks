package com.hunantv.media.player;

import android.annotation.TargetApi;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import com.hunantv.media.player.libnative.IMediaDataSource;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

public class i implements d {
    protected d a;

    public i(d dVar) {
        this.a = dVar;
    }

    public d a() {
        return this.a;
    }

    @Override
    public int getBufferedPercentage() {
        return this.a.getBufferedPercentage();
    }

    @Override
    public long getBufferedPositionMs() {
        return this.a.getBufferedPositionMs();
    }

    @Override
    public int getBufferingPercent() {
        return this.a.getBufferingPercent();
    }

    @Override
    public long getCurrentPosition() {
        return this.a.getCurrentPosition();
    }

    @Override
    public long getDuration() {
        return this.a.getDuration();
    }

    @Override
    public String getLogTag() {
        return this.a.getLogTag() + "[" + getClass().getSimpleName() + "]";
    }

    @Override
    public float getPlaybackSpeed() {
        return this.a.getPlaybackSpeed();
    }

    @Override
    public int getVideoHeight() {
        return this.a.getVideoHeight();
    }

    @Override
    public int getVideoSarDen() {
        return this.a.getVideoSarDen();
    }

    @Override
    public int getVideoSarNum() {
        return this.a.getVideoSarNum();
    }

    @Override
    public int getVideoWidth() {
        return this.a.getVideoWidth();
    }

    @Override
    public boolean isMediaCodecSWRender() {
        return this.a.isMediaCodecSWRender();
    }

    @Override
    public boolean isPlaying() {
        return this.a.isPlaying();
    }

    @Override
    public int loopSwitchVideoSource(String str, int i, int i2, int i3) throws IllegalStateException, OutOfMemoryError {
        return this.a.loopSwitchVideoSource(str, i, i2, i3);
    }

    @Override
    public void pause() throws IllegalStateException {
        this.a.pause();
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        this.a.prepareAsync();
    }

    @Override
    public void release() {
        this.a.release();
    }

    @Override
    public void reset() {
        this.a.reset();
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
        this.a.seekTo(j);
    }

    @Override
    public void setAudioStreamType(int i) {
        this.a.setAudioStreamType(i);
    }

    @Override
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        this.a.setDataSource(iMediaDataSource);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.a.setDisplay(surfaceHolder);
    }

    @Override
    public void setOnBufferingTimeoutListener(final d.a aVar) {
        if (aVar != null) {
            this.a.setOnBufferingTimeoutListener(new d.a() {
                @Override
                public boolean a(d dVar, int i, int i2) {
                    return aVar.a(dVar, i, i2);
                }
            });
        } else {
            this.a.setOnPreparedListener(null);
        }
    }

    @Override
    public void setOnBufferingUpdateListener(final d.b bVar) {
        if (bVar != null) {
            this.a.setOnBufferingUpdateListener(new d.b() {
                @Override
                public void a(d dVar, int i) {
                    bVar.a(i.this, i);
                }
            });
        } else {
            this.a.setOnBufferingUpdateListener(null);
        }
    }

    @Override
    public void setOnCompletionListener(final d.c cVar) {
        if (cVar != null) {
            this.a.setOnCompletionListener(new d.c() {
                @Override
                public void a(d dVar, int i, int i2) {
                    cVar.a(i.this, i, i2);
                }
            });
        } else {
            this.a.setOnCompletionListener(null);
        }
    }

    @Override
    public void setOnDrmListener(final d.InterfaceC0135d interfaceC0135d) {
        if (interfaceC0135d != null) {
            this.a.setOnDrmListener(new d.InterfaceC0135d() {
                @Override
                public void a(Map<UUID, MgtvDrmUtils.PSSH> map) {
                    interfaceC0135d.a(map);
                }

                @Override
                public void a(byte[] bArr) {
                    interfaceC0135d.a(bArr);
                }
            });
        }
    }

    @Override
    public void setOnErrorListener(final d.e eVar) {
        if (eVar != null) {
            this.a.setOnErrorListener(new d.e() {
                @Override
                public boolean a(d dVar, int i, int i2) {
                    return eVar.a(i.this, i, i2);
                }
            });
        } else {
            this.a.setOnErrorListener(null);
        }
    }

    @Override
    public void setOnGetFrameImageListener(final d.f fVar) {
        if (fVar != null) {
            this.a.setOnGetFrameImageListener(new d.f() {
                @Override
                public void a(d dVar, int i, int i2) {
                    fVar.a(dVar, i, i2);
                }

                @Override
                public void a(d dVar, int i, int i2, String str) {
                    fVar.a(dVar, i, i2, str);
                }
            });
        }
    }

    @Override
    public void setOnInfoListener(final d.g gVar) {
        if (gVar != null) {
            this.a.setOnInfoListener(new d.g() {
                @Override
                public boolean a(d dVar, int i, int i2) {
                    return gVar.a(i.this, i, i2);
                }
            });
        } else {
            this.a.setOnInfoListener(null);
        }
    }

    @Override
    public void setOnInfoStringListener(final d.h hVar) {
        if (hVar != null) {
            this.a.setOnInfoStringListener(new d.h() {
                @Override
                public boolean a(d dVar, int i, String str) {
                    return hVar.a(dVar, i, str);
                }
            });
        } else {
            this.a.setOnInfoStringListener(null);
        }
    }

    @Override
    public void setOnLoopSwitchSourceListener(final d.i iVar) {
        if (iVar != null) {
            this.a.setOnLoopSwitchSourceListener(new d.i() {
                @Override
                public void a(d dVar, String str, int i, int i2) {
                    iVar.a(dVar, str, i, i2);
                }

                @Override
                public void b(d dVar, String str, int i, int i2) {
                    iVar.b(dVar, str, i, i2);
                }

                @Override
                public void c(d dVar, String str, int i, int i2) {
                    iVar.c(dVar, str, i, i2);
                }
            });
        } else {
            this.a.setOnPreparedListener(null);
        }
    }

    @Override
    public void setOnPlayerEventListener(d.j jVar) {
        this.a.setOnPlayerEventListener(jVar);
    }

    @Override
    public void setOnPreparedListener(final d.k kVar) {
        if (kVar != null) {
            this.a.setOnPreparedListener(new d.k() {
                @Override
                public void a(d dVar) {
                    kVar.a(i.this);
                }
            });
        } else {
            this.a.setOnPreparedListener(null);
        }
    }

    @Override
    public void setOnRecordVideoListener(d.l lVar) {
        this.a.setOnRecordVideoListener(lVar);
    }

    @Override
    public void setOnSeekCompleteListener(final d.m mVar) {
        if (mVar != null) {
            this.a.setOnSeekCompleteListener(new d.m() {
                @Override
                public void a(d dVar, int i, int i2) {
                    mVar.a(i.this, i, i2);
                }
            });
        } else {
            this.a.setOnSeekCompleteListener(null);
        }
    }

    @Override
    public void setOnSmoothSwitchSourceListener(final d.n nVar) {
        if (nVar != null) {
            this.a.setOnSmoothSwitchSourceListener(new d.n() {
                @Override
                public void onSmoothSwitchSourceComplete(d dVar, int i, int i2, String str) {
                    nVar.onSmoothSwitchSourceComplete(dVar, i, i2, str);
                }

                @Override
                public void onSmoothSwitchSourceFailed(d dVar, int i, int i2, String str) {
                    nVar.onSmoothSwitchSourceFailed(dVar, i, i2, str);
                }

                @Override
                public void onSmoothSwitchSourceInfo(d dVar, int i, int i2, String str) {
                    nVar.onSmoothSwitchSourceInfo(dVar, i, i2, str);
                }
            });
        }
    }

    @Override
    public void setOnSourceFlowHandledListener(d.o oVar) {
        this.a.setOnSourceFlowHandledListener(oVar);
    }

    @Override
    public void setOnSourceNetHandledListener(d.p pVar) {
        this.a.setOnSourceNetHandledListener(pVar);
    }

    @Override
    public void setOnStreamInfoListener(d.q qVar) {
        this.a.setOnStreamInfoListener(qVar);
    }

    @Override
    public void setOnSwitchSourceListener(final d.r rVar) {
        if (rVar != null) {
            this.a.setOnSwitchSourceListener(new d.r() {
                @Override
                public void a(d dVar, String str, int i, int i2) {
                    rVar.a(dVar, str, i, i2);
                }

                @Override
                public void b(d dVar, String str, int i, int i2) {
                    rVar.b(dVar, str, i, i2);
                }

                @Override
                public void c(d dVar, String str, int i, int i2) {
                    rVar.c(dVar, str, i, i2);
                }
            });
        } else {
            this.a.setOnPreparedListener(null);
        }
    }

    @Override
    public void setOnVideoSizeChangedListener(final d.s sVar) {
        if (sVar != null) {
            this.a.setOnVideoSizeChangedListener(new d.s() {
                @Override
                public void a(d dVar, int i, int i2, int i3, int i4) {
                    sVar.a(i.this, i, i2, i3, i4);
                }
            });
        } else {
            this.a.setOnVideoSizeChangedListener(null);
        }
    }

    @Override
    public void setPlaybackSpeed(float f) {
        this.a.setPlaybackSpeed(f);
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
        this.a.setScreenOnWhilePlaying(z);
    }

    @Override
    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.a.setSurface(surface);
    }

    @Override
    public void setVolume(float f, float f2) {
        this.a.setVolume(f, f2);
    }

    @Override
    public int smoothSwitchVideoSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError {
        return this.a.smoothSwitchVideoSource(iMGTVMediaDataSource, str, i, i2, i3, i4, str2);
    }

    @Override
    public void start() throws IllegalStateException {
        this.a.start();
    }

    @Override
    public void stop() throws IllegalStateException {
        this.a.stop();
    }

    @Override
    public void switchVideoSource(String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException {
        this.a.switchVideoSource(str, i, i2, i3);
    }

    @Override
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.a.setDataSource(str);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder, int i) {
        this.a.setDisplay(surfaceHolder, i);
    }

    @Override
    public void setSurface(Surface surface, int i) {
        this.a.setSurface(surface, i);
    }

    @Override
    public int smoothSwitchVideoSource(String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError {
        return this.a.smoothSwitchVideoSource(str, i, i2, i3, i4, str2);
    }
}
