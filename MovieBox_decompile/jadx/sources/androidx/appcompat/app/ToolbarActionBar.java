package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.n0;
import androidx.core.view.ViewCompat;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import java.util.ArrayList;

class ToolbarActionBar extends androidx.appcompat.app.a {

    final androidx.appcompat.widget.t f781a;

    final Window.Callback f782b;

    final AppCompatDelegateImpl.e f783c;

    boolean f784d;

    private boolean f785e;

    private boolean f786f;

    private ArrayList f787g = new ArrayList();

    private final Runnable f788h = new Runnable() {
        @Override
        public void run() {
            ToolbarActionBar.this.x();
        }
    };

    private final Toolbar.g f789i;

    class a implements Toolbar.g {
        a() {
        }

        @Override
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ToolbarActionBar.this.f782b.onMenuItemSelected(0, menuItem);
        }
    }

    private final class b implements androidx.appcompat.view.menu.l.a {

        private boolean f791a;

        b() {
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            if (this.f791a) {
                return;
            }
            this.f791a = true;
            ToolbarActionBar.this.f781a.k();
            ToolbarActionBar.this.f782b.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            this.f791a = false;
        }

        @Override
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            ToolbarActionBar.this.f782b.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            return true;
        }
    }

    private final class c implements androidx.appcompat.view.menu.f.a {
        c() {
        }

        @Override
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            return false;
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar) {
            if (ToolbarActionBar.this.f781a.isOverflowMenuShowing()) {
                ToolbarActionBar.this.f782b.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            } else if (ToolbarActionBar.this.f782b.onPreparePanel(0, null, fVar)) {
                ToolbarActionBar.this.f782b.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            }
        }
    }

    private class d implements AppCompatDelegateImpl.e {
        d() {
        }

        @Override
        public boolean a(int i10) {
            if (i10 != 0) {
                return false;
            }
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            if (toolbarActionBar.f784d) {
                return false;
            }
            toolbarActionBar.f781a.setMenuPrepared();
            ToolbarActionBar.this.f784d = true;
            return false;
        }

        @Override
        public View onCreatePanelView(int i10) {
            if (i10 == 0) {
                return new View(ToolbarActionBar.this.f781a.getContext());
            }
            return null;
        }
    }

    ToolbarActionBar(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        a aVar = new a();
        this.f789i = aVar;
        androidx.core.util.i.g(toolbar);
        n0 n0Var = new n0(toolbar, false);
        this.f781a = n0Var;
        this.f782b = (Window.Callback) androidx.core.util.i.g(callback);
        n0Var.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(aVar);
        n0Var.setWindowTitle(charSequence);
        this.f783c = new d();
    }

    private Menu w() {
        if (!this.f785e) {
            this.f781a.o(new b(), new c());
            this.f785e = true;
        }
        return this.f781a.c();
    }

    @Override
    public boolean g() {
        return this.f781a.hideOverflowMenu();
    }

    @Override
    public boolean h() {
        if (!this.f781a.a()) {
            return false;
        }
        this.f781a.collapseActionView();
        return true;
    }

    @Override
    public void i(boolean z10) {
        if (z10 == this.f786f) {
            return;
        }
        this.f786f = z10;
        if (this.f787g.size() <= 0) {
            return;
        }
        android.support.v4.media.session.c.a(this.f787g.get(0));
        throw null;
    }

    @Override
    public int j() {
        return this.f781a.r();
    }

    @Override
    public Context k() {
        return this.f781a.getContext();
    }

    @Override
    public void l() {
        this.f781a.setVisibility(8);
    }

    @Override
    public boolean m() {
        this.f781a.g().removeCallbacks(this.f788h);
        ViewCompat.postOnAnimation(this.f781a.g(), this.f788h);
        return true;
    }

    @Override
    public void n(Configuration configuration) {
        super.n(configuration);
    }

    @Override
    void o() {
        this.f781a.g().removeCallbacks(this.f788h);
    }

    @Override
    public boolean p(int i10, KeyEvent keyEvent) {
        Menu menuW = w();
        if (menuW == null) {
            return false;
        }
        menuW.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuW.performShortcut(i10, keyEvent, 0);
    }

    @Override
    public boolean q(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            r();
        }
        return true;
    }

    @Override
    public boolean r() {
        return this.f781a.showOverflowMenu();
    }

    @Override
    public void s(boolean z10) {
    }

    @Override
    public void t(boolean z10) {
    }

    @Override
    public void u(CharSequence charSequence) {
        this.f781a.setWindowTitle(charSequence);
    }

    void x() {
        Menu menuW = w();
        androidx.appcompat.view.menu.f fVar = menuW instanceof androidx.appcompat.view.menu.f ? (androidx.appcompat.view.menu.f) menuW : null;
        if (fVar != null) {
            fVar.i0();
        }
        try {
            menuW.clear();
            if (!this.f782b.onCreatePanelMenu(0, menuW) || !this.f782b.onPreparePanel(0, null, menuW)) {
                menuW.clear();
            }
        } finally {
            if (fVar != null) {
                fVar.h0();
            }
        }
    }
}
