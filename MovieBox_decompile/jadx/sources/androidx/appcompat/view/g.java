package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.y;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import com.tn.lib.view.FlowLayout;
import com.transsion.web.api.WebConstants;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class g extends MenuInflater {

    static final Class[] f971e;

    static final Class[] f972f;

    final Object[] f973a;

    final Object[] f974b;

    Context f975c;

    private Object f976d;

    private static class a implements MenuItem.OnMenuItemClickListener {

        private static final Class[] f977c = {MenuItem.class};

        private Object f978a;

        private Method f979b;

        public a(Object obj, String str) {
            this.f978a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f979b = cls.getMethod(str, f977c);
            } catch (Exception e10) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e10);
                throw inflateException;
            }
        }

        @Override
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f979b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f979b.invoke(this.f978a, menuItem)).booleanValue();
                }
                this.f979b.invoke(this.f978a, menuItem);
                return true;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    private class b {
        ActionProvider A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        private Menu f980a;

        private int f981b;

        private int f982c;

        private int f983d;

        private int f984e;

        private boolean f985f;

        private boolean f986g;

        private boolean f987h;

        private int f988i;

        private int f989j;

        private CharSequence f990k;

        private CharSequence f991l;

        private int f992m;

        private char f993n;

        private int f994o;

        private char f995p;

        private int f996q;

        private int f997r;

        private boolean f998s;

        private boolean f999t;

        private boolean f1000u;

        private int f1001v;

        private int f1002w;

        private String f1003x;

        private String f1004y;

        private String f1005z;

        public b(Menu menu) {
            this.f980a = menu;
            h();
        }

        private char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private Object e(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f975c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e10) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e10);
                return null;
            }
        }

        private void i(MenuItem menuItem) {
            boolean z10 = false;
            menuItem.setChecked(this.f998s).setVisible(this.f999t).setEnabled(this.f1000u).setCheckable(this.f997r >= 1).setTitleCondensed(this.f991l).setIcon(this.f992m);
            int i10 = this.f1001v;
            if (i10 >= 0) {
                menuItem.setShowAsAction(i10);
            }
            if (this.f1005z != null) {
                if (g.this.f975c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.f1005z));
            }
            if (this.f997r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.h) {
                    ((androidx.appcompat.view.menu.h) menuItem).t(true);
                } else if (menuItem instanceof androidx.appcompat.view.menu.i) {
                    ((androidx.appcompat.view.menu.i) menuItem).h(true);
                }
            }
            String str = this.f1003x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.f971e, g.this.f973a));
                z10 = true;
            }
            int i11 = this.f1002w;
            if (i11 > 0) {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i11);
                }
            }
            ActionProvider actionProvider = this.A;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.B);
            MenuItemCompat.setTooltipText(menuItem, this.C);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.f993n, this.f994o);
            MenuItemCompat.setNumericShortcut(menuItem, this.f995p, this.f996q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }

        public void a() {
            this.f987h = true;
            i(this.f980a.add(this.f981b, this.f988i, this.f989j, this.f990k));
        }

        public SubMenu b() {
            this.f987h = true;
            SubMenu subMenuAddSubMenu = this.f980a.addSubMenu(this.f981b, this.f988i, this.f989j, this.f990k);
            i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.f987h;
        }

        public void f(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f975c.obtainStyledAttributes(attributeSet, R$styleable.MenuGroup);
            this.f981b = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuGroup_android_id, 0);
            this.f982c = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_menuCategory, 0);
            this.f983d = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_orderInCategory, 0);
            this.f984e = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_checkableBehavior, 0);
            this.f985f = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_visible, true);
            this.f986g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            j0 j0VarU = j0.u(g.this.f975c, attributeSet, R$styleable.MenuItem);
            this.f988i = j0VarU.n(R$styleable.MenuItem_android_id, 0);
            this.f989j = (j0VarU.k(R$styleable.MenuItem_android_menuCategory, this.f982c) & FlowLayout.SPACING_AUTO) | (j0VarU.k(R$styleable.MenuItem_android_orderInCategory, this.f983d) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            this.f990k = j0VarU.p(R$styleable.MenuItem_android_title);
            this.f991l = j0VarU.p(R$styleable.MenuItem_android_titleCondensed);
            this.f992m = j0VarU.n(R$styleable.MenuItem_android_icon, 0);
            this.f993n = c(j0VarU.o(R$styleable.MenuItem_android_alphabeticShortcut));
            this.f994o = j0VarU.k(R$styleable.MenuItem_alphabeticModifiers, 4096);
            this.f995p = c(j0VarU.o(R$styleable.MenuItem_android_numericShortcut));
            this.f996q = j0VarU.k(R$styleable.MenuItem_numericModifiers, 4096);
            if (j0VarU.s(R$styleable.MenuItem_android_checkable)) {
                this.f997r = j0VarU.a(R$styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f997r = this.f984e;
            }
            this.f998s = j0VarU.a(R$styleable.MenuItem_android_checked, false);
            this.f999t = j0VarU.a(R$styleable.MenuItem_android_visible, this.f985f);
            this.f1000u = j0VarU.a(R$styleable.MenuItem_android_enabled, this.f986g);
            this.f1001v = j0VarU.k(R$styleable.MenuItem_showAsAction, -1);
            this.f1005z = j0VarU.o(R$styleable.MenuItem_android_onClick);
            this.f1002w = j0VarU.n(R$styleable.MenuItem_actionLayout, 0);
            this.f1003x = j0VarU.o(R$styleable.MenuItem_actionViewClass);
            String strO = j0VarU.o(R$styleable.MenuItem_actionProviderClass);
            this.f1004y = strO;
            boolean z10 = strO != null;
            if (z10 && this.f1002w == 0 && this.f1003x == null) {
                this.A = (ActionProvider) e(strO, g.f972f, g.this.f974b);
            } else {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = j0VarU.p(R$styleable.MenuItem_contentDescription);
            this.C = j0VarU.p(R$styleable.MenuItem_tooltipText);
            if (j0VarU.s(R$styleable.MenuItem_iconTintMode)) {
                this.E = y.e(j0VarU.k(R$styleable.MenuItem_iconTintMode, -1), this.E);
            } else {
                this.E = null;
            }
            if (j0VarU.s(R$styleable.MenuItem_iconTint)) {
                this.D = j0VarU.c(R$styleable.MenuItem_iconTint);
            } else {
                this.D = null;
            }
            j0VarU.x();
            this.f987h = false;
        }

        public void h() {
            this.f981b = 0;
            this.f982c = 0;
            this.f983d = 0;
            this.f984e = 0;
            this.f985f = true;
            this.f986g = true;
        }
    }

    static {
        Class[] clsArr = {Context.class};
        f971e = clsArr;
        f972f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f975c = context;
        Object[] objArr = {context};
        this.f973a = objArr;
        this.f974b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                    break;
                }
                throw new RuntimeException("Expecting menu, got " + name);
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        boolean z10 = false;
        boolean z11 = false;
        String str = null;
        while (!z10) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z11 && name2.equals(str)) {
                        z11 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        bVar.h();
                    } else if (name2.equals(WebConstants.FIELD_ITEM)) {
                        if (!bVar.d()) {
                            ActionProvider actionProvider = bVar.A;
                            if (actionProvider == null || !actionProvider.hasSubMenu()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z10 = true;
                    }
                }
            } else if (!z11) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.f(attributeSet);
                } else if (name3.equals(WebConstants.FIELD_ITEM)) {
                    bVar.g(attributeSet);
                } else if (name3.equals("menu")) {
                    c(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z11 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    Object b() {
        if (this.f976d == null) {
            this.f976d = a(this.f975c);
        }
        return this.f976d;
    }

    @Override
    public void inflate(int i10, Menu menu) {
        if (!(menu instanceof b1.a)) {
            super.inflate(i10, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z10 = false;
        try {
            try {
                layout = this.f975c.getResources().getLayout(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof androidx.appcompat.view.menu.f) {
                    androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) menu;
                    if (fVar.H()) {
                        fVar.i0();
                        z10 = true;
                    }
                }
                c(layout, attributeSetAsAttributeSet, menu);
                if (z10) {
                    ((androidx.appcompat.view.menu.f) menu).h0();
                }
                if (layout != null) {
                    layout.close();
                }
            } catch (IOException e10) {
                throw new InflateException("Error inflating menu XML", e10);
            } catch (XmlPullParserException e11) {
                throw new InflateException("Error inflating menu XML", e11);
            }
        } catch (Throwable th2) {
            if (z10) {
                ((androidx.appcompat.view.menu.f) menu).h0();
            }
            if (layout != null) {
                layout.close();
            }
            throw th2;
        }
    }
}
