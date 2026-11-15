package com.bytedance.sdk.openadsdk.core.Ym;

import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import h6.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class vS {
    final Set<Pair<View, FriendlyObstructionPurpose>> Sj = new HashSet();
    private Jcg sP;

    private vS() {
        HiB.Sj(dNu.Sj());
    }

    public void Dq() {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.TKC();
            } catch (Throwable unused) {
            }
        }
    }

    private Handler HiB() {
        return com.bytedance.sdk.component.utils.uA.sP();
    }

    public void Jcg() {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.EjP();
            } catch (Throwable unused) {
            }
        }
    }

    public void vS() {
        if (this.sP != null) {
            try {
                Sj((View) null, (FriendlyObstructionPurpose) null);
                this.sP.sP();
            } catch (Throwable unused) {
            }
        }
    }

    public void EjP() {
        if (a.x()) {
            Dq();
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.Dq();
                }
            });
        }
    }

    public void sP(WebView webView) {
        try {
            if (this.sP == null) {
                this.sP = Dq.Sj(webView);
            }
        } catch (Throwable th2) {
            sU.sP("createWebViewSession failed : ".concat(String.valueOf(th2)), new Object[0]);
            HashMap map = new HashMap();
            map.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "createWebViewSession");
            map.put("message", th2.getMessage());
            HiB.Sj(map);
        }
    }

    public void TKC() {
        if (a.x()) {
            Jcg();
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.Jcg();
                }
            });
        }
    }

    public static vS Sj() {
        return new vS();
    }

    public void sP(View view, Set<TEQ> set) {
        try {
            if (this.sP == null) {
                this.sP = Dq.Sj(view, set);
            }
        } catch (Throwable th2) {
            sU.sP("createVideoSession failed : ".concat(String.valueOf(th2)), new Object[0]);
            HashMap map = new HashMap();
            map.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "createVideoSession");
            map.put("message", th2.getMessage());
            HiB.Sj(map);
        }
    }

    public void Sj(final WebView webView) {
        if (webView == null || this.sP != null) {
            return;
        }
        if (a.x()) {
            sP(webView);
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.sP(webView);
                }
            });
        }
    }

    public void Sj(final View view, final Set<TEQ> set) {
        if (this.sP != null || view == null || set == null) {
            return;
        }
        if (a.x()) {
            sP(view, set);
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.sP(view, (Set<TEQ>) set);
                }
            });
        }
    }

    public void sP() {
        if (a.x()) {
            vS();
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.vS();
                }
            });
        }
    }

    public void Sj(final boolean z10, final float f10) {
        if (a.x()) {
            sP(z10, f10);
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.sP(z10, f10);
                }
            });
        }
    }

    public void sP(boolean z10, float f10) {
        if (this.sP != null) {
            try {
                Sj((View) null, (FriendlyObstructionPurpose) null);
                this.sP.Sj(z10, f10);
            } catch (Throwable unused) {
            }
        }
    }

    public void Sj(@Nullable final View view, @Nullable final FriendlyObstructionPurpose friendlyObstructionPurpose) {
        if (a.x()) {
            sP(view, friendlyObstructionPurpose);
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.sP(view, friendlyObstructionPurpose);
                }
            });
        }
    }

    public void sP(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
        Jcg jcg = this.sP;
        try {
            if (jcg == null) {
                if (view == null || friendlyObstructionPurpose == null) {
                    return;
                }
                this.Sj.add(new Pair<>(view, friendlyObstructionPurpose));
                return;
            }
            if (view != null && friendlyObstructionPurpose != null) {
                jcg.Sj(view, friendlyObstructionPurpose);
            }
            if (this.Sj.size() > 0) {
                jcg.Sj(this.Sj);
                this.Sj.clear();
            }
        } catch (Throwable unused) {
        }
    }

    public void Sj(final long j10, final boolean z10) {
        if (a.x()) {
            sP(j10, z10);
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.sP(j10, z10);
                }
            });
        }
    }

    public void Sj(final boolean z10) {
        if (a.x()) {
            sP(z10);
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.sP(z10);
                }
            });
        }
    }

    public void sP(long j10, boolean z10) {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.Sj(j10 / 1000.0f, z10);
            } catch (Throwable unused) {
            }
        }
    }

    public void Sj(final int i10) {
        if (a.x()) {
            sP(i10);
        } else {
            HiB().post(new Runnable() {
                @Override
                public void run() {
                    vS.this.sP(i10);
                }
            });
        }
    }

    public void sP(boolean z10) {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.Sj(z10);
            } catch (Throwable unused) {
            }
        }
    }

    public void sP(int i10) {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.sP(i10);
            } catch (Throwable unused) {
            }
        }
    }
}
