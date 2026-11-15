package com.transsion.playercommon.subtitle.middleware;

import android.os.Bundle;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.aicore.nexusflow.IAapCallback;
import com.transsion.aicore.nexusflow.client.SubtitleManager;
import com.transsion.playercommon.subtitle.middleware.SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;
import defpackage.l6a;
import defpackage.y45;
import defpackage.zt4;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"com/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1", "Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;", "Landroid/os/Bundle;", "data", "Lzfb;", "onData", "(Landroid/os/Bundle;)V", "", TrackingKey.CODE, "onEvent", "(I)V", "", "message", "onError", "(ILjava/lang/String;)V", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1 extends IAapCallback.Stub {
    final SubtitleNexusFlowManager this$0;

    public SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1(SubtitleNexusFlowManager subtitleNexusFlowManager) {
        this.this$0 = subtitleNexusFlowManager;
    }

    public static final void onData$lambda$0(Bundle bundle, SubtitleNexusFlowManager subtitleNexusFlowManager) {
        if (bundle != null) {
            String string = bundle.getString("origin_text");
            String string2 = bundle.getString("text");
            Log.d("SubtitleNexusFlowManager", "onData " + string2 + ", origin=" + string);
            if (subtitleNexusFlowManager.b == null) {
                Log.w("Subtitle_Out", "onTranslateCallback subtitleSubtitleListener is null");
                return;
            }
            zt4 zt4Var = subtitleNexusFlowManager.b;
            y45.g(zt4Var);
            zt4Var.a(string2, string);
        }
    }

    public static final void onError$lambda$2(SubtitleNexusFlowManager subtitleNexusFlowManager, int i) {
        subtitleNexusFlowManager.c = -1;
        if (i == 1015) {
            l6a.b().c(-3);
        }
        if (subtitleNexusFlowManager.a != null) {
            SubtitleManager subtitleManager = subtitleNexusFlowManager.a;
            if (subtitleManager != null) {
                subtitleManager.stop();
            }
            subtitleNexusFlowManager.a = null;
        }
    }

    public static final void onEvent$lambda$1(int i, SubtitleNexusFlowManager subtitleNexusFlowManager) {
        if (i == 1011) {
            subtitleNexusFlowManager.c = 2;
            l6a.b().c(2);
        } else {
            if (i != 1015) {
                return;
            }
            SubtitleManager subtitleManager = subtitleNexusFlowManager.a;
            if (subtitleManager != null) {
                subtitleManager.stop();
            }
            subtitleNexusFlowManager.a = null;
        }
    }

    @Override
    public void onData(final Bundle data) {
        Log.e("Subtitle_Out", "onTranslateCallback data:" + data);
        final SubtitleNexusFlowManager subtitleNexusFlowManager = this.this$0;
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1.onData$lambda$0(data, subtitleNexusFlowManager);
            }
        });
    }

    @Override
    public void onError(final int code, String message) {
        Log.w("SubtitleNexusFlowManager", "onError " + code + ", " + message);
        final SubtitleNexusFlowManager subtitleNexusFlowManager = this.this$0;
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1.onError$lambda$2(subtitleNexusFlowManager, code);
            }
        });
    }

    @Override
    public void onEvent(final int code) {
        Log.i("SubtitleNexusFlowManager", "onEvent " + code);
        final SubtitleNexusFlowManager subtitleNexusFlowManager = this.this$0;
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1.onEvent$lambda$1(code, subtitleNexusFlowManager);
            }
        });
    }
}
