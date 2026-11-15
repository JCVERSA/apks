package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.List;

public class EjP extends TTDislikeDialogAbstract {
    private Sj EjP;
    private String HiB;

    public interface Sj {
        void Sj();

        void Sj(int i10, FilterWord filterWord);

        void sP();
    }

    public EjP(Context context, String str, List<FilterWord> list, String str2) {
        super(context, ib.vS(context, "tt_dislikeDialog"), str2);
        this.Sj = str;
        this.sP = list;
    }

    private void sP() {
        setOnShowListener(new DialogInterface.OnShowListener() {
            @Override
            public void onShow(DialogInterface dialogInterface) {
                if (EjP.this.EjP != null) {
                    Sj unused = EjP.this.EjP;
                }
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialogInterface) {
                if (EjP.this.EjP != null) {
                    EjP.this.EjP.sP();
                }
            }
        });
    }

    @Override
    public ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(FPG.TKC(getContext()) - 120, -2);
    }

    @Override
    public View getLayoutView() {
        return new uA(getContext(), this.TKC, this.sP);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setCanceledOnTouchOutside(true);
            setCancelable(true);
            Sj();
            sP();
            setMaterialMeta(this.Sj, this.sP);
        } catch (Throwable unused) {
            dismiss();
        }
    }

    @Override
    public void show() {
        try {
            super.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }

    public void Sj(Sj sj2) {
        this.EjP = sj2;
    }

    public void Sj(String str) {
        this.HiB = str;
    }

    @Override
    public void Sj(int i10) {
        FilterWord filterWordSP;
        if (TEQ.TKC == i10) {
            dismiss();
            return;
        }
        if (TEQ.HiB == i10) {
            Sj sj2 = this.EjP;
            if (sj2 != null) {
                sj2.Sj();
                return;
            }
            return;
        }
        if (TEQ.sP != i10 || (filterWordSP = this.TKC.sP()) == null || TEQ.Sj.equals(filterWordSP)) {
            return;
        }
        Sj sj3 = this.EjP;
        if (sj3 != null) {
            try {
                sj3.Sj(0, filterWordSP);
            } catch (Throwable unused) {
            }
        }
        dismiss();
    }

    private void Sj() {
        Window window = getWindow();
        if (window == null || window.getAttributes() == null) {
            return;
        }
        window.getAttributes().windowAnimations = 0;
    }
}
