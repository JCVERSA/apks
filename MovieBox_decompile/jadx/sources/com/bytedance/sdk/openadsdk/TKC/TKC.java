package com.bytedance.sdk.openadsdk.TKC;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.uP;
import java.util.List;

public class TKC implements uP {
    private boolean EjP;
    private uP.Sj HiB;
    public aa Sj;
    private EjP TKC;
    private final Context sP;

    public TKC(Context context, String str, List<FilterWord> list, String str2, String str3) {
        this.sP = context;
        Sj(str, list, str2, str3);
    }

    public void EjP() {
        Context context = this.sP;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing() || this.Sj.isShowing()) {
            return;
        }
        this.Sj.show();
    }

    private void Sj(String str, List<FilterWord> list, String str2, String str3) {
        this.TKC = new EjP(this.sP, str, list, str3);
        aa aaVar = new aa(this.sP, this.TKC.getDislikeManager());
        this.Sj = aaVar;
        aaVar.Sj(str, str2);
        this.Sj.Sj(str3);
        this.Sj.Sj(new aa.Sj() {
            @Override
            public void Sj() {
            }

            @Override
            public void TKC() {
                TKC.this.Sj();
            }

            @Override
            public void sP() {
                TKC.this.Sj();
            }

            @Override
            public void Sj(int i10, FilterWord filterWord, String str4) {
                TKC.this.TKC.onSuggestionSubmit(str4);
                TKC.this.Sj();
            }
        });
        this.TKC.Sj(new EjP.Sj() {
            @Override
            public void Sj() {
                TKC.this.Sj(true);
                if (TKC.this.TKC != null && TKC.this.TKC.isShowing()) {
                    TKC.this.TKC.hide();
                }
                TKC.this.EjP();
            }

            @Override
            public void sP() {
                try {
                    if (TKC.this.HiB != null) {
                        TKC.this.HiB.Sj();
                    }
                } catch (Throwable th2) {
                    sU.Sj("TTAdDislikeImpl", "dislike callback cancel error: ", th2);
                }
            }

            @Override
            public void Sj(int i10, FilterWord filterWord) {
                try {
                    if (!filterWord.hasSecondOptions() && TKC.this.HiB != null) {
                        TKC.this.HiB.Sj(i10, filterWord.getName());
                    }
                    filterWord.getName();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public boolean TKC() {
        return this.EjP;
    }

    @Override
    public void sP() {
        EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.destroy();
        }
    }

    @Override
    public void Sj() {
        Context context = this.sP;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing() || this.TKC.isShowing()) {
            return;
        }
        this.TKC.show();
    }

    @Override
    public void Sj(uP.Sj sj2) {
        this.HiB = sj2;
    }

    public void Sj(String str) {
        EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Sj(str);
        }
    }

    public void Sj(boolean z10) {
        this.EjP = z10;
    }
}
