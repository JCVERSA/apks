package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.R$layout;

class g implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, l.a {

    private f f1156a;

    private androidx.appcompat.app.c f1157b;

    d f1158c;

    private l.a f1159d;

    public g(f fVar) {
        this.f1156a = fVar;
    }

    public void a() {
        androidx.appcompat.app.c cVar = this.f1157b;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    @Override
    public void b(f fVar, boolean z10) {
        if (z10 || fVar == this.f1156a) {
            a();
        }
        l.a aVar = this.f1159d;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override
    public boolean c(f fVar) {
        l.a aVar = this.f1159d;
        if (aVar != null) {
            return aVar.c(fVar);
        }
        return false;
    }

    public void d(IBinder iBinder) {
        f fVar = this.f1156a;
        androidx.appcompat.app.c.a aVar = new androidx.appcompat.app.c.a(fVar.w());
        d dVar = new d(aVar.getContext(), R$layout.abc_list_menu_item_layout);
        this.f1158c = dVar;
        dVar.d(this);
        this.f1156a.b(this.f1158c);
        aVar.a(this.f1158c.a(), this);
        View viewA = fVar.A();
        if (viewA != null) {
            aVar.b(viewA);
        } else {
            aVar.c(fVar.y()).setTitle(fVar.z());
        }
        aVar.f(this);
        androidx.appcompat.app.c cVarCreate = aVar.create();
        this.f1157b = cVarCreate;
        cVarCreate.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1157b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f1157b.show();
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i10) {
        this.f1156a.O((h) this.f1158c.a().getItem(i10), 0);
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1158c.b(this.f1156a, true);
    }

    @Override
    public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i10 == 82 || i10 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f1157b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f1157b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f1156a.e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f1156a.performShortcut(i10, keyEvent, 0);
    }
}
