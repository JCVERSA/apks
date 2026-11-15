package com.transsion.playercommon.utils.views;

import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import com.transsion.playercommon.fragments.AlertDialogFragment;
import com.transsion.playercommon.fragments.SimpleBottomSheetDialog;
import defpackage.h27;

public class HalfListDialogFragmentUtil {
    public static final String m = "HalfListDialogFragmentUtil";
    public final Context a;
    public final String b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public int g;
    public a h;
    public AlertDialogFragment.d i;
    public DialogInterface.OnDismissListener j;
    public b k;
    public int l;

    public interface a {
        void a(SimpleBottomSheetDialog simpleBottomSheetDialog, View view);
    }

    public interface b {
        void onDismiss();
    }

    public HalfListDialogFragmentUtil(Context context, String str, int i) {
        this(context, str, i, 0, 0, 0);
    }

    public final void c(SimpleBottomSheetDialog simpleBottomSheetDialog, View view) {
        a aVar = this.h;
        if (aVar != null) {
            aVar.a(simpleBottomSheetDialog, view);
        }
    }

    public void d(int i) {
        this.g = i;
    }

    public void e(a aVar) {
        this.h = aVar;
    }

    public void f(int i) {
        this.l = i;
    }

    public void g() {
        int i = this.d;
        final SimpleBottomSheetDialog simpleBottomSheetDialogI = i <= 0 ? SimpleBottomSheetDialog.I(this.f, this.c, 0, this.e, this.l) : SimpleBottomSheetDialog.H(this.c, i, this.e, this.l);
        simpleBottomSheetDialogI.L(new SimpleBottomSheetDialog.c() {
            @Override
            public final void a(View view) {
                this.a.c(simpleBottomSheetDialogI, view);
            }
        });
        simpleBottomSheetDialogI.getLifecycle().addObserver(new LifecycleEventObserver() {
            @Override
            public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    if (HalfListDialogFragmentUtil.this.k != null) {
                        HalfListDialogFragmentUtil.this.k.onDismiss();
                    }
                    h27.c().e(1073, new Object[0]);
                }
            }
        });
        try {
            simpleBottomSheetDialogI.showNow(((AppCompatActivity) this.a).getSupportFragmentManager(), this.b);
        } catch (Exception e) {
            Log.e(m, "showDialogFragment failed,e=" + e.getMessage());
        }
    }

    public void setDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.j = onDismissListener;
    }

    public void setDismissListener2(b bVar) {
        this.k = bVar;
    }

    public void setOnResumeListener(AlertDialogFragment.d dVar) {
        this.i = dVar;
    }

    public HalfListDialogFragmentUtil(Context context, String str, int i, int i2) {
        this(context, str, i, i2, 0, 0);
    }

    public HalfListDialogFragmentUtil(Context context, String str, int i, int i2, int i3, int i4) {
        this.a = context;
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
    }
}
