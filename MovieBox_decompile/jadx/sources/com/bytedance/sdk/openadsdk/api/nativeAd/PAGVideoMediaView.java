package com.bytedance.sdk.openadsdk.api.nativeAd;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.aa.sP.vS;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sP.Sj;
import com.bytedance.sdk.openadsdk.utils.EjP;

public class PAGVideoMediaView extends PAGMediaView implements Sj.InterfaceC0258Sj {
    private sU EjP;
    private final com.bytedance.sdk.openadsdk.Sj.sP.Sj TKC;
    private vS sP;

    public PAGVideoMediaView(Context context, @Nullable View view, @Nullable com.bytedance.sdk.openadsdk.Sj.sP.Sj sj2) {
        super(context);
        Sj(view);
        this.TKC = sj2;
    }

    private void Sj(View view) {
        if (view instanceof vS) {
            vS vSVar = (vS) view;
            this.sP = vSVar;
            addView(vSVar, -1, -1);
        }
    }

    private boolean sP() {
        vS vSVar = this.sP;
        if (vSVar != null) {
            return vSVar.aa();
        }
        return false;
    }

    @Override
    public void close() {
        vS vSVar = this.sP;
        if (vSVar != null) {
            vSVar.Zq();
        }
    }

    @Override
    public long getVideoProgress() {
        vS vSVar = this.sP;
        if (vSVar == null || vSVar.getNativeVideoController() == null) {
            return 0L;
        }
        return this.sP.getNativeVideoController().HiB();
    }

    public void handleInterruptVideo() {
        if (sP()) {
            return;
        }
        Sj();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP.Sj(this, this.EjP);
    }

    public void setMaterialMeta(sU sUVar) {
        this.EjP = sUVar;
    }

    @Override
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        if (onClickListener instanceof Sj) {
            ((Sj) onClickListener).Sj((Sj.InterfaceC0258Sj) this);
        }
    }

    @Override
    public void setVideoAdListener(final PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.Sj.sP.Sj sj2 = this.TKC;
        if (sj2 == null) {
            return;
        }
        sj2.Sj(new PAGVideoAdListener() {
            @Override
            public void onVideoAdComplete() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }

            @Override
            public void onVideoAdPaused() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override
            public void onVideoAdPlay() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }

            @Override
            public void onVideoError() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }
        });
    }

    private void Sj() {
        vS vSVar = this.sP;
        if (vSVar != null) {
            vSVar.sef();
        }
    }
}
