package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.internal.http2.Settings;

public class f implements b1.a {
    private static final int[] A = {1, 4, 5, 3, 2, 0};

    private final Context f1130a;

    private final Resources f1131b;

    private boolean f1132c;

    private boolean f1133d;

    private a f1134e;

    private ContextMenu.ContextMenuInfo f1142m;

    CharSequence f1143n;

    Drawable f1144o;

    View f1145p;

    private h f1153x;

    private boolean f1155z;

    private int f1141l = 0;

    private boolean f1146q = false;

    private boolean f1147r = false;

    private boolean f1148s = false;

    private boolean f1149t = false;

    private boolean f1150u = false;

    private ArrayList f1151v = new ArrayList();

    private CopyOnWriteArrayList f1152w = new CopyOnWriteArrayList();

    private boolean f1154y = false;

    private ArrayList f1135f = new ArrayList();

    private ArrayList f1136g = new ArrayList();

    private boolean f1137h = true;

    private ArrayList f1138i = new ArrayList();

    private ArrayList f1139j = new ArrayList();

    private boolean f1140k = true;

    public interface a {
        boolean a(f fVar, MenuItem menuItem);

        void b(f fVar);
    }

    public interface b {
        boolean invokeItem(h hVar);
    }

    public f(Context context) {
        this.f1130a = context;
        this.f1131b = context.getResources();
        g0(true);
    }

    private static int D(int i10) {
        int i11 = ((-65536) & i10) >> 16;
        if (i11 >= 0) {
            int[] iArr = A;
            if (i11 < iArr.length) {
                return (i10 & Settings.DEFAULT_INITIAL_WINDOW_SIZE) | (iArr[i11] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void Q(int i10, boolean z10) {
        if (i10 < 0 || i10 >= this.f1135f.size()) {
            return;
        }
        this.f1135f.remove(i10);
        if (z10) {
            N(true);
        }
    }

    private void b0(int i10, CharSequence charSequence, int i11, Drawable drawable, View view) {
        Resources resourcesE = E();
        if (view != null) {
            this.f1145p = view;
            this.f1143n = null;
            this.f1144o = null;
        } else {
            if (i10 > 0) {
                this.f1143n = resourcesE.getText(i10);
            } else if (charSequence != null) {
                this.f1143n = charSequence;
            }
            if (i11 > 0) {
                this.f1144o = androidx.core.content.b.getDrawable(w(), i11);
            } else if (drawable != null) {
                this.f1144o = drawable;
            }
            this.f1145p = null;
        }
        N(false);
    }

    private h g(int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        return new h(this, i10, i11, i12, i13, charSequence, i14);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    private void g0(boolean z10) {
        boolean z11;
        if (z10) {
            z11 = this.f1131b.getConfiguration().keyboard != 1 && ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(this.f1130a), this.f1130a);
        }
        this.f1133d = z11;
    }

    private void i(boolean z10) {
        if (this.f1152w.isEmpty()) {
            return;
        }
        i0();
        for (WeakReference weakReference : this.f1152w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1152w.remove(weakReference);
            } else {
                lVar.h(z10);
            }
        }
        h0();
    }

    private void j(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || this.f1152w.isEmpty()) {
            return;
        }
        for (WeakReference weakReference : this.f1152w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1152w.remove(weakReference);
            } else {
                int id2 = lVar.getId();
                if (id2 > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id2)) != null) {
                    lVar.e(parcelable);
                }
            }
        }
    }

    private void k(Bundle bundle) {
        Parcelable parcelableG;
        if (this.f1152w.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        for (WeakReference weakReference : this.f1152w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1152w.remove(weakReference);
            } else {
                int id2 = lVar.getId();
                if (id2 > 0 && (parcelableG = lVar.g()) != null) {
                    sparseArray.put(id2, parcelableG);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    private boolean l(q qVar, l lVar) {
        if (this.f1152w.isEmpty()) {
            return false;
        }
        boolean zF = lVar != null ? lVar.f(qVar) : false;
        for (WeakReference weakReference : this.f1152w) {
            l lVar2 = (l) weakReference.get();
            if (lVar2 == null) {
                this.f1152w.remove(weakReference);
            } else if (!zF) {
                zF = lVar2.f(qVar);
            }
        }
        return zF;
    }

    private static int p(ArrayList arrayList, int i10) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((h) arrayList.get(size)).f() <= i10) {
                return size + 1;
            }
        }
        return 0;
    }

    public View A() {
        return this.f1145p;
    }

    public ArrayList B() {
        t();
        return this.f1139j;
    }

    boolean C() {
        return this.f1149t;
    }

    Resources E() {
        return this.f1131b;
    }

    public ArrayList G() {
        if (!this.f1137h) {
            return this.f1136g;
        }
        this.f1136g.clear();
        int size = this.f1135f.size();
        for (int i10 = 0; i10 < size; i10++) {
            h hVar = (h) this.f1135f.get(i10);
            if (hVar.isVisible()) {
                this.f1136g.add(hVar);
            }
        }
        this.f1137h = false;
        this.f1140k = true;
        return this.f1136g;
    }

    public boolean H() {
        return !this.f1146q;
    }

    public boolean I() {
        return this.f1154y;
    }

    boolean J() {
        return this.f1132c;
    }

    public boolean K() {
        return this.f1133d;
    }

    void L(h hVar) {
        this.f1140k = true;
        N(true);
    }

    void M(h hVar) {
        this.f1137h = true;
        N(true);
    }

    public void N(boolean z10) {
        if (this.f1146q) {
            this.f1147r = true;
            if (z10) {
                this.f1148s = true;
                return;
            }
            return;
        }
        if (z10) {
            this.f1137h = true;
            this.f1140k = true;
        }
        i(z10);
    }

    public boolean O(MenuItem menuItem, int i10) {
        return P(menuItem, null, i10);
    }

    public boolean P(MenuItem menuItem, l lVar, int i10) {
        h hVar = (h) menuItem;
        if (hVar == null || !hVar.isEnabled()) {
            return false;
        }
        boolean zK = hVar.k();
        ActionProvider actionProviderA = hVar.a();
        boolean z10 = actionProviderA != null && actionProviderA.hasSubMenu();
        if (hVar.j()) {
            zK |= hVar.expandActionView();
            if (zK) {
                e(true);
            }
        } else if (hVar.hasSubMenu() || z10) {
            if ((i10 & 4) == 0) {
                e(false);
            }
            if (!hVar.hasSubMenu()) {
                hVar.x(new q(w(), this, hVar));
            }
            q qVar = (q) hVar.getSubMenu();
            if (z10) {
                actionProviderA.onPrepareSubMenu(qVar);
            }
            zK |= l(qVar, lVar);
            if (!zK) {
                e(true);
            }
        } else if ((i10 & 1) == 0) {
            e(true);
        }
        return zK;
    }

    public void R(l lVar) {
        for (WeakReference weakReference : this.f1152w) {
            l lVar2 = (l) weakReference.get();
            if (lVar2 == null || lVar2 == lVar) {
                this.f1152w.remove(weakReference);
            }
        }
    }

    public void S(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(v());
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((q) item.getSubMenu()).S(bundle);
            }
        }
        int i11 = bundle.getInt("android:menu:expandedactionview");
        if (i11 <= 0 || (menuItemFindItem = findItem(i11)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void T(Bundle bundle) {
        j(bundle);
    }

    public void U(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((q) item.getSubMenu()).U(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(v(), sparseArray);
        }
    }

    public void V(Bundle bundle) {
        k(bundle);
    }

    public void W(a aVar) {
        this.f1134e = aVar;
    }

    public f X(int i10) {
        this.f1141l = i10;
        return this;
    }

    void Y(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f1135f.size();
        i0();
        for (int i10 = 0; i10 < size; i10++) {
            h hVar = (h) this.f1135f.get(i10);
            if (hVar.getGroupId() == groupId && hVar.m() && hVar.isCheckable()) {
                hVar.s(hVar == menuItem);
            }
        }
        h0();
    }

    protected f Z(int i10) {
        b0(0, null, i10, null, null);
        return this;
    }

    protected MenuItem a(int i10, int i11, int i12, CharSequence charSequence) {
        int iD = D(i12);
        h hVarG = g(i10, i11, i12, iD, charSequence, this.f1141l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f1142m;
        if (contextMenuInfo != null) {
            hVarG.v(contextMenuInfo);
        }
        ArrayList arrayList = this.f1135f;
        arrayList.add(p(arrayList, iD), hVarG);
        N(true);
        return hVarG;
    }

    protected f a0(Drawable drawable) {
        b0(0, null, 0, drawable, null);
        return this;
    }

    @Override
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override
    public int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr) {
        int i14;
        PackageManager packageManager = this.f1130a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i13 & 1) == 0) {
            removeGroup(i10);
        }
        for (int i15 = 0; i15 < size; i15++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i15);
            int i16 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i16 < 0 ? intent : intentArr[i16]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i10, i11, i12, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i14 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i14] = intent3;
            }
        }
        return size;
    }

    @Override
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(l lVar) {
        c(lVar, this.f1130a);
    }

    public void c(l lVar, Context context) {
        this.f1152w.add(new WeakReference(lVar));
        lVar.k(context, this);
        this.f1140k = true;
    }

    protected f c0(int i10) {
        b0(i10, null, 0, null, null);
        return this;
    }

    @Override
    public void clear() {
        h hVar = this.f1153x;
        if (hVar != null) {
            f(hVar);
        }
        this.f1135f.clear();
        N(true);
    }

    public void clearHeader() {
        this.f1144o = null;
        this.f1143n = null;
        this.f1145p = null;
        N(false);
    }

    @Override
    public void close() {
        e(true);
    }

    public void d() {
        a aVar = this.f1134e;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    protected f d0(CharSequence charSequence) {
        b0(0, charSequence, 0, null, null);
        return this;
    }

    public final void e(boolean z10) {
        if (this.f1150u) {
            return;
        }
        this.f1150u = true;
        for (WeakReference weakReference : this.f1152w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1152w.remove(weakReference);
            } else {
                lVar.b(this, z10);
            }
        }
        this.f1150u = false;
    }

    protected f e0(View view) {
        b0(0, null, 0, null, view);
        return this;
    }

    public boolean f(h hVar) {
        boolean zJ = false;
        if (!this.f1152w.isEmpty() && this.f1153x == hVar) {
            i0();
            for (WeakReference weakReference : this.f1152w) {
                l lVar = (l) weakReference.get();
                if (lVar != null) {
                    zJ = lVar.j(this, hVar);
                    if (zJ) {
                        break;
                    }
                } else {
                    this.f1152w.remove(weakReference);
                }
            }
            h0();
            if (zJ) {
                this.f1153x = null;
            }
        }
        return zJ;
    }

    public void f0(boolean z10) {
        this.f1155z = z10;
    }

    @Override
    public MenuItem findItem(int i10) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            h hVar = (h) this.f1135f.get(i11);
            if (hVar.getItemId() == i10) {
                return hVar;
            }
            if (hVar.hasSubMenu() && (menuItemFindItem = hVar.getSubMenu().findItem(i10)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    @Override
    public MenuItem getItem(int i10) {
        return (MenuItem) this.f1135f.get(i10);
    }

    boolean h(f fVar, MenuItem menuItem) {
        a aVar = this.f1134e;
        return aVar != null && aVar.a(fVar, menuItem);
    }

    public void h0() {
        this.f1146q = false;
        if (this.f1147r) {
            this.f1147r = false;
            N(this.f1148s);
        }
    }

    @Override
    public boolean hasVisibleItems() {
        if (this.f1155z) {
            return true;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((h) this.f1135f.get(i10)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public void i0() {
        if (this.f1146q) {
            return;
        }
        this.f1146q = true;
        this.f1147r = false;
        this.f1148s = false;
    }

    @Override
    public boolean isShortcutKey(int i10, KeyEvent keyEvent) {
        return r(i10, keyEvent) != null;
    }

    public boolean m(h hVar) {
        boolean zC = false;
        if (this.f1152w.isEmpty()) {
            return false;
        }
        i0();
        for (WeakReference weakReference : this.f1152w) {
            l lVar = (l) weakReference.get();
            if (lVar != null) {
                zC = lVar.c(this, hVar);
                if (zC) {
                    break;
                }
            } else {
                this.f1152w.remove(weakReference);
            }
        }
        h0();
        if (zC) {
            this.f1153x = hVar;
        }
        return zC;
    }

    public int n(int i10) {
        return o(i10, 0);
    }

    public int o(int i10, int i11) {
        int size = size();
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < size) {
            if (((h) this.f1135f.get(i11)).getGroupId() == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    @Override
    public boolean performIdentifierAction(int i10, int i11) {
        return O(findItem(i10), i11);
    }

    @Override
    public boolean performShortcut(int i10, KeyEvent keyEvent, int i11) {
        h hVarR = r(i10, keyEvent);
        boolean zO = hVarR != null ? O(hVarR, i11) : false;
        if ((i11 & 2) != 0) {
            e(true);
        }
        return zO;
    }

    public int q(int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((h) this.f1135f.get(i11)).getItemId() == i10) {
                return i11;
            }
        }
        return -1;
    }

    h r(int i10, KeyEvent keyEvent) {
        ArrayList arrayList = this.f1151v;
        arrayList.clear();
        s(arrayList, i10, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (h) arrayList.get(0);
        }
        boolean zJ = J();
        for (int i11 = 0; i11 < size; i11++) {
            h hVar = (h) arrayList.get(i11);
            char alphabeticShortcut = zJ ? hVar.getAlphabeticShortcut() : hVar.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (zJ && alphabeticShortcut == '\b' && i10 == 67))) {
                return hVar;
            }
        }
        return null;
    }

    @Override
    public void removeGroup(int i10) {
        int iN = n(i10);
        if (iN >= 0) {
            int size = this.f1135f.size() - iN;
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (i11 >= size || ((h) this.f1135f.get(iN)).getGroupId() != i10) {
                    break;
                }
                Q(iN, false);
                i11 = i12;
            }
            N(true);
        }
    }

    @Override
    public void removeItem(int i10) {
        Q(q(i10), true);
    }

    void s(List list, int i10, KeyEvent keyEvent) {
        boolean zJ = J();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i10 == 67) {
            int size = this.f1135f.size();
            for (int i11 = 0; i11 < size; i11++) {
                h hVar = (h) this.f1135f.get(i11);
                if (hVar.hasSubMenu()) {
                    ((f) hVar.getSubMenu()).s(list, i10, keyEvent);
                }
                char alphabeticShortcut = zJ ? hVar.getAlphabeticShortcut() : hVar.getNumericShortcut();
                if ((modifiers & 69647) == ((zJ ? hVar.getAlphabeticModifiers() : hVar.getNumericModifiers()) & 69647) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (zJ && alphabeticShortcut == '\b' && i10 == 67)) && hVar.isEnabled()) {
                        list.add(hVar);
                    }
                }
            }
        }
    }

    @Override
    public void setGroupCheckable(int i10, boolean z10, boolean z11) {
        int size = this.f1135f.size();
        for (int i11 = 0; i11 < size; i11++) {
            h hVar = (h) this.f1135f.get(i11);
            if (hVar.getGroupId() == i10) {
                hVar.t(z11);
                hVar.setCheckable(z10);
            }
        }
    }

    @Override
    public void setGroupDividerEnabled(boolean z10) {
        this.f1154y = z10;
    }

    @Override
    public void setGroupEnabled(int i10, boolean z10) {
        int size = this.f1135f.size();
        for (int i11 = 0; i11 < size; i11++) {
            h hVar = (h) this.f1135f.get(i11);
            if (hVar.getGroupId() == i10) {
                hVar.setEnabled(z10);
            }
        }
    }

    @Override
    public void setGroupVisible(int i10, boolean z10) {
        int size = this.f1135f.size();
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            h hVar = (h) this.f1135f.get(i11);
            if (hVar.getGroupId() == i10 && hVar.y(z10)) {
                z11 = true;
            }
        }
        if (z11) {
            N(true);
        }
    }

    @Override
    public void setQwertyMode(boolean z10) {
        this.f1132c = z10;
        N(false);
    }

    @Override
    public int size() {
        return this.f1135f.size();
    }

    public void t() {
        ArrayList arrayListG = G();
        if (this.f1140k) {
            boolean zI = false;
            for (WeakReference weakReference : this.f1152w) {
                l lVar = (l) weakReference.get();
                if (lVar == null) {
                    this.f1152w.remove(weakReference);
                } else {
                    zI |= lVar.i();
                }
            }
            if (zI) {
                this.f1138i.clear();
                this.f1139j.clear();
                int size = arrayListG.size();
                for (int i10 = 0; i10 < size; i10++) {
                    h hVar = (h) arrayListG.get(i10);
                    if (hVar.l()) {
                        this.f1138i.add(hVar);
                    } else {
                        this.f1139j.add(hVar);
                    }
                }
            } else {
                this.f1138i.clear();
                this.f1139j.clear();
                this.f1139j.addAll(G());
            }
            this.f1140k = false;
        }
    }

    public ArrayList u() {
        t();
        return this.f1138i;
    }

    protected String v() {
        return "android:menu:actionviewstates";
    }

    public Context w() {
        return this.f1130a;
    }

    public h x() {
        return this.f1153x;
    }

    public Drawable y() {
        return this.f1144o;
    }

    public CharSequence z() {
        return this.f1143n;
    }

    @Override
    public MenuItem add(int i10) {
        return a(0, 0, 0, this.f1131b.getString(i10));
    }

    @Override
    public SubMenu addSubMenu(int i10) {
        return addSubMenu(0, 0, 0, this.f1131b.getString(i10));
    }

    @Override
    public MenuItem add(int i10, int i11, int i12, CharSequence charSequence) {
        return a(i10, i11, i12, charSequence);
    }

    @Override
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        h hVar = (h) a(i10, i11, i12, charSequence);
        q qVar = new q(this.f1130a, this, hVar);
        hVar.x(qVar);
        return qVar;
    }

    @Override
    public MenuItem add(int i10, int i11, int i12, int i13) {
        return a(i10, i11, i12, this.f1131b.getString(i13));
    }

    @Override
    public SubMenu addSubMenu(int i10, int i11, int i12, int i13) {
        return addSubMenu(i10, i11, i12, this.f1131b.getString(i13));
    }

    public f F() {
        return this;
    }
}
