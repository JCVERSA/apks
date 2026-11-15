package com.transsion.transsion_gdpr;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.transsion.hubsdk.api.view.TranWindowManager;
import com.transsion.widgetsgdpr.R;
import java.lang.ref.WeakReference;

public abstract class a {

    public static class C0256a {
        public Context a;
        public boolean b;
        public boolean c;
        public Integer d;
        public Integer e;
        public View f;
        public Integer g = Integer.valueOf(R.style.OS_Dialog_Alert_Base);
        public Integer h;
        public Boolean i;

        public Dialog b() {
            b bVar = new b(this.a, this.g.intValue());
            if (this.h != null && bVar.getWindow() != null) {
                bVar.getWindow().setWindowAnimations(this.h.intValue());
            }
            Integer num = this.e;
            if (num != null) {
                bVar.setContentView(num.intValue());
            } else {
                View view = this.f;
                if (view != null) {
                    bVar.setContentView(view);
                }
            }
            Boolean bool = this.i;
            if (bool != null) {
                bVar.setCanceledOnTouchOutside(bool.booleanValue());
            }
            Integer num2 = this.d;
            if (num2 != null) {
                e(bVar, num2.intValue());
            }
            if (this.b) {
                bVar.getWindow().setType(TranWindowManager.TYPE_APPLICATION_OVERLAY);
            }
            return bVar;
        }

        public C0256a c(Boolean bool) {
            this.i = bool;
            return this;
        }

        public C0256a d(View view) {
            this.f = view;
            return this;
        }

        public final void e(Dialog dialog, int i) {
            dialog.getWindow().setGravity(i);
        }

        public C0256a f() {
            this.c = true;
            return this;
        }

        public C0256a g(Integer num) {
            this.g = num;
            return this;
        }
    }

    public static class b extends Dialog {
        public DialogInterface.OnKeyListener b;

        public b(Context context, int i) {
            super(context, i);
        }

        @Override
        public void onBackPressed() {
            if (this.b != null) {
                this.b.onKey(this, 4, new KeyEvent(1, 4));
            }
        }

        @Override
        public void setOnCancelListener(@Nullable DialogInterface.OnCancelListener onCancelListener) {
            super.setOnCancelListener(new c(onCancelListener));
        }

        @Override
        public void setOnDismissListener(@Nullable DialogInterface.OnDismissListener onDismissListener) {
            super.setOnDismissListener(new d(onDismissListener));
        }

        @Override
        public void setOnKeyListener(@Nullable DialogInterface.OnKeyListener onKeyListener) {
            super.setOnKeyListener(onKeyListener);
            this.b = onKeyListener;
        }
    }

    public static class c implements DialogInterface.OnCancelListener {
        public final WeakReference b;

        public c(DialogInterface.OnCancelListener onCancelListener) {
            this.b = new WeakReference(onCancelListener);
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            DialogInterface.OnCancelListener onCancelListener = (DialogInterface.OnCancelListener) this.b.get();
            if (onCancelListener != null) {
                onCancelListener.onCancel(dialogInterface);
            }
        }
    }

    public static class d implements DialogInterface.OnDismissListener {
        public final WeakReference b;

        public d(DialogInterface.OnDismissListener onDismissListener) {
            this.b = new WeakReference(onDismissListener);
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            DialogInterface.OnDismissListener onDismissListener = (DialogInterface.OnDismissListener) this.b.get();
            if (onDismissListener != null) {
                onDismissListener.onDismiss(dialogInterface);
            }
        }
    }

    public static C0256a a(Context context) {
        C0256a c0256a = new C0256a();
        c0256a.a = context;
        return c0256a;
    }
}
