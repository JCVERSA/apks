package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;

public class c extends w implements DialogInterface {

    final AlertController f808a;

    public static class a {

        private final AlertController.b f809a;

        private final int f810b;

        public a(Context context) {
            this(context, c.g(context, 0));
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f809a;
            bVar.f687w = listAdapter;
            bVar.f688x = onClickListener;
            return this;
        }

        public a b(View view) {
            this.f809a.f671g = view;
            return this;
        }

        public a c(Drawable drawable) {
            this.f809a.f668d = drawable;
            return this;
        }

        @NonNull
        public c create() {
            c cVar = new c(this.f809a.f665a, this.f810b);
            this.f809a.a(cVar.f808a);
            cVar.setCancelable(this.f809a.f682r);
            if (this.f809a.f682r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.f809a.f683s);
            cVar.setOnDismissListener(this.f809a.f684t);
            DialogInterface.OnKeyListener onKeyListener = this.f809a.f685u;
            if (onKeyListener != null) {
                cVar.setOnKeyListener(onKeyListener);
            }
            return cVar;
        }

        public a d(CharSequence charSequence) {
            this.f809a.f672h = charSequence;
            return this;
        }

        public a e(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f809a;
            bVar.f676l = charSequence;
            bVar.f678n = onClickListener;
            return this;
        }

        public a f(DialogInterface.OnKeyListener onKeyListener) {
            this.f809a.f685u = onKeyListener;
            return this;
        }

        public a g(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f809a;
            bVar.f673i = charSequence;
            bVar.f675k = onClickListener;
            return this;
        }

        @NonNull
        public Context getContext() {
            return this.f809a.f665a;
        }

        public a h(ListAdapter listAdapter, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f809a;
            bVar.f687w = listAdapter;
            bVar.f688x = onClickListener;
            bVar.I = i10;
            bVar.H = true;
            return this;
        }

        public a setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f809a;
            bVar.f676l = bVar.f665a.getText(i10);
            this.f809a.f678n = onClickListener;
            return this;
        }

        public a setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f809a;
            bVar.f673i = bVar.f665a.getText(i10);
            this.f809a.f675k = onClickListener;
            return this;
        }

        public a setTitle(@Nullable CharSequence charSequence) {
            this.f809a.f670f = charSequence;
            return this;
        }

        public a setView(View view) {
            AlertController.b bVar = this.f809a;
            bVar.f690z = view;
            bVar.f689y = 0;
            bVar.E = false;
            return this;
        }

        public a(@NonNull Context context, int i10) {
            this.f809a = new AlertController.b(new ContextThemeWrapper(context, c.g(context, i10)));
            this.f810b = i10;
        }
    }

    protected c(Context context, int i10) {
        super(context, g(context, i10));
        this.f808a = new AlertController(getContext(), this, getWindow());
    }

    static int g(Context context, int i10) {
        if (((i10 >>> 24) & 255) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView f() {
        return this.f808a.d();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f808a.e();
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (this.f808a.g(i10, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (this.f808a.h(i10, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f808a.q(charSequence);
    }
}
