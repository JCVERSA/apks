package com.bytedance.sdk.openadsdk.aa;

import android.content.Context;
import android.media.AudioManager;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public class TEQ {
    private final AudioManager Sj;
    private int sP = -1;
    private boolean TKC = false;

    public TEQ(Context context) {
        this.Sj = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }

    public int Sj() {
        return this.sP;
    }

    public void Sj(boolean z10) {
        Sj(z10, false);
    }

    public void Sj(boolean z10, boolean z11) {
        if (this.Sj == null) {
            return;
        }
        int i10 = 0;
        if (z10) {
            int iJcg = DeviceUtils.Jcg();
            if (iJcg != 0) {
                this.sP = iJcg;
            } else if (!z11) {
                return;
            }
            Sj(3, 0, 0);
            this.TKC = true;
            return;
        }
        int iUA = this.sP;
        if (iUA == 0) {
            iUA = DeviceUtils.uA() / 15;
        } else {
            if (iUA == -1) {
                if (!z11) {
                    return;
                } else {
                    iUA = DeviceUtils.uA() / 15;
                }
            }
            this.sP = -1;
            Sj(3, iUA, i10);
            this.TKC = true;
        }
        i10 = 1;
        this.sP = -1;
        Sj(3, iUA, i10);
        this.TKC = true;
    }

    private void Sj(int i10, int i11, int i12) {
        try {
            this.Sj.setStreamVolume(i10, i11, i12);
        } catch (Throwable unused) {
        }
    }
}
