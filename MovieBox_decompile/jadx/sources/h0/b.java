package h0;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.compose.ui.platform.actionmodecallback.MenuItemOption;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import y.i;

public final class b {

    private final Function0 f61212a;

    private i f61213b;

    private Function0 f61214c;

    private Function0 f61215d;

    private Function0 f61216e;

    private Function0 f61217f;

    public b() {
        this(null, null, null, null, null, null, 63, null);
    }

    private final void b(Menu menu, MenuItemOption menuItemOption, Function0 function0) {
        if (function0 != null && menu.findItem(menuItemOption.getId()) == null) {
            a(menu, menuItemOption);
        } else {
            if (function0 != null || menu.findItem(menuItemOption.getId()) == null) {
                return;
            }
            menu.removeItem(menuItemOption.getId());
        }
    }

    public final void a(Menu menu, MenuItemOption menuItemOption) {
        menu.add(0, menuItemOption.getId(), menuItemOption.getOrder(), menuItemOption.getTitleResource()).setShowAsAction(1);
    }

    public final i c() {
        return this.f61213b;
    }

    public final boolean d(ActionMode actionMode, MenuItem menuItem) {
        Intrinsics.e(menuItem);
        int itemId = menuItem.getItemId();
        if (itemId == MenuItemOption.Copy.getId()) {
            Function0 function0 = this.f61214c;
            if (function0 != null) {
                function0.invoke();
            }
        } else if (itemId == MenuItemOption.Paste.getId()) {
            Function0 function1 = this.f61215d;
            if (function1 != null) {
                function1.invoke();
            }
        } else if (itemId == MenuItemOption.Cut.getId()) {
            Function0 function2 = this.f61216e;
            if (function2 != null) {
                function2.invoke();
            }
        } else {
            if (itemId != MenuItemOption.SelectAll.getId()) {
                return false;
            }
            Function0 function3 = this.f61217f;
            if (function3 != null) {
                function3.invoke();
            }
        }
        if (actionMode == null) {
            return true;
        }
        actionMode.finish();
        return true;
    }

    public final boolean e(ActionMode actionMode, Menu menu) {
        if (menu == null) {
            throw new IllegalArgumentException("onCreateActionMode requires a non-null menu");
        }
        if (actionMode == null) {
            throw new IllegalArgumentException("onCreateActionMode requires a non-null mode");
        }
        if (this.f61214c != null) {
            a(menu, MenuItemOption.Copy);
        }
        if (this.f61215d != null) {
            a(menu, MenuItemOption.Paste);
        }
        if (this.f61216e != null) {
            a(menu, MenuItemOption.Cut);
        }
        if (this.f61217f == null) {
            return true;
        }
        a(menu, MenuItemOption.SelectAll);
        return true;
    }

    public final void f() {
        Function0 function0 = this.f61212a;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final boolean g(ActionMode actionMode, Menu menu) {
        if (actionMode == null || menu == null) {
            return false;
        }
        m(menu);
        return true;
    }

    public final void h(Function0 function0) {
        this.f61214c = function0;
    }

    public final void i(Function0 function0) {
        this.f61216e = function0;
    }

    public final void j(Function0 function0) {
        this.f61215d = function0;
    }

    public final void k(Function0 function0) {
        this.f61217f = function0;
    }

    public final void l(i iVar) {
        this.f61213b = iVar;
    }

    public final void m(Menu menu) {
        b(menu, MenuItemOption.Copy, this.f61214c);
        b(menu, MenuItemOption.Paste, this.f61215d);
        b(menu, MenuItemOption.Cut, this.f61216e);
        b(menu, MenuItemOption.SelectAll, this.f61217f);
    }

    public b(Function0 function0, i iVar, Function0 function1, Function0 function2, Function0 function3, Function0 function4) {
        this.f61212a = function0;
        this.f61213b = iVar;
        this.f61214c = function1;
        this.f61215d = function2;
        this.f61216e = function3;
        this.f61217f = function4;
    }

    public b(Function0 function0, i iVar, Function0 function1, Function0 function2, Function0 function3, Function0 function4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : function0, (i10 & 2) != 0 ? i.f76004e.a() : iVar, (i10 & 4) != 0 ? null : function1, (i10 & 8) != 0 ? null : function2, (i10 & 16) != 0 ? null : function3, (i10 & 32) != 0 ? null : function4);
    }
}
