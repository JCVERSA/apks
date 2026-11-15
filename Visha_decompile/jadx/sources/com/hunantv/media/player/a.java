package com.hunantv.media.player;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import java.util.Map;
import java.util.UUID;

public abstract class a implements d {
    public static final String BUNDLE_KEY_BOOLEAN_AUDIO_MODE = "BUNDLE_KEY_BOOLEAN_AUDIO_MODE";
    public static final String BUNDLE_KEY_BOOLEAN_ENABLE_REPORT = "BUNDLE_KEY_BOOLEAN_ENABLE_REPORT";
    public static final String BUNDLE_KEY_LOG_TAG_KEY = "BUNDLE_KEY_LOG_TAG_KEY";

    @Nullable
    private Bundle mBundle;

    @Nullable
    private String mLogTagKey;
    private d.a mOnBufferingTimeoutListener;
    private d.b mOnBufferingUpdateListener;
    private d.c mOnCompletionListener;
    private d.InterfaceC0135d mOnDrmListener;
    private d.e mOnErrorListener;
    private d.f mOnGetFrameImageListener;
    private d.g mOnInfoListener;
    private d.h mOnInfoStringListener;
    private d.i mOnLoopSwitchSourceListener;
    private d.j mOnPlayerEventListener;
    private d.k mOnPreparedListener;
    private d.l mOnRecordVideoListener;
    private d.m mOnSeekCompleteListener;
    private d.n mOnSmoothSwitchSourceListener;
    private d.o mOnSourceFlowHandledListener;
    private d.p mOnSourceNetHandledListener;
    private d.q mOnStreamInfoListener;
    private d.r mOnSwitchSourceListener;
    private d.s mOnVideoSizeChangedListener;

    public a() {
        this.mLogTagKey = null;
    }

    public long getAVCachedTimeMs() {
        return 0L;
    }

    public Bundle getBundle() {
        return this.mBundle;
    }

    @Override
    public String getLogTag() {
        return "[" + this.mLogTagKey + "][" + getClass().getSimpleName() + "]";
    }

    public final boolean notifyOnBufferingTimeout(int i, int i2) {
        d.a aVar = this.mOnBufferingTimeoutListener;
        return aVar != null && aVar.a(this, i, i2);
    }

    public final void notifyOnBufferingUpdate(int i) {
        d.b bVar = this.mOnBufferingUpdateListener;
        if (bVar != null) {
            bVar.a(this, i);
        }
    }

    public final void notifyOnCompletion(int i, int i2) {
        d.c cVar = this.mOnCompletionListener;
        if (cVar != null) {
            cVar.a(this, i, i2);
        }
    }

    public final void notifyOnDrmPsshMap(Map<UUID, MgtvDrmUtils.PSSH> map) {
        d.InterfaceC0135d interfaceC0135d = this.mOnDrmListener;
        if (interfaceC0135d != null) {
            interfaceC0135d.a(map);
        }
    }

    public final boolean notifyOnError(int i, int i2) {
        d.e eVar = this.mOnErrorListener;
        return eVar != null && eVar.a(this, i, i2);
    }

    public final void notifyOnGetFrameImageInfo(int i, int i2, String str) {
        d.f fVar = this.mOnGetFrameImageListener;
        if (fVar != null) {
            fVar.a(this, i, i2, str);
        }
    }

    public final void notifyOnGetFrameImageStatus(int i, int i2) {
        d.f fVar = this.mOnGetFrameImageListener;
        if (fVar != null) {
            fVar.a(this, i, i2);
        }
    }

    public final boolean notifyOnInfo(int i, int i2) {
        d.g gVar = this.mOnInfoListener;
        return gVar != null && gVar.a(this, i, i2);
    }

    public final boolean notifyOnInfoString(int i, String str) {
        d.h hVar = this.mOnInfoStringListener;
        return hVar != null && hVar.a(this, i, str);
    }

    public final void notifyOnLoopSwitchSourceComplete(String str, int i, int i2) {
        d.i iVar = this.mOnLoopSwitchSourceListener;
        if (iVar != null) {
            iVar.b(this, str, i, i2);
        }
    }

    public final void notifyOnLoopSwitchSourceFail(String str, int i, int i2) {
        d.i iVar = this.mOnLoopSwitchSourceListener;
        if (iVar != null) {
            iVar.c(this, str, i, i2);
        }
    }

    public final void notifyOnLoopSwitchSourceInfo(String str, int i, int i2) {
        d.i iVar = this.mOnLoopSwitchSourceListener;
        if (iVar != null) {
            iVar.a(this, str, i, i2);
        }
    }

    public final void notifyOnMaskDrmInit(byte[] bArr) {
        d.InterfaceC0135d interfaceC0135d = this.mOnDrmListener;
        if (interfaceC0135d != null) {
            interfaceC0135d.a(bArr);
        }
    }

    public final void notifyOnPlayerEvent(int i, Bundle bundle) {
        d.j jVar = this.mOnPlayerEventListener;
        if (jVar != null) {
            jVar.a(this, i, bundle);
        }
    }

    public final void notifyOnPrepared() {
        d.k kVar = this.mOnPreparedListener;
        if (kVar != null) {
            kVar.a(this);
        }
    }

    public final void notifyOnRecordVideoErr(int i, int i2) {
        d.l lVar = this.mOnRecordVideoListener;
        if (lVar != null) {
            lVar.b(this, i, i2);
        }
    }

    public final void notifyOnRecordVideoInfo(int i, int i2) {
        d.l lVar = this.mOnRecordVideoListener;
        if (lVar != null) {
            lVar.a(this, i, i2);
        }
    }

    public final void notifyOnSeekComplete(int i, int i2) {
        d.m mVar = this.mOnSeekCompleteListener;
        if (mVar != null) {
            mVar.a(this, i, i2);
        }
    }

    public final void notifyOnSmoothSwitchSourceComplete(int i, int i2, String str) {
        d.n nVar = this.mOnSmoothSwitchSourceListener;
        if (nVar != null) {
            nVar.onSmoothSwitchSourceComplete(this, i, i2, str);
        }
    }

    public final void notifyOnSmoothSwitchSourceFailed(int i, int i2, String str) {
        d.n nVar = this.mOnSmoothSwitchSourceListener;
        if (nVar != null) {
            nVar.onSmoothSwitchSourceFailed(this, i, i2, str);
        }
    }

    public final void notifyOnSmoothSwitchSourceInfo(int i, int i2, String str) {
        d.n nVar = this.mOnSmoothSwitchSourceListener;
        if (nVar != null) {
            nVar.onSmoothSwitchSourceInfo(this, i, i2, str);
        }
    }

    public final void notifyOnSourceFlowInfoEvent(int i, Bundle bundle) {
        d.o oVar = this.mOnSourceFlowHandledListener;
        if (oVar != null) {
            oVar.a(this, i, bundle);
        }
    }

    public final boolean notifyOnSourceNetCtrl(int i, Bundle bundle) {
        d.p pVar = this.mOnSourceNetHandledListener;
        return pVar != null && pVar.a(this, i, bundle);
    }

    public final void notifyOnSourceNetEvent(int i, Bundle bundle) {
        d.p pVar = this.mOnSourceNetHandledListener;
        if (pVar != null) {
            pVar.b(this, i, bundle);
        }
    }

    public final void notifyOnStreamInfoEvent(int i, Bundle bundle) {
        d.q qVar = this.mOnStreamInfoListener;
        if (qVar != null) {
            qVar.a(this, i, bundle);
        }
    }

    public final void notifyOnSwitchSourceComplete(String str, int i, int i2) {
        d.r rVar = this.mOnSwitchSourceListener;
        if (rVar != null) {
            rVar.b(this, str, i, i2);
        }
    }

    public final void notifyOnSwitchSourceFailed(String str, int i, int i2) {
        d.r rVar = this.mOnSwitchSourceListener;
        if (rVar != null) {
            rVar.c(this, str, i, i2);
        }
    }

    public final void notifyOnSwitchSourceInfo(String str, int i, int i2) {
        d.r rVar = this.mOnSwitchSourceListener;
        if (rVar != null) {
            rVar.a(this, str, i, i2);
        }
    }

    public final void notifyOnVideoSizeChanged(int i, int i2, int i3, int i4) {
        d.s sVar = this.mOnVideoSizeChangedListener;
        if (sVar != null) {
            sVar.a(this, i, i2, i3, i4);
        }
    }

    public void resetListeners() {
        this.mOnPreparedListener = null;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnInfoStringListener = null;
        this.mOnBufferingTimeoutListener = null;
        this.mOnSwitchSourceListener = null;
        this.mOnSmoothSwitchSourceListener = null;
        this.mOnSourceNetHandledListener = null;
        this.mOnStreamInfoListener = null;
        this.mOnRecordVideoListener = null;
        this.mOnLoopSwitchSourceListener = null;
        this.mOnGetFrameImageListener = null;
        this.mOnDrmListener = null;
        this.mOnPlayerEventListener = null;
    }

    @Override
    public final void setOnBufferingTimeoutListener(d.a aVar) {
        this.mOnBufferingTimeoutListener = aVar;
    }

    @Override
    public final void setOnBufferingUpdateListener(d.b bVar) {
        this.mOnBufferingUpdateListener = bVar;
    }

    @Override
    public final void setOnCompletionListener(d.c cVar) {
        this.mOnCompletionListener = cVar;
    }

    @Override
    public final void setOnDrmListener(d.InterfaceC0135d interfaceC0135d) {
        this.mOnDrmListener = interfaceC0135d;
    }

    @Override
    public final void setOnErrorListener(d.e eVar) {
        this.mOnErrorListener = eVar;
    }

    @Override
    public final void setOnGetFrameImageListener(d.f fVar) {
        this.mOnGetFrameImageListener = fVar;
    }

    @Override
    public final void setOnInfoListener(d.g gVar) {
        this.mOnInfoListener = gVar;
    }

    @Override
    public final void setOnInfoStringListener(d.h hVar) {
        this.mOnInfoStringListener = hVar;
    }

    @Override
    public final void setOnLoopSwitchSourceListener(d.i iVar) {
        this.mOnLoopSwitchSourceListener = iVar;
    }

    @Override
    public final void setOnPlayerEventListener(d.j jVar) {
        this.mOnPlayerEventListener = jVar;
    }

    @Override
    public final void setOnPreparedListener(d.k kVar) {
        this.mOnPreparedListener = kVar;
    }

    @Override
    public final void setOnRecordVideoListener(d.l lVar) {
        this.mOnRecordVideoListener = lVar;
    }

    @Override
    public final void setOnSeekCompleteListener(d.m mVar) {
        this.mOnSeekCompleteListener = mVar;
    }

    @Override
    public final void setOnSmoothSwitchSourceListener(d.n nVar) {
        this.mOnSmoothSwitchSourceListener = nVar;
    }

    @Override
    public final void setOnSourceFlowHandledListener(d.o oVar) {
        this.mOnSourceFlowHandledListener = oVar;
    }

    @Override
    public final void setOnSourceNetHandledListener(d.p pVar) {
        this.mOnSourceNetHandledListener = pVar;
    }

    @Override
    public final void setOnStreamInfoListener(d.q qVar) {
        this.mOnStreamInfoListener = qVar;
    }

    @Override
    public final void setOnSwitchSourceListener(d.r rVar) {
        this.mOnSwitchSourceListener = rVar;
    }

    @Override
    public final void setOnVideoSizeChangedListener(d.s sVar) {
        this.mOnVideoSizeChangedListener = sVar;
    }

    public a(Bundle bundle) {
        this.mLogTagKey = null;
        this.mBundle = bundle;
        if (bundle != null) {
            this.mLogTagKey = bundle.getString("BUNDLE_KEY_LOG_TAG_KEY");
        }
    }
}
