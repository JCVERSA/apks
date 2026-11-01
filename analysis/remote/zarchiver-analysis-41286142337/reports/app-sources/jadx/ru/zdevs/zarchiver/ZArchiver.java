package ru.zdevs.zarchiver;

import a0.a0;
import a0.b0;
import a0.c0;
import a0.d0;
import a0.e0;
import a0.f0;
import a0.h0;
import a0.i0;
import a0.j;
import a0.j0;
import a0.k;
import a0.k0;
import a0.l;
import a0.o0;
import a0.p;
import a0.p0;
import a0.q;
import a0.q0;
import a0.r;
import a0.r0;
import a0.s;
import a0.t;
import a0.t0;
import a0.u;
import a0.u0;
import a0.v;
import a0.x;
import a0.x0;
import a0.z;
import android.app.ActionBar;
import android.app.AlertDialog;
import android.app.WallpaperManager;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.support.constraint.ConstraintLayout;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import g0.m;
import g0.n;
import g0.o;
import g0.w;
import g0.y;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import ru.zdevs.zarchiver.activity.AboutDlg;
import ru.zdevs.zarchiver.activity.SettingsDlg;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.io.KitKatExtSD;
import ru.zdevs.zarchiver.service.ZArchiverService;
import ru.zdevs.zarchiver.ui.FilePanelView;
import ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu;
import ru.zdevs.zarchiver.ui.text.ExSearchView;

public class ZArchiver extends b0.c implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, d0.h.a, q0.g.c, FilePanelView.g, FilePanelView.f, FilePanelView.h, C2JBridge.a, View.OnDragListener {

    public static WeakReference<ZArchiver> f1442r;

    public ru.zdevs.zarchiver.service.c f1443f;

    public Handler f1444g;

    public int f1446i;

    public View f1447j;

    public FilePanelView f1448k;

    public ExSearchView f1449l;

    public FloatingActionMenu f1450m;

    public final ru.zdevs.zarchiver.d f1445h = new ru.zdevs.zarchiver.d();

    public boolean f1451n = false;

    public boolean f1452o = false;

    public long f1453p = 0;

    public final a f1454q = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ZArchiver zArchiver = ZArchiver.this;
            zArchiver.f1444g = null;
            zArchiver.f1443f = ru.zdevs.zarchiver.service.c.a.asInterface(iBinder);
            try {
                zArchiver.f1443f.GUIStatus(true);
            } catch (Exception unused) {
            }
            try {
                zArchiver.f1445h.f1683c.o(zArchiver, zArchiver.f1443f);
                zArchiver.f1445h.f1683c.i();
            } catch (Exception unused2) {
            }
            try {
                zArchiver.f1443f.SetSettings(t0.b.b(), t0.b.f2086g, t0.b.f2084e);
            } catch (Exception unused3) {
            }
        }

        @Override
        public final void onServiceDisconnected(ComponentName componentName) {
            ZArchiver zArchiver = ZArchiver.this;
            zArchiver.f1443f = null;
            zArchiver.f1445h.f1683c.o(zArchiver, null);
        }
    }

    public class b implements Runnable {

        public final y f1456a;

        public final int f1457b;

        public b(y yVar, int i2) {
            this.f1456a = yVar;
            this.f1457b = i2;
        }

        @Override
        public final void run() {
            int i2;
            y yVar = this.f1456a;
            ProgressBar progressBar = yVar.f1075h;
            if (progressBar == null || (i2 = this.f1457b) <= 0) {
                return;
            }
            progressBar.setIndeterminate(false);
            yVar.f1075h.setProgress(i2);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public final void run() {
            q0.a.a(ZArchiver.this);
        }
    }

    public class d implements g0.i.c {
        @Override
        public final void b(g0.i iVar) {
            if (C2JBridge.f1613c) {
                C2JBridge.cSetStatus(0, 15);
            }
        }
    }

    public class e implements g0.i.c {
        @Override
        public final void b(g0.i iVar) {
            if (C2JBridge.f1613c) {
                C2JBridge.cSetStatus(0, 15);
            }
        }
    }

    public class f implements f1.b.e {

        public final ru.zdevs.zarchiver.b f1459a;

        public f(ru.zdevs.zarchiver.b bVar) {
            this.f1459a = bVar;
        }

        @Override
        public final void a(int i2, int i3, boolean z2) {
            ru.zdevs.zarchiver.b bVar = this.f1459a;
            bVar.f1657g = i2;
            bVar.f1659i = z2;
            bVar.f1658h = i3;
            ZArchiver.this.T(bVar.f1652b, false, false, true);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public final void run() {
            ZArchiver zArchiver = ZArchiver.this;
            if (zArchiver.f1446i != 0) {
                zArchiver.J();
            }
        }
    }

    public final class h implements ActionMode.Callback {
        public h() {
        }

        @Override
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            ZArchiver zArchiver = ZArchiver.this;
            if (itemId == R.id.bCreateArchive) {
                zArchiver.f1445h.f1683c.m(zArchiver, true);
                actionMode.finish();
                return true;
            }
            if (menuItem.getItemId() != R.id.bMenuViewMode) {
                return zArchiver.D(menuItem.getItemId());
            }
            zArchiver.onOptionsItemSelected(menuItem);
            return true;
        }

        @Override
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            ZArchiver zArchiver = ZArchiver.this;
            char c2 = zArchiver.f1445h.f1681a;
            MenuInflater menuInflater = zArchiver.getMenuInflater();
            menuInflater.inflate(R.menu.toolbar_action_select, menu);
            menuInflater.inflate(c2 == '\"' ? R.menu.menu_tool : R.menu.toolbar_default, menu);
            menuInflater.inflate(R.menu.menu_main, menu);
            boolean z2 = !v0.b.j(zArchiver);
            if (z2) {
                z0.e.p(menu, new int[]{R.id.bOk}, false);
            }
            if (c2 == '\"') {
                int[] iArr = new int[5];
                iArr[0] = R.id.bOk;
                iArr[1] = R.id.bMenuAdd;
                iArr[2] = R.id.bMenuNew;
                iArr[3] = R.id.bArchiveCommentAdd;
                iArr[4] = zArchiver.f1450m == null ? 0 : R.id.bCreateArchive;
                z0.e.p(menu, iArr, false);
            } else {
                z0.e.p(menu, new int[]{R.id.bMultiSelect, R.id.bCreateArchive}, false);
                menu.findItem(R.id.bMenuSelect).setShowAsActionFlags(2);
            }
            z0.e.p(menu, new int[]{R.id.bMenuViewMode}, true);
            if (z2 && v0.b.g(zArchiver)) {
                zArchiver.l(-1, menu);
            }
            zArchiver.S(actionMode);
            zArchiver.f1448k.setPageChangeEnable(false);
            if (c2 == 2 && !zArchiver.f1445h.f1682b) {
                ZApp.i(R.string.MES_SELECT_HELP);
            }
            return true;
        }

        @Override
        public final void onDestroyActionMode(ActionMode actionMode) {
            ZArchiver zArchiver = ZArchiver.this;
            zArchiver.f1445h.f1683c.m(zArchiver, false);
            zArchiver.f269b = null;
            zArchiver.f1448k.setPageChangeEnable(true);
            zArchiver.J();
            zArchiver.invalidateOptionsMenu();
        }

        @Override
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            z0.e.m(menu);
            return true;
        }
    }

    public final class i implements ActionMode.Callback {
        public i() {
        }

        @Override
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            ZArchiver zArchiver = ZArchiver.this;
            if (itemId == R.id.bSelectPath || menuItem.getItemId() == R.id.bPast) {
                if (zArchiver.f1445h.f1683c.m(zArchiver, true)) {
                    actionMode.finish();
                }
                return true;
            }
            if (menuItem.getItemId() != R.id.bMenuViewMode) {
                return zArchiver.D(menuItem.getItemId());
            }
            zArchiver.onOptionsItemSelected(menuItem);
            return true;
        }

        @Override
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            ZArchiver zArchiver = ZArchiver.this;
            ActionBar actionBar = zArchiver.getActionBar();
            if (actionBar != null) {
                actionBar.setCustomView((View) null);
            }
            actionMode.setCustomView(zArchiver.f1447j);
            if (zArchiver.f1449l != null && !v0.b.i(zArchiver)) {
                zArchiver.f1449l.setVisibility(8);
            }
            MenuInflater menuInflater = zArchiver.getMenuInflater();
            menuInflater.inflate(R.menu.toolbar_action, menu);
            menuInflater.inflate(R.menu.menu_tool, menu);
            menuInflater.inflate(R.menu.menu_main, menu);
            char c2 = zArchiver.f1445h.f1681a;
            int i2 = R.id.bSelectPath;
            int i3 = R.id.bPast;
            if (c2 == '\t' || c2 == 17) {
                int[] iArr = new int[5];
                iArr[0] = R.id.bNewArchive;
                iArr[1] = R.id.bMenuAdd;
                iArr[2] = R.id.bPast;
                iArr[3] = R.id.bArchiveCommentAdd;
                if (zArchiver.f1450m == null) {
                    i2 = 0;
                }
                iArr[4] = i2;
                z0.e.p(menu, iArr, false);
            } else if (c2 == 'A') {
                int[] iArr2 = new int[5];
                iArr2[0] = R.id.bNewArchive;
                iArr2[1] = R.id.bMenuAdd;
                iArr2[2] = R.id.bSelectPath;
                iArr2[3] = R.id.bArchiveCommentAdd;
                if (zArchiver.f1450m == null) {
                    i3 = 0;
                }
                iArr2[4] = i3;
                z0.e.p(menu, iArr2, false);
            } else {
                MenuItem menuItemFindItem = menu.findItem(R.id.bNewArchive);
                if (menuItemFindItem != null) {
                    menuItemFindItem.setEnabled(false);
                }
            }
            z0.e.p(menu, new int[]{R.id.bMenuViewMode}, true);
            ru.zdevs.zarchiver.b bVarC = zArchiver.f1445h.c();
            if (!t0.b.l(128)) {
                boolean zG = bVarC.g(7);
                int i4 = bVarC.f1652b;
                if (zG && (n0.e.l(bVarC.f1653c.f1108c) || bVarC.g(32))) {
                    zArchiver.L(i4, 128, new h0.h(t0.b.f2081b[i4]));
                } else if (!bVarC.g(67) && bVarC.g(4)) {
                    zArchiver.L(i4, 128, new h0.h(a0.c.A(zArchiver.f1445h.d().f1108c)));
                }
            }
            d0.h listAdapter = zArchiver.f1448k.getListAdapter();
            if (listAdapter != null) {
                listAdapter.h();
                listAdapter.m(false);
            }
            if (bVarC.i()) {
                zArchiver.L(bVarC.f1652b, 0, bVarC.f1653c);
            }
            ZApp.i(R.string.MES_SELECT_DESTINATION);
            return true;
        }

        @Override
        public final void onDestroyActionMode(ActionMode actionMode) {
            ZApp.g();
            ZArchiver zArchiver = ZArchiver.this;
            ActionBar actionBar = zArchiver.getActionBar();
            actionMode.setCustomView(null);
            if (actionBar != null) {
                actionBar.setCustomView(zArchiver.f1447j);
            }
            if (zArchiver.f1449l != null && !v0.b.i(zArchiver)) {
                zArchiver.f1449l.setVisibility(0);
            }
            for (int i2 = 0; i2 < 2; i2++) {
                d0.h hVarB = zArchiver.f1448k.b(i2);
                if (hVarB != null) {
                    hVarB.m(true);
                }
            }
            zArchiver.f1445h.f1683c.m(zArchiver, false);
            zArchiver.f269b = null;
            zArchiver.J();
            zArchiver.invalidateOptionsMenu();
        }

        @Override
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            if (t0.b.i(null)) {
                ZArchiver zArchiver = ZArchiver.this;
                ru.zdevs.zarchiver.d dVar = zArchiver.f1445h;
                if (x0.g.c(dVar.f1686f[dVar.f1685e].f1653c.r()) == 2) {
                    byte bE = zArchiver.f1445h.e();
                    menu.findItem(R.id.bRemountRO).setVisible(bE == 3);
                    menu.findItem(R.id.bRemountRW).setVisible(bE == 4);
                }
            }
            z0.e.m(menu);
            return true;
        }
    }

    public static void u(ZArchiver zArchiver, AdapterView adapterView, int i2) {
        zArchiver.getClass();
        if (adapterView == null) {
            return;
        }
        zArchiver.L(zArchiver.f1445h.f1685e, 128, new h0.h(((c0.e) adapterView.getItemAtPosition(i2)).f411c));
    }

    public static boolean v(ZArchiver zArchiver, AdapterView adapterView, int i2) {
        zArchiver.getClass();
        if (adapterView == null || !t0.a.i(i2)) {
            return false;
        }
        h0.g gVar = new h0.g(zArchiver);
        if (t0.a.h(i2)) {
            gVar.a(71);
        }
        gVar.a(72);
        if (t0.a.g(i2)) {
            gVar.a(73);
        }
        gVar.f1103d = ((c0.d) adapterView.getAdapter()).f403d.get(i2).f410b;
        String string = Integer.toString(i2);
        gVar.f1104e = 0;
        gVar.f1105f = string;
        gVar.d(zArchiver.f1445h, 0, new Point(1, adapterView.getHeight() / 2));
        return true;
    }

    public static ZArchiver z() {
        WeakReference<ZArchiver> weakReference = f1442r;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public final void A(boolean z2) {
        String str;
        String strY;
        h0.h hVar;
        if (z2 && this.f1451n) {
            i();
            return;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.b bVarC = dVar.c();
        boolean zI = bVarC.i();
        int i2 = bVarC.f1652b;
        if (zI) {
            Q(i2, false, true);
            return;
        }
        boolean zF = dVar.f(32);
        String[] strArr = t0.b.f2081b;
        if (zF && !t0.b.l(8192) && bVarC.h()) {
            h0.h hVar2 = new h0.h(strArr[i2]);
            bVarC.l(hVar2, (byte) 0, 0);
            L(i2, 0, hVar2);
            return;
        }
        if (z2 && bVarC.h()) {
            if (dVar.f1681a == 0 || t0.b.l(8192)) {
                this.f1451n = true;
                ZApp.i(R.string.MES_PRESS_BACK_FOR_EXIT);
                return;
            } else {
                j();
                dVar.g((char) 0);
                return;
            }
        }
        ru.zdevs.zarchiver.b.a aVarD = bVarC.d();
        boolean z3 = false;
        while (aVarD != null) {
            h0.h hVar3 = aVarD.f1671a;
            if (!hVar3.g() || hVar3.i() || n0.e.i(hVar3.f1108c)) {
                break;
            }
            aVarD = bVarC.d();
            z3 = true;
        }
        if (z3) {
            while (aVarD != null && aVarD.f1671a.b(dVar.d()) == 0 && aVarD.f1674d == bVarC.i()) {
                aVarD = bVarC.d();
            }
        }
        if (aVarD != null) {
            aVarD.toString();
        }
        boolean z4 = bVarC.g(4) && dVar.f1681a == 0;
        if (aVarD != null) {
            if (aVarD.f1672b == 0 && dVar.f1681a != 0) {
                if (this.f269b != null) {
                    j();
                }
                dVar.g((char) 0);
            }
            if (bVarC.i()) {
                Q(i2, false, false);
            }
            bVarC.l(aVarD.f1671a, (byte) 0, 0);
            int i3 = aVarD.f1673c;
            boolean z5 = aVarD.f1674d;
            if (!z5 || (str = bVarC.f1665o) == null) {
                M(bVarC.f1652b, aVarD.f1671a, null, z5 ? -1 : i3, 0);
            } else {
                int i4 = bVarC.f1656f | 2;
                bVarC.f1656f = i4;
                if (bVarC.f1668r != null) {
                    bVarC.f1656f = 1 | i4;
                    this.f1448k.k(bVarC, dVar.f1687g, i3, 0);
                    V(bVarC, true);
                } else {
                    P(i2, str, bVarC.f1666p, false);
                }
            }
        } else if (z2 && strArr[i2].equals(bVarC.f1653c.f1108c)) {
            this.f1451n = true;
            ZApp.i(R.string.MES_PRESS_BACK_FOR_EXIT);
        } else {
            if ((t0.b.l(8192) || t0.b.l(16384)) && (!bVarC.g(32) || bVarC.g(4))) {
                h0.h hVar4 = bVarC.f1653c;
                String strE = hVar4.e();
                strY = ("/".equals(strE) && hVar4.g()) ? a0.c.y(hVar4.f1108c) : strE;
            } else {
                strY = null;
            }
            h0.h hVar5 = bVarC.f1653c;
            boolean zC = hVar5.c();
            if (zC || !bVarC.g(32)) {
                hVar = hVar5;
            } else {
                hVar = new h0.h(strArr[i2]);
                zC = true;
            }
            if (zC) {
                boolean zG = bVarC.g(4);
                bVarC.l(hVar, (byte) 0, 0);
                M(bVarC.f1652b, hVar, strY, -1, 0);
                if (zG != bVarC.g(4)) {
                    boolean z6 = !zG;
                    if (this.f269b == null) {
                        invalidateOptionsMenu();
                    }
                    if (!z6) {
                        w0.c.h(new l());
                        if (this.f269b == null) {
                            e0.h.d().a();
                        }
                    }
                }
            }
        }
        if (z4 && !bVarC.g(4) && dVar.f1681a == 0) {
            try {
                e0.h hVarD = e0.h.d();
                f0.a aVarM = f0.a.m();
                if (hVarD.e(aVarM.l())) {
                    aVarM.a();
                }
                hVarD.a();
            } catch (Exception unused) {
            }
        }
    }

    public final void B(boolean z2) {
        if (z2 && this.f1452o) {
            finishAndRemoveTask();
        }
        this.f1452o = false;
    }

    public final void C(int i2) {
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.b bVarC = dVar.c();
        ru.zdevs.zarchiver.b[] bVarArr = dVar.f1686f;
        if (i2 < bVarArr.length && bVarArr[i2] != null) {
            dVar.f1685e = i2;
        }
        ru.zdevs.zarchiver.b bVarC2 = dVar.c();
        byte bF = bVarC.f();
        byte bF2 = bVarC2.f();
        boolean z2 = true;
        int i3 = bVarC2.f1652b;
        if (bF == bF2 && bVarC.c() == bVarC2.c()) {
            d0.h hVarB = this.f1448k.b(bVarC.f1652b);
            boolean z3 = hVarB != null && hVarB.f560h.f521a > 0;
            d0.h hVarB2 = this.f1448k.b(i3);
            if (z3 == (hVarB2 != null && hVarB2.f560h.f521a > 0)) {
                z2 = false;
            }
        }
        V(bVarC2, z2);
        ListView listView = (ListView) findViewById(R.id.lvFavorite);
        if (listView != null) {
            ((c0.d) listView.getAdapter()).a(i3);
        }
        this.f1451n = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r1v68 */
    /* JADX WARN: Type inference failed for: r1v75 */
    /* JADX WARN: Type inference failed for: r1v76 */
    public final boolean D(int i2) {
        ExSearchView exSearchView;
        a0.a aVar;
        a0.a aVar2;
        ArrayList arrayList;
        w0.a aVar3 = this.f270c;
        if (i2 == R.id.bExit) {
            new d0().g(this, aVar3);
            return true;
        }
        if (i2 == R.id.bOk) {
            j();
            return true;
        }
        if (i2 == R.id.bSettings) {
            h1.h.e(this, new Intent(this, (Class<?>) SettingsDlg.class));
            return true;
        }
        if (i2 == R.id.bAbout) {
            h1.h.e(this, new Intent(this, (Class<?>) AboutDlg.class));
            return true;
        }
        d0.h listAdapter = this.f1448k.getListAdapter();
        char c2 = 0;
        int i3 = 0;
        if (listAdapter == null) {
            return false;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        String strT = null;
        if (i2 == R.id.bCopy || i2 == R.id.bCut) {
            y(true);
            ru.zdevs.zarchiver.a aVar4 = dVar.f1683c;
            boolean z2 = i2 == R.id.bCut;
            a0.a aVar5 = aVar4.f1551d;
            if (aVar5 != null) {
                aVar4.f1552e = aVar5;
                aVar5.f2c = z2;
                aVar4.f1551d = null;
            }
            if (t0.b.l(64)) {
                F('A');
            } else {
                invalidateOptionsMenu();
                ZApp.i(R.string.MES_COPIED);
            }
        } else if (i2 == R.id.bPast) {
            if (dVar.f1683c.f1552e != null) {
                boolean zF = dVar.f(4);
                ru.zdevs.zarchiver.a aVar6 = dVar.f1683c;
                if (zF) {
                    if (!a0.c.N(1, dVar.d().f1108c)) {
                        ZApp.i(R.string.MES_DONT_SUPPORT_EDIT);
                        return false;
                    }
                } else if (aVar6.l(this, 1)) {
                    return false;
                }
                if (dVar.f(4)) {
                    a0.a aVar7 = aVar6.f1552e;
                    if (aVar7 != null) {
                        aVar6.f1551d = aVar7;
                        aVar6.f1552e = null;
                    }
                    a0.a aVar8 = aVar6.f1551d;
                    if (aVar8 != null) {
                        h0.h hVarD = aVar6.f1549b.d();
                        ru.zdevs.zarchiver.service.c cVar = aVar6.f1554g.f1675a.get();
                        if (cVar != null && hVarD.g() && !ru.zdevs.zarchiver.c.c(hVarD) && aVar8.g().o()) {
                            h0.h hVarQ = a0.c.q(hVarD);
                            String strE = hVarQ.e();
                            String strA0 = a0.c.a0(hVarD.f1110e);
                            StringBuilder sb = new StringBuilder();
                            if (!v0.h.e(strA0)) {
                                sb.append("\\-spp");
                                sb.append(strA0);
                                sb.append('/');
                            }
                            a0.c.e(sb, strE, hVarQ, true);
                            boolean zF2 = ru.zdevs.zarchiver.c.f(hVarD, true);
                            ?? r1 = zF2;
                            if (aVar8.f2c) {
                                r1 = (zF2 ? 1 : 0) | 4;
                            }
                            ?? r15 = r1;
                            try {
                                h0.h hVar = aVar8.f1b;
                                if (hVar != null) {
                                    ArrayList arrayList2 = new ArrayList(1);
                                    arrayList2.add(hVar);
                                    arrayList = arrayList2;
                                } else {
                                    ArrayList<d0.d> arrayList3 = aVar8.f0a;
                                    int size = arrayList3.size();
                                    ArrayList arrayList4 = new ArrayList(size);
                                    for (int i4 = 0; i4 < size; i4++) {
                                        h0.h hVar2 = ((d0.f) arrayList3.get(i4)).f552k;
                                        if (!arrayList4.contains(hVar2)) {
                                            arrayList4.add(hVar2);
                                        }
                                    }
                                    arrayList = arrayList4;
                                }
                                if (arrayList.size() == 1) {
                                    cVar.ArchiveAddFiles(strE, hVarQ, sb.toString(), e0.b.e(aVar8.j()), (h0.h) arrayList.get(0), r15 == true ? 1 : 0);
                                } else {
                                    int size2 = arrayList.size();
                                    ArrayList arrayList5 = new ArrayList(size2);
                                    for (int i5 = 0; i5 < size2; i5++) {
                                        arrayList5.add(e0.b.e(aVar8.k((h0.h) arrayList.get(i5))));
                                    }
                                    cVar.ArchiveAddFilesMulti(strE, hVarQ, sb.toString(), arrayList5, arrayList, r15 == true ? 1 : 0);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                } else {
                    if (!dVar.f(83)) {
                        return false;
                    }
                    if (aVar6.f1552e.g().g()) {
                        a0.a aVar9 = aVar6.f1552e;
                        if (aVar9 != null) {
                            aVar6.f1551d = aVar9;
                            aVar6.f1552e = null;
                        }
                        aVar6.e(dVar.d(), dVar.f(2));
                    } else {
                        a0.a aVar10 = aVar6.f1552e;
                        boolean z3 = aVar10.f2c;
                        if (aVar10 != null) {
                            aVar6.f1551d = aVar10;
                            aVar6.f1552e = null;
                        }
                        h0.h hVarD2 = dVar.d();
                        boolean zF3 = dVar.f(2);
                        a0.a aVar11 = aVar6.f1551d;
                        if (aVar11 != null) {
                            ru.zdevs.zarchiver.service.c cVar2 = aVar6.f1554g.f1675a.get();
                            if (cVar2 == null) {
                                c2 = 1;
                            } else {
                                h0.h hVarG = aVar11.g();
                                if (hVarG.o() || hVarG.k() || hVarG.i()) {
                                    boolean zJ = t0.b.j();
                                    if (zJ && !zF3 && ru.zdevs.zarchiver.c.f(hVarD2, true)) {
                                        zF3 = true;
                                    }
                                    int iH = aVar11.h();
                                    try {
                                        if (iH == 1) {
                                            if (zJ && !zF3 && ru.zdevs.zarchiver.c.f(hVarG, false)) {
                                                zF3 = true;
                                            }
                                            cVar2.Copy(hVarG, hVarD2, aVar11.j(), z3, zF3 ? 1 : 0);
                                        } else {
                                            if (z3) {
                                                ArrayList<d0.d> arrayList6 = aVar11.f0a;
                                                if (!arrayList6.isEmpty() && (arrayList6.get(0) instanceof d0.f)) {
                                                    Collections.sort(arrayList6, new h1.e(0));
                                                }
                                            }
                                            ArrayList arrayList7 = new ArrayList();
                                            for (int i6 = 0; i6 < iH; i6++) {
                                                h0.h hVarA = aVar11.a(i6);
                                                arrayList7.add(hVarA);
                                                if (zJ && !zF3 && ru.zdevs.zarchiver.c.f(hVarA, false)) {
                                                    zF3 = true;
                                                }
                                            }
                                            cVar2.CopyList(arrayList7, hVarD2, z3, zF3 ? 1 : 0);
                                        }
                                    } catch (Exception unused2) {
                                        c2 = 2;
                                    }
                                } else {
                                    c2 = 3;
                                }
                            }
                            if (c2 == 0 && z3) {
                                if (aVar6.f1551d.d(f0.a.m().l())) {
                                    f0.a.m().a();
                                }
                                if (aVar6.f1551d.d(e0.h.d().f689a)) {
                                    e0.h.d().a();
                                }
                            }
                        }
                    }
                }
                if (!t0.b.l(64)) {
                    invalidateOptionsMenu();
                }
            }
        } else if (i2 == R.id.bDelete) {
            y(false);
            boolean zF4 = dVar.f(4);
            ru.zdevs.zarchiver.a aVar12 = dVar.f1683c;
            if (zF4) {
                aVar12.n(this, null, 56);
            } else {
                aVar12.n(this, null, 23);
            }
        } else if (i2 == R.id.bCompress) {
            y(true);
            dVar.f1683c.n(this, null, 8);
        } else if (i2 == R.id.bExtract) {
            if (listAdapter.f560h.f521a <= 0) {
                listAdapter.g();
            }
            y(true);
            dVar.f1683c.n(this, null, 5);
        } else {
            String str = "";
            if (i2 == R.id.bTest) {
                if (listAdapter.f560h.f521a <= 0) {
                    h0.h hVar3 = new h0.h(dVar.d().f1108c);
                    ru.zdevs.zarchiver.service.c cVar3 = dVar.f1683c.f1554g.f1675a.get();
                    if (cVar3 != null) {
                        String strE2 = hVar3.e();
                        if (a0.c.O(strE2, false) && t0.b.a() > 0) {
                            str = "\\-mmt=" + t0.b.a();
                        }
                        if (e0.h.d().e(strE2)) {
                            str = str + "\\-p" + e0.h.d().c(true);
                        }
                        try {
                            cVar3.ArchiveTest(strE2, hVar3, str);
                        } catch (Exception unused3) {
                        }
                    }
                } else {
                    y(true);
                    dVar.f1683c.n(this, null, 11);
                }
            } else if (i2 == R.id.bNewFolder) {
                boolean zF5 = dVar.f(4);
                ru.zdevs.zarchiver.a aVar13 = dVar.f1683c;
                if (!zF5) {
                    if (dVar.e() == 2) {
                        if (!x(dVar.f1685e, dVar.d().f1108c)) {
                            return false;
                        }
                        g0.b bVar = new g0.b(dVar, this, dVar.d().f1108c);
                        bVar.r(1);
                        bVar.f961b = aVar13;
                        AlertDialog alertDialog = bVar.f917g;
                        if (alertDialog != null && g0.i.s(alertDialog)) {
                            bVar.f922l.a(bVar, null);
                        }
                        return true;
                    }
                    if (aVar13.l(this, 7)) {
                        return false;
                    }
                } else if (!a0.c.N(1, dVar.d().f1108c)) {
                    ZApp.i(R.string.MES_DONT_SUPPORT_EDIT);
                    return false;
                }
                m mVar = new m(dVar, this, R.string.NF_TTL_NEW_FOLDER, R.string.NF_ENTER_FOLDER_NAME);
                mVar.r(1);
                mVar.f961b = aVar13;
                AlertDialog alertDialog2 = mVar.f976g;
                if (alertDialog2 != null) {
                    g0.i.s(alertDialog2);
                }
                String strZ = (dVar.f1681a == '\t' && (aVar2 = aVar13.f1551d) != null && aVar2.h() == 1) ? a0.c.Z(aVar13.f1551d.b(0)) : (dVar.f1681a != 17 || (aVar = aVar13.f1551d) == null) ? "New Folder" : a0.c.Z(a0.c.y(aVar.g().f1108c));
                if (!dVar.f(68)) {
                    h0.f fVarU = h0.f.u(dVar.d());
                    if (fVarU.f(strZ)) {
                        String str2 = strZ;
                        for (int i7 = 1; i7 < 1000; i7++) {
                            str2 = strZ + " " + i7;
                            if (!fVarU.f(str2)) {
                                break;
                            }
                        }
                        strZ = str2;
                    }
                }
                mVar.u(strZ);
            } else if (i2 == R.id.bNewArchive) {
                if (dVar.f(19)) {
                    if ((dVar.f(1) && dVar.e() != 1) || dVar.f(2)) {
                        if (!t0.b.i(null)) {
                            ZApp.i(R.string.MES_PATH_READ_ONLY);
                            return false;
                        }
                        i3 = (x0.g.e(dVar.d().f1108c) ? 0 : 16) | 4;
                    }
                    g0.h hVar4 = new g0.h(i3, this, "archiveNew", dVar);
                    hVar4.r(11);
                    hVar4.f961b = dVar.f1683c;
                    AlertDialog alertDialog3 = hVar4.f943g;
                    if (alertDialog3 != null) {
                        g0.i.s(alertDialog3);
                    }
                }
            } else if (i2 == R.id.bNewFile) {
                boolean zF6 = dVar.f(4);
                ru.zdevs.zarchiver.a aVar14 = dVar.f1683c;
                if (zF6) {
                    if (!a0.c.N(1, dVar.d().f1108c)) {
                        ZApp.i(R.string.MES_DONT_SUPPORT_EDIT);
                        return false;
                    }
                } else if (aVar14.l(this, 9)) {
                    return false;
                }
                m mVar2 = new m(dVar, this, R.string.NF_TTL_NEW_FILE, R.string.NF_ENTER_FILE_NAME);
                mVar2.r(24);
                mVar2.f961b = aVar14;
                AlertDialog alertDialog4 = mVar2.f976g;
                if (alertDialog4 != null) {
                    g0.i.s(alertDialog4);
                }
                String str3 = "text.txt";
                if (!dVar.f(68)) {
                    h0.f fVarU2 = h0.f.u(dVar.d());
                    if (fVarU2.f("text.txt")) {
                        for (int i8 = 1; i8 < 1000; i8++) {
                            str3 = "text " + i8 + ".txt";
                            if (!fVarU2.f(str3)) {
                                break;
                            }
                        }
                    }
                }
                mVar2.u(str3);
            } else if (i2 == R.id.bAddFile) {
                dVar.f1683c.n(this, null, 81);
            } else if (i2 == R.id.bAddFolder) {
                dVar.f1683c.n(this, null, 82);
            } else if (i2 == R.id.bSelectAll) {
                char c3 = dVar.f1681a;
                if (c3 != 0 && ((char) (c3 & 3)) != 2) {
                    return false;
                }
                listAdapter.g();
                S(this.f269b);
            } else if (i2 == R.id.bSelectClear) {
                char c4 = dVar.f1681a;
                if (c4 != 0 && ((char) (c4 & 3)) != 2) {
                    return false;
                }
                listAdapter.h();
                S(this.f269b);
            } else if (i2 == R.id.bSelectInvert) {
                char c5 = dVar.f1681a;
                if (c5 != 0 && ((char) (c5 & 3)) != 2) {
                    return false;
                }
                listAdapter.i();
                S(this.f269b);
            } else if (i2 == R.id.bMultiSelect) {
                if (dVar.f1681a != 0 || this.f269b != null) {
                    return false;
                }
                F((char) 2);
            } else if (i2 == R.id.bArchiveCommentAdd || i2 == R.id.bArchiveComment) {
                String strL = f0.a.m().l();
                if (strL == null) {
                    return false;
                }
                boolean zN = a0.c.N(2, strL);
                f0.a aVarM = f0.a.m();
                ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
                try {
                    reentrantReadWriteLock.readLock().lock();
                    f0.d dVar2 = aVarM.f758b;
                    if (dVar2 != null) {
                        strT = dVar2.t();
                    }
                    String str4 = strT;
                    reentrantReadWriteLock.readLock().unlock();
                    if (str4 == null && !zN) {
                        return false;
                    }
                    m mVar3 = new m(this.f1445h, this, a0.c.y(strL), R.string.CMT_ARCHIVE_COOMENT, zN ? 2 : 1);
                    mVar3.r(16);
                    AlertDialog alertDialog5 = mVar3.f976g;
                    if (alertDialog5 != null) {
                        g0.i.s(alertDialog5);
                    }
                    mVar3.u(str4 != null ? str4 : "");
                    if (zN) {
                        mVar3.f961b = dVar.f1683c;
                    }
                } catch (Throwable th) {
                    reentrantReadWriteLock.readLock().unlock();
                    throw th;
                }
            } else if (i2 == R.id.bSearch) {
                if (dVar.f1681a == 0 && !dVar.c().i() && (exSearchView = this.f1449l) != null && exSearchView.isIconified()) {
                    this.f1449l.setVisibility(0);
                    this.f1449l.setIconified(false);
                }
            } else if (i2 == R.id.bRemountRW || i2 == R.id.bRemountRO) {
                if (!dVar.f(3)) {
                    return false;
                }
                aVar3.f(100, 0, -1);
                new r0(dVar.d().f1108c, i2 == R.id.bRemountRW).g(this, aVar3);
            } else {
                if (i2 != R.id.bInfo) {
                    return false;
                }
                new o(dVar, (Context) this, dVar.d(), (String) null, true).w();
            }
        }
        return true;
    }

    public final boolean E() {
        boolean z2 = false;
        if (this.f269b != null) {
            return false;
        }
        FilePanelView filePanelView = this.f1448k;
        d0.h hVarB = filePanelView.b(filePanelView.f1750a);
        if (hVarB != null && hVarB.f560h.f521a > 0) {
            z2 = true;
        }
        if (z2) {
            return true;
        }
        return this.f1448k.g(1);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f  */
    public final void F(char c2) {
        int i2 = c2 & 1;
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (i2 == 1) {
            dVar.c().m(c2, this.f1448k.getListPosition());
        }
        j();
        dVar.g(c2);
        char c3 = dVar.f1681a;
        if (c3 == 2) {
            startActionMode(new h());
            m(false);
        } else if (c3 == '\t' || c3 == 17) {
            startActionMode(new i());
            m(true);
        } else if (c3 == '\"') {
            startActionMode(new h());
            m(true);
        } else if (c3 != 'A') {
            this.f269b = null;
        } else {
            startActionMode(new i());
            m(true);
        }
        J();
    }

    public final void G(int i2) {
        setContentView(i2);
        FilePanelView filePanelView = (FilePanelView) findViewById(R.id.fp);
        this.f1448k = filePanelView;
        filePanelView.setOnListRefreshListener(this);
        this.f1448k.setOnPageChangedListener(this);
        ImageView imageView = new ImageView(this);
        imageView.setImageDrawable(z0.c.h(this, R.drawable.ic_refresh));
        this.f1448k.setCircleView(imageView);
        boolean z2 = i2 == R.layout.dlg_main_list_tv;
        ActionBar actionBar = getActionBar();
        if (actionBar == null || z2) {
            this.f1447j = null;
            this.f1449l = null;
        } else {
            actionBar.setDisplayShowCustomEnabled(true);
            actionBar.setCustomView(R.layout.ctm_navigate);
            View customView = actionBar.getCustomView();
            this.f1447j = customView;
            ExSearchView exSearchView = (ExSearchView) customView.findViewById(R.id.svSearch);
            this.f1449l = exSearchView;
            if (exSearchView != null) {
                exSearchView.getContext().setTheme(t0.b.c());
            }
        }
        if (z2) {
            this.f1447j = findViewById(R.id.rlTitle);
            q(actionBar);
        }
        if (findViewById(R.id.tvStorage) == null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(this).inflate(R.layout.extend_info, (ViewGroup) this.f1448k, false);
            constraintLayout.setBackgroundColor(z0.c.c(this, android.R.attr.colorBackground));
            if (Build.VERSION.SDK_INT >= 21) {
                constraintLayout.setElevation(25.0f);
            }
            this.f1448k.setExtendView(constraintLayout);
            this.f1448k.setOnExtendShowListener(this);
            ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
            if (progressBar != null) {
                z0.e.n(this, progressBar, -3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:52:0x0106  */
    /* JADX WARN: Code duplicated, block: B:54:0x010b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x010d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0116  */
    /* JADX WARN: Code duplicated, block: B:58:0x011b  */
    /* JADX WARN: Code duplicated, block: B:62:0x014b  */
    /* JADX WARN: Code duplicated, block: B:65:0x015b  */
    /* JADX WARN: Code duplicated, block: B:68:0x017c  */
    /* JADX WARN: Code duplicated, block: B:71:0x018b  */
    /* JADX WARN: Code duplicated, block: B:77:? A[RETURN, SYNTHETIC] */
    public final void H() {
        int iC;
        ImageView imageView;
        ListView listView;
        FloatingActionMenu floatingActionMenu;
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowTitleEnabled(false);
        }
        ExSearchView exSearchView = this.f1449l;
        Drawable drawable = null;
        if (exSearchView != null) {
            exSearchView.setVisibility(v0.b.i(this) ? 8 : 0);
            View viewFindViewById = this.f1449l.findViewById(this.f1449l.getContext().getResources().getIdentifier("android:id/search_button", null, null));
            if (viewFindViewById instanceof ImageView) {
                ((ImageView) viewFindViewById).setImageDrawable(z0.c.f(this, R.attr.menuIconSearch));
            }
            this.f1449l.setOnCloseListener(new a0.m(this));
            this.f1449l.setOnSearchClickListener(new a0.d(this));
            this.f1449l.setOnQueryListener(new a0.e(this));
        }
        View view = this.f1447j;
        View viewFindViewById2 = view == null ? null : view.findViewById(R.id.rlNavigation);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new a0.f(this, viewFindViewById2));
        }
        int i2 = t0.b.f2083d & 983040;
        if (i2 != 65536) {
            if (i2 == 131072) {
                iC = z0.c.c(this, R.attr.backgroundColorFileList);
            } else if (i2 == 262144) {
                try {
                    String string = PreferenceManager.getDefaultSharedPreferences(this).getString("iGUICustomBGPath", null);
                    if (string != null) {
                        drawable = Drawable.createFromPath(string);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    ZApp.j("Error loading background image");
                }
            } else if (((t0.b.f2087h & 255) > 1 && Build.VERSION.SDK_INT < 21) || t0.b.k(1024)) {
                iC = z0.c.c(this, R.attr.backgroundColorFileList);
            }
            imageView = (ImageView) findViewById(R.id.ivParent);
            if (drawable instanceof BitmapDrawable) {
                imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                if (i2 == 65536) {
                    imageView.setAlpha(0.7f);
                }
                this.f1448k.setCacheEnabled(false);
            } else {
                imageView.setImageDrawable(drawable);
                if (drawable != null) {
                    imageView.setVisibility(8);
                    if (iC != 0) {
                        findViewById(R.id.rlRoot).setBackgroundColor(iC);
                    }
                } else if (i2 == 65536) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    imageView.setAlpha(0.7f);
                }
                this.f1448k.setCacheEnabled(true);
            }
            this.f1448k.setFastScrollEnabled(t0.b.l(32768));
            this.f1448k.setOnItemLongClickListener(this);
            this.f1448k.setOnItemClickListener(this);
            this.f1448k.setOnItemSelectChanged(this);
            if (Build.VERSION.SDK_INT >= 24) {
                this.f1448k.setOnDragListener(this);
            }
            listView = (ListView) findViewById(R.id.lvFavorite);
            if (listView != null) {
                listView.setAdapter((ListAdapter) new c0.d(this, false, false));
                z0.e.l(listView);
                listView.setOnItemClickListener(new a0.g(this));
                listView.setOnItemLongClickListener(new a0.h(this));
            }
            if (t0.b.l(8)) {
                this.f1450m = (FloatingActionMenu) findViewById(R.id.ibAction);
            }
            floatingActionMenu = this.f1450m;
            if (floatingActionMenu != null) {
                floatingActionMenu.setVisibility(0);
                this.f1450m.setTransparent(t0.b.l(16));
                this.f1450m.setAnimated(t0.b.l(32));
                this.f1450m.setClosedOnTouchOutside(true);
                this.f1450m.setOnMenuButtonClickListener(new a0.i(this));
                this.f1450m.setOnMenuButtonClick(new j(this));
                this.f1450m.setOnMenuToggleListener(new k(this));
            }
        }
        try {
            drawable = WallpaperManager.getInstance(this).getDrawable();
        } catch (Exception e3) {
            e3.printStackTrace();
            ZApp.j("Error on get the wallpaper");
        }
        iC = 0;
        imageView = (ImageView) findViewById(R.id.ivParent);
        if (drawable instanceof BitmapDrawable) {
            imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (i2 == 65536) {
                imageView.setAlpha(0.7f);
            }
            this.f1448k.setCacheEnabled(false);
        } else {
            imageView.setImageDrawable(drawable);
            if (drawable != null) {
                imageView.setVisibility(8);
                if (iC != 0) {
                    findViewById(R.id.rlRoot).setBackgroundColor(iC);
                }
            } else if (i2 == 65536) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView.setAlpha(0.7f);
            }
            this.f1448k.setCacheEnabled(true);
        }
        this.f1448k.setFastScrollEnabled(t0.b.l(32768));
        this.f1448k.setOnItemLongClickListener(this);
        this.f1448k.setOnItemClickListener(this);
        this.f1448k.setOnItemSelectChanged(this);
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1448k.setOnDragListener(this);
        }
        listView = (ListView) findViewById(R.id.lvFavorite);
        if (listView != null) {
            listView.setAdapter((ListAdapter) new c0.d(this, false, false));
            z0.e.l(listView);
            listView.setOnItemClickListener(new a0.g(this));
            listView.setOnItemLongClickListener(new a0.h(this));
        }
        if (t0.b.l(8)) {
            this.f1450m = (FloatingActionMenu) findViewById(R.id.ibAction);
        }
        floatingActionMenu = this.f1450m;
        if (floatingActionMenu != null) {
            floatingActionMenu.setVisibility(0);
            this.f1450m.setTransparent(t0.b.l(16));
            this.f1450m.setAnimated(t0.b.l(32));
            this.f1450m.setClosedOnTouchOutside(true);
            this.f1450m.setOnMenuButtonClickListener(new a0.i(this));
            this.f1450m.setOnMenuButtonClick(new j(this));
            this.f1450m.setOnMenuToggleListener(new k(this));
        }
    }

    public final boolean I(int i2, int i3, int i4) {
        if (this.f1450m.c()) {
            FloatingActionMenu floatingActionMenu = this.f1450m;
            floatingActionMenu.f(floatingActionMenu.f1795j);
        }
        if (this.f1450m.getTag() != null && ((Integer) this.f1450m.getTag()).intValue() == i2) {
            FloatingActionMenu floatingActionMenu2 = this.f1450m;
            if (floatingActionMenu2.f1790e == i4 + 2) {
                floatingActionMenu2.setMenuState(false);
                return false;
            }
        }
        FloatingActionMenu floatingActionMenu3 = this.f1450m;
        if (floatingActionMenu3.f1790e > 1) {
            floatingActionMenu3.e(false, false);
            ArrayList<b1.a> arrayList = new ArrayList();
            int childCount = floatingActionMenu3.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = floatingActionMenu3.getChildAt(i5);
                if (childAt != floatingActionMenu3.f1788c && childAt != floatingActionMenu3.f1796k && (childAt instanceof b1.a)) {
                    arrayList.add((b1.a) childAt);
                }
            }
            for (b1.a aVar : arrayList) {
                aVar.setOnClickListener(null);
                floatingActionMenu3.removeView(aVar);
                floatingActionMenu3.f1790e--;
            }
        }
        this.f1450m.setTag(Integer.valueOf(i2));
        this.f1450m.setMenuButtonImageResource(i3);
        if (this.f1450m.c()) {
            FloatingActionMenu floatingActionMenu4 = this.f1450m;
            floatingActionMenu4.f(floatingActionMenu4.f1795j);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00ef  */
    public final void J() {
        boolean z2;
        if (this.f1450m == null) {
            return;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        char c2 = dVar.f1681a;
        if (c2 != 0) {
            if (c2 == 2) {
                I(R.id.bOk, R.drawable.l_done, 0);
                return;
            }
            if (c2 == '\t' || c2 == 17) {
                I(R.id.bSelectPath, R.drawable.l_to, 0);
                return;
            }
            if (c2 == '\"') {
                I(R.id.bCreateArchive, R.drawable.l_done, 0);
                return;
            } else {
                if (c2 != 'A') {
                    return;
                }
                a0.a aVar = dVar.f1683c.f1552e;
                I(R.id.bPast, aVar != null && aVar.f2c ? R.drawable.l_paste_cut : R.drawable.l_paste, 0);
                return;
            }
        }
        d0.h listAdapter = this.f1448k.getListAdapter();
        if (listAdapter == null) {
            return;
        }
        ru.zdevs.zarchiver.b bVarC = dVar.c();
        if (!bVarC.g(19)) {
            if (bVarC.g(4)) {
                if (bVarC.i() || listAdapter.f560h.f521a > 0 || !a0.c.N(1, bVarC.f1653c.f1108c)) {
                    I(R.id.bExtract, R.drawable.l_upload, 0);
                    return;
                } else {
                    if (I(R.id.bAddFile, R.drawable.l_add, 2)) {
                        K(R.id.bAddFile, R.drawable.l_file);
                        K(R.id.bNewFolder, R.drawable.l_folder);
                        return;
                    }
                    return;
                }
            }
            if (bVarC.g(64)) {
                if (bVarC.i() || listAdapter.f560h.f521a > 0) {
                    I(R.id.bCopy, R.drawable.l_copy, 0);
                    return;
                } else {
                    if (I(R.id.bNewFolder, R.drawable.l_add, 2)) {
                        K(R.id.bNewFolder, R.drawable.l_folder);
                        K(R.id.bNewFile, R.drawable.l_file);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (bVarC.i()) {
            if (listAdapter.f560h.f521a > 0) {
                I(R.id.bCompress, R.drawable.l_download, 0);
                return;
            }
            FloatingActionMenu floatingActionMenu = this.f1450m;
            boolean z3 = floatingActionMenu.f1795j;
            if (floatingActionMenu.c() || floatingActionMenu.f1797l) {
                return;
            }
            floatingActionMenu.f1797l = true;
            if (!floatingActionMenu.d()) {
                floatingActionMenu.b(z3);
                return;
            } else {
                floatingActionMenu.e(false, z3);
                floatingActionMenu.postDelayed(new b1.b(floatingActionMenu, z3), ((long) floatingActionMenu.f1790e) * 50);
                return;
            }
        }
        if (listAdapter.f560h.f521a > 0) {
            if (bVarC.f() != 1) {
                I(R.id.bCopy, R.drawable.l_copy, 0);
                return;
            } else {
                I(R.id.bCompress, R.drawable.l_download, 0);
                return;
            }
        }
        boolean zI = t0.b.i(null);
        if (zI && x0.g.c(bVarC.f1653c.r()) == 2 && !dVar.f(128)) {
            if (bVarC.f() == 4) {
                I(R.id.bRemountRW, R.drawable.l_to_rw, 0);
            } else if (bVarC.f() != 3 || bVarC.f1653c.f1108c.startsWith("/data")) {
                z2 = false;
            } else {
                I(R.id.bRemountRO, R.drawable.l_to_ro, 0);
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return;
        }
        if (bVarC.f() != 1 && !zI) {
            if (bVarC.f() == 2) {
                I(R.id.bNewFolder, R.drawable.l_add, 0);
                return;
            } else {
                I(R.id.bInfo, R.drawable.l_info, 0);
                return;
            }
        }
        if (I(R.id.bNewFolder, R.drawable.l_add, 3)) {
            K(R.id.bNewFolder, R.drawable.l_folder);
            K(R.id.bNewArchive, R.drawable.l_archive);
            K(R.id.bNewFile, R.drawable.l_file);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void K(int i2, int i3) {
        b1.a aVar = new b1.a(this, false);
        aVar.setTag(Integer.valueOf(i2));
        Resources.Theme themeNewTheme = aVar.getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        aVar.f293f = z0.c.i(aVar.getResources(), themeNewTheme, i3);
        aVar.f288a = 1;
        aVar.g();
        FloatingActionMenu floatingActionMenu = this.f1450m;
        floatingActionMenu.addView(aVar, floatingActionMenu.f1790e - 2);
        aVar.setOnClickListener(floatingActionMenu);
        floatingActionMenu.f1790e++;
    }

    public final void L(int i2, int i3, h0.h hVar) {
        M(i2, hVar, null, -1, i3);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0094  */
    /* JADX WARN: Code duplicated, block: B:37:0x009c  */
    public final void M(int i2, h0.h hVar, String str, int i3, int i4) {
        int i5;
        d0.b bVar;
        a0.b.e(hVar);
        w0.a aVar = this.f270c;
        aVar.f(10, 1, i2);
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.b bVar2 = dVar.f1686f[i2];
        boolean zEquals = bVar2.f1653c.equals(hVar);
        if (!zEquals) {
            bVar2.m((char) (dVar.f1681a & 3), this.f1448k.getListPosition());
        }
        if (i2 == dVar.f1685e) {
            if (!hVar.j()) {
                y yVar = (y) dVar.b(-2, 1, -1);
                if (yVar == null) {
                    yVar = new y(dVar, this, R.string.MES_GET_FILE_LIST_PROCESS, 1);
                }
                yVar.f962c = -2;
                yVar.f960a = new d();
                yVar.t();
            }
            O(hVar);
            if (!(this.f1448k.f1753d != null)) {
                U(false);
            }
        }
        if (a0.c.K(i4, 16)) {
            FilePanelView filePanelView = this.f1448k;
            d0.h hVarB = filePanelView.b(filePanelView.f1750a);
            if (hVarB != null && hVarB.f560h.f521a > 0) {
                bVar = bVar2.f1667q;
                i5 = i4;
            } else {
                i5 = i4 & (-17);
            }
            if (bVar2.f1659i) {
                i5 |= 32;
            }
            if (this.f1448k.f1760k) {
                i5 |= 64;
            }
            new j0(bVar2, hVar, zEquals, str, i3, i5, this.f1448k.getListSize(), bVar).g(null, aVar);
            if (hVar.g() && this.f269b == null && !zEquals) {
                this.f1452o = false;
                return;
            }
            return;
        }
        i5 = i4;
        bVar = null;
        if (bVar2.f1659i) {
            i5 |= 32;
        }
        if (this.f1448k.f1760k) {
            i5 |= 64;
        }
        new j0(bVar2, hVar, zEquals, str, i3, i5, this.f1448k.getListSize(), bVar).g(null, aVar);
        if (hVar.g()) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01c5, code lost:
    
        if ((r14.getCategories() == null ? false : r14.getCategories().contains("ZA_SHORTCUT")) != false) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean N(Intent intent, boolean z2, boolean z3) {
        boolean z4 = (intent == null || intent.getIntExtra("ZArchiver.iCMD", 0) == 0) ? false : true;
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (!z4) {
            boolean z5 = intent != null && ("android.intent.action.SEND".equals(intent.getAction()) || "android.intent.action.SEND_MULTIPLE".equals(intent.getAction()));
            w0.a aVar = this.f270c;
            if (!z5) {
                if (intent.getData() == null) {
                }
                new p0(dVar.f1685e, intent, intent.getData(), z2, z3).g(null, aVar);
                return true;
            }
            if ("android.intent.action.SEND".equals(intent.getAction())) {
                Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
                if (parcelableExtra instanceof Uri) {
                    Uri uri = (Uri) parcelableExtra;
                    if (!"content".equals(uri.getScheme())) {
                        String path = uri.getPath();
                        if (path != null && a0.c.G(a0.c.E(path))) {
                            a0.y yVar = new a0.y(dVar.f1685e, z2);
                            yVar.f142b = new h0.h("arch", path, "/");
                            b(yVar);
                            return true;
                        }
                    } else if (a0.c.G(a0.c.E(v0.f.c(this, uri)))) {
                        new p0(dVar.f1685e, intent, uri, z2, z3).g(null, aVar);
                        return true;
                    }
                }
            }
            dVar.f1683c.o(this, this.f1443f);
            dVar.f1683c.getClass();
            new ru.zdevs.zarchiver.a.c(this, intent, z2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            return false;
        }
        dVar.f1683c.o(this, this.f1443f);
        ru.zdevs.zarchiver.a aVar2 = dVar.f1683c;
        if (aVar2.f1550c != null) {
            int intExtra = intent.getIntExtra("ZArchiver.iCMD", 0);
            int intExtra2 = intent.getIntExtra("iTaskID", 0);
            ru.zdevs.zarchiver.a.C0028a c0028a = aVar2.f1555h;
            switch (intExtra) {
                case 21:
                    Intent intent2 = new Intent("ZArchiver.iMES");
                    intent2.putExtra("iAction", 1);
                    intent2.putExtra("iTaskID", intExtra2);
                    intent2.putExtra("iTaskType", intent.getIntExtra("iTaskType", 0));
                    c0028a.onReceive(aVar2.f1550c, intent2);
                    ru.zdevs.zarchiver.c cVar = aVar2.f1554g;
                    if (cVar.f1675a.get() != null) {
                        try {
                            intent2.putExtra("iAction", 22);
                            ru.zdevs.zarchiver.service.c cVar2 = cVar.f1675a.get();
                            if (cVar2 == null) {
                                throw new RemoteException();
                            }
                            intent2.putExtra("iProgress", cVar2.GetProgPercent(intExtra2));
                            ru.zdevs.zarchiver.service.c cVar3 = cVar.f1675a.get();
                            if (cVar3 == null) {
                                throw new RemoteException();
                            }
                            intent2.putExtra("sText", cVar3.GetProgText(intExtra2));
                            c0028a.onReceive(aVar2.f1550c, intent2);
                        } catch (Exception unused) {
                        }
                    }
                    break;
                case 22:
                    Intent intent3 = new Intent("ZArchiver.iMES");
                    intent3.putExtra("iTaskID", intExtra2);
                    intent3.putExtra("iAction", 5);
                    c0028a.onReceive(aVar2.f1550c, intent3);
                    break;
                case 23:
                    Intent intent4 = new Intent("ZArchiver.iMES");
                    intent4.putExtra("iTaskID", intExtra2);
                    intent4.putExtra("iAction", 8);
                    intent4.putExtra("oData", intent.getParcelableExtra("iData"));
                    c0028a.onReceive(aVar2.f1550c, intent4);
                    break;
                case 24:
                    Intent intent5 = new Intent("ZArchiver.iMES");
                    intent5.putExtra("iTaskID", intExtra2);
                    intent5.putExtra("iAction", 21);
                    intent5.putExtra("oErrorData", intent.getParcelableArrayExtra("iErrorData"));
                    c0028a.onReceive(aVar2.f1550c, intent5);
                    break;
                case 25:
                    Intent intent6 = new Intent("ZArchiver.iMES");
                    intent6.putExtra("iTaskID", intExtra2);
                    intent6.putExtra("iAction", 24);
                    intent6.putExtra("oData", intent.getParcelableArrayExtra("iData"));
                    c0028a.onReceive(aVar2.f1550c, intent6);
                    break;
            }
        }
        return false;
    }

    public final void O(h0.h hVar) {
        String strT;
        if (hVar.j() || hVar.m()) {
            strT = hVar.t();
        } else if (hVar.g()) {
            strT = hVar.f1110e.length() > 1 ? hVar.f1108c + hVar.f1110e : hVar.f1108c;
            if (strT.contains("Android/")) {
                String strH = n0.e.h();
                if (strT.startsWith(strH)) {
                    strT = strT.replace(strH, "~");
                }
            }
        } else if (hVar.k()) {
            String str = hVar.f1108c;
            String str2 = hVar.f1110e;
            for (c0.e eVar : t0.a.d(false)) {
                if (eVar.f411c.k() && str2.equals(eVar.f411c.f1110e)) {
                    strT = "/".equals(str) ? "/" + eVar.f410b : "/" + eVar.f410b + str;
                }
            }
            strT = str;
        } else {
            strT = "";
        }
        b0.c.r(this.f1447j, strT);
    }

    public final void P(int i2, String str, String[] strArr, boolean z2) {
        w0.a aVar = this.f270c;
        aVar.f(2, 0, -1);
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.b bVar = dVar.f1686f[i2];
        synchronized (bVar.f1651a) {
            bVar.f1665o = str;
            bVar.f1666p = strArr;
            bVar.f1664n = 0;
            bVar.f1668r = new d0.i(0);
            bVar.f1656f |= 1;
        }
        this.f1448k.k(bVar, dVar.f1687g, 0, 0);
        if (i2 == dVar.f1685e) {
            if (this.f269b == null) {
                invalidateOptionsMenu();
            }
            J();
            if (!z2) {
                s(-1);
            }
        }
        if (z2) {
            return;
        }
        aVar.f(13, 0, bVar.f1652b);
        new t0(bVar, str, strArr).g(this, aVar);
    }

    public final void Q(int i2, boolean z2, boolean z3) {
        this.f270c.f(13, 0, i2);
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.b bVar = dVar.f1686f[i2];
        synchronized (bVar.f1651a) {
            if (z2) {
                bVar.f1656f &= -2;
            } else {
                bVar.f1665o = null;
                bVar.f1666p = null;
                bVar.f1664n = 0;
                bVar.f1668r = null;
                bVar.f1656f &= -2;
            }
            throw th;
        }
        ExSearchView exSearchView = this.f1449l;
        if (exSearchView != null) {
            exSearchView.b();
        }
        if (a0.c.L(bVar.f1656f, 2)) {
            L(bVar.f1652b, 0, bVar.f1653c);
        } else if (z3) {
            this.f1448k.k(bVar, dVar.f1687g, 0, 0);
            if (this.f269b == null) {
                invalidateOptionsMenu();
            }
            J();
            s(0);
            t();
        }
    }

    public final void R(int i2) {
        w0.c[] cVarArr;
        w0.a aVar = this.f270c;
        boolean z2 = true;
        int[] iArr = {11};
        synchronized (aVar.f2208d) {
            cVarArr = (w0.c[]) aVar.f2208d.toArray(new w0.c[0]);
        }
        int length = cVarArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                z2 = false;
                break;
            }
            w0.c cVar = cVarArr[i3];
            if (cVar != null && cVar.j() == iArr[0]) {
                break;
            } else {
                i3++;
            }
        }
        if (z2) {
            return;
        }
        new x0(i2, this.f1445h.f1686f).g(null, this.f270c);
    }

    public final void S(ActionMode actionMode) {
        d0.h listAdapter;
        if (actionMode == null || (listAdapter = this.f1448k.getListAdapter()) == null) {
            return;
        }
        actionMode.setTitle(listAdapter.f560h.f521a + " / " + listAdapter.f560h.c());
        actionMode.setSubtitle(v0.h.b(listAdapter.f560h.f522b, 1, null));
    }

    public final void T(int i2, boolean z2, boolean z3, boolean z4) {
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (i2 < 0) {
            i2 = dVar.f1685e;
        }
        int i3 = i2;
        int iC = z3 ? this.f1448k.c(i3) : -1;
        ru.zdevs.zarchiver.b bVar = dVar.f1686f[i3];
        if (!bVar.i()) {
            M(i3, bVar.f1653c, null, iC, (z2 ? 0 : 16) | 1);
            return;
        }
        if (bVar.f1668r == null) {
            return;
        }
        w0.a aVar = this.f270c;
        aVar.f(10, 1, i3);
        if (z2) {
            y yVar = new y(dVar, this, R.string.MES_GET_FILE_LIST_PROCESS, 1);
            yVar.f962c = -2;
            yVar.f960a = new e();
            yVar.t();
        }
        new u0(bVar, z2, z4).g(null, aVar);
    }

    public final void U(boolean z2) {
        String strB;
        int i2;
        String str;
        boolean z3;
        String str2;
        ru.zdevs.zarchiver.b bVarC = this.f1445h.c();
        long j2 = bVarC.f1660j;
        if (j2 == -2 || !z2) {
            strB = getString(R.string.FINFO_SIZE) + " ...";
        } else if (j2 == -1) {
            strB = getString(R.string.FINFO_SIZE) + " ---";
        } else {
            strB = v0.h.b(j2, 1, getString(R.string.FINFO_SIZE));
        }
        String str3 = strB;
        boolean zG = bVarC.g(4);
        w0.a aVar = this.f270c;
        int i3 = bVarC.f1652b;
        if (zG) {
            StringBuilder sb = new StringBuilder();
            float f2 = -1.0f;
            if (z2) {
                try {
                    f0.a aVarM = f0.a.m();
                    ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
                    try {
                        reentrantReadWriteLock.readLock().lock();
                        f0.d dVar = aVarM.f758b;
                        float fB = dVar == null ? 1.0f : dVar.b();
                        reentrantReadWriteLock.readLock().unlock();
                        f2 = fB * 100.0f;
                    } catch (Throwable th) {
                        reentrantReadWriteLock.readLock().unlock();
                        throw th;
                    }
                } catch (Exception unused) {
                }
                sb.append(getString(R.string.FINFO_COMPRESSION_RATIO));
                if (f2 > 100.0f) {
                    f2 = 100.0f;
                }
                if (f2 < 0.0f) {
                    sb.append(" ---");
                    f2 = 0.0f;
                } else {
                    sb.append(" ");
                    StringBuilder sb2 = new StringBuilder();
                    v0.h.a(sb2, (int) (100.0f * f2), true);
                    sb2.append("%");
                    sb.append(sb2.toString());
                }
            }
            if (bVarC.f1653c.f1110e.equals("/")) {
                str2 = getString(R.string.FINFO_TYPE_FOLDER) + ": /";
            } else {
                str2 = getString(R.string.FINFO_TYPE_FOLDER) + ": " + bVarC.f1653c.e();
            }
            i2 = 0;
            o(getString(R.string.FINFO_ARCHIVE) + " " + a0.c.y(bVarC.f1653c.f1108c), sb.toString(), str2, str3, (int) f2, 100L);
            z3 = true;
        } else {
            i2 = 0;
            if (z2 && bVarC.f1662l == -1) {
                aVar.f(4, 0, i3);
                new f0(bVarC.f1653c, i3).g(this, aVar);
            }
            if (!z2 || bVarC.f1662l == -1) {
                str = getString(R.string.FINFO_FREE_SPACE) + " ...";
            } else {
                str = getString(R.string.FINFO_FREE_SPACE) + " " + v0.h.b(bVarC.f1661k, 1, null) + "/\n" + v0.h.b(bVarC.f1662l, 1, null);
            }
            String str4 = getString(R.string.FINFO_TYPE) + ' ' + getString(R.string.FINFO_TYPE_FOLDER);
            z3 = true;
            o(str4, str, getString(R.string.FINFO_TYPE_FOLDER) + ": " + bVarC.f1653c.e(), str3, 0L, 0L);
        }
        if (z2) {
            FilePanelView filePanelView = this.f1448k;
            if (filePanelView.f1753d == null) {
                z3 = false;
            }
            if (z3) {
                filePanelView.setTag(bVarC.f1660j != -2 ? bVarC.f1651a : null);
            } else if (bVarC.f1660j == -2) {
                aVar.f(3, i2, i3);
                new i0(bVarC.f1653c, i3).g(this, aVar);
            }
        }
    }

    public final void V(ru.zdevs.zarchiver.b bVar, boolean z2) {
        d0.h listAdapter;
        O(bVar.f1653c);
        U(true);
        t();
        if (z2) {
            J();
            invalidateOptionsMenu();
            n(bVar.f1653c.o() ? bVar.f() : (byte) 1);
        }
        this.f1448k.setMessage(bVar.e());
        if (((char) (this.f1445h.f1681a & 3)) == 1 && (listAdapter = this.f1448k.getListAdapter()) != null) {
            listAdapter.h();
            listAdapter.m(false);
        }
        if (bVar.i()) {
            this.f1449l.e(bVar.f1665o, bVar.f1666p);
        } else {
            this.f1449l.b();
        }
    }

    @Override
    public final void a(int i2, String str) {
    }

    @Override
    public final void b(w0.a.b bVar) {
        TextView textView;
        int i2;
        int i3;
        int iA = bVar.a();
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        try {
            switch (iA) {
                case 0:
                    i();
                    return;
                case 1:
                    for (File file : ((s) bVar).f101a) {
                        w wVar = new w(1, this, getString(R.string.MOD_UPDATE_FILE).replace("%1", file.getName()), dVar);
                        wVar.r(15);
                        ru.zdevs.zarchiver.a aVar = dVar.f1683c;
                        wVar.f961b = aVar;
                        wVar.f960a = aVar;
                        wVar.o(0, file.getAbsolutePath());
                        wVar.t();
                    }
                    return;
                case 2:
                    t tVar = (t) bVar;
                    int i4 = tVar.f111d;
                    String str = tVar.f108a;
                    if (i4 == 0) {
                        ZApp.j(getString(R.string.MES_REMOUNT_SUCESSFUL).replace("%1", str).replace("%2", tVar.f110c ? "RW" : "RO"));
                        ru.zdevs.zarchiver.b[] bVarArr = dVar.f1686f;
                        ru.zdevs.zarchiver.b bVar2 = bVarArr[0];
                        if (bVar2 != null) {
                            bVar2.f1654d = (byte) 0;
                        }
                        ru.zdevs.zarchiver.b bVar3 = bVarArr[1];
                        if (bVar3 != null) {
                            bVar3.f1654d = (byte) 0;
                        }
                        if (((char) (dVar.f1681a & 3)) == 0) {
                            J();
                            return;
                        }
                        return;
                    }
                    if (i4 == -2) {
                        ZApp.j(tVar.f109b + " device has the SHARED_BLOCKS function, remounting to RW is not possible");
                        return;
                    }
                    String str2 = tVar.f112e;
                    if (str2 == null) {
                        ZApp.j(getString(R.string.MES_ERROR_ON_REMOUNT).replace("%1", str));
                        return;
                    } else {
                        ZApp.j(str2);
                        return;
                    }
                case 3:
                    T(((b0) bVar).f5a, false, true, false);
                    return;
                case 4:
                    z zVar = (z) bVar;
                    String str3 = zVar.f147a;
                    if (str3 != null) {
                        ZApp.j(str3);
                        return;
                    } else {
                        ZApp.i(zVar.f148b);
                        return;
                    }
                case 5:
                    M(dVar.f1685e, ((char) (dVar.f1681a & 3)) == 1 ? ((r) bVar).f98a : dVar.d(), null, this.f1448k.getListPosition(), 16);
                    return;
                case 6:
                    a0.o oVar = (a0.o) bVar;
                    int i5 = oVar.f76a;
                    h0.e.a aVar2 = oVar.f77b;
                    ru.zdevs.zarchiver.b bVar4 = dVar.f1686f[i5];
                    bVar4.f1661k = aVar2.f1085a;
                    bVar4.f1662l = aVar2.f1086b;
                    String str4 = getString(R.string.FINFO_FREE_SPACE) + " " + v0.h.b(aVar2.f1085a, 1, null) + "/\n" + v0.h.b(aVar2.f1086b, 1, null);
                    long j2 = aVar2.f1086b;
                    p(str4, j2 - aVar2.f1085a, j2);
                    return;
                case 7:
                    q qVar = (q) bVar;
                    int i6 = qVar.f94a;
                    long j3 = qVar.f95b;
                    dVar.f1686f[i6].f1660j = j3;
                    if (dVar.f1685e == i6 && (textView = (TextView) findViewById(R.id.tvFolderSize)) != null) {
                        textView.setText(j3 != -1 ? v0.h.b(j3, 1, getString(R.string.FINFO_SIZE)) : getString(R.string.FINFO_SIZE) + " ---");
                        return;
                    }
                    return;
                case 8:
                    p pVar = (p) bVar;
                    y yVar = (y) dVar.b(-2, 1, -1);
                    if (yVar != null) {
                        yVar.e();
                    }
                    View view = this.f1448k.f1754e;
                    if (view != null) {
                        view.setVisibility(8);
                    }
                    if (pVar.f86h == null) {
                        return;
                    }
                    h0.h hVar = pVar.f80b;
                    boolean zG = hVar.g();
                    int i7 = pVar.f79a;
                    if (zG && (i2 = pVar.f84f) == R.string.MES_CANCEL_PROCES) {
                        ZApp.i(i2);
                        if (i7 == dVar.f1685e) {
                            O(dVar.d());
                            return;
                        }
                        return;
                    }
                    ru.zdevs.zarchiver.b bVar5 = dVar.f1686f[i7];
                    boolean zG2 = bVar5.g(4);
                    boolean z2 = bVar5.f1667q.f521a > 0;
                    boolean zI = bVar5.i();
                    int i8 = bVar5.f1652b;
                    if (zI && i8 == dVar.f1685e) {
                        Q(i7, t0.b.l(8192), false);
                    }
                    if (a0.c.L(pVar.f81c, 768)) {
                        new e0(hVar, pVar.f86h, pVar.f81c, i8).g(this, this.f270c);
                    }
                    d0.b bVar6 = pVar.f86h;
                    d0.a aVar3 = pVar.f87i;
                    synchronized (bVar5.f1651a) {
                        bVar5.f1667q = bVar6;
                        bVar5.f1669s = aVar3;
                        bVar5.f1656f &= -3;
                        break;
                    }
                    bVar5.l(hVar, pVar.f88j, pVar.f84f);
                    this.f1448k.k(bVar5, dVar.f1687g, pVar.f82d, pVar.f81c);
                    if (i8 == dVar.f1685e) {
                        if (hVar.o()) {
                            n(bVar5.f());
                        } else {
                            n((byte) 1);
                        }
                        U(true);
                        J();
                        if (zG2 != dVar.f(4)) {
                            boolean z3 = !zG2;
                            if (this.f269b == null) {
                                invalidateOptionsMenu();
                            }
                            if (!z3) {
                                w0.c.h(new l());
                                if (this.f269b == null) {
                                    e0.h.d().a();
                                }
                            }
                        }
                        if (z2 && pVar.f86h.f521a == 0) {
                            d(i8, 0, false);
                        }
                        if (a0.c.K(pVar.f81c, 8)) {
                            AbsListView absListView = this.f1448k.f1757h[i7];
                            int i9 = pVar.f82d;
                            onItemClick(absListView, null, i9, i9);
                        }
                    }
                    x0.d.a aVar4 = pVar.f85g;
                    if (aVar4 != null) {
                        g0.s.t(dVar, this, 0, i8, aVar4, 0, null);
                        return;
                    } else {
                        if (pVar.f83e || pVar.f84f != R.string.MES_ACCESS_DENIED || Build.VERSION.SDK_INT < 30 || t0.b.f(67108864)) {
                            return;
                        }
                        x(i8, hVar.f1108c);
                        return;
                    }
                case 9:
                    y yVar2 = (y) dVar.b(-2, 1, -1);
                    if (yVar2 != null) {
                        yVar2.e();
                    }
                    View view2 = this.f1448k.f1754e;
                    if (view2 != null) {
                        view2.setVisibility(8);
                    }
                    x xVar = (x) bVar;
                    FilePanelView filePanelView = this.f1448k;
                    q0.g gVar = dVar.f1687g;
                    ru.zdevs.zarchiver.b bVar7 = xVar.f137a;
                    filePanelView.k(bVar7, gVar, filePanelView.c(bVar7.f1652b), 0);
                    if (xVar.f138b) {
                        d(xVar.f137a.f1652b, 0, false);
                        return;
                    }
                    return;
                case 10:
                    u uVar = (u) bVar;
                    ru.zdevs.zarchiver.b bVar8 = dVar.f1686f[uVar.f118a];
                    if (!bVar8.i()) {
                        M(uVar.f118a, bVar8.f1653c, uVar.f119b, -1, 1);
                        return;
                    }
                    d0.h listAdapter = this.f1448k.getListAdapter();
                    if (listAdapter != null) {
                        listAdapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                case 11:
                case 14:
                case 15:
                case 16:
                default:
                    return;
                case 12:
                    a0.y yVar3 = (a0.y) bVar;
                    if (yVar3.f142b == null) {
                        ZApp.j("Failed to determine path");
                        return;
                    }
                    ru.zdevs.zarchiver.b bVar9 = dVar.f1686f[yVar3.f141a];
                    this.f1452o = yVar3.f145e;
                    boolean z4 = yVar3.f143c;
                    if (!z4) {
                        bVar9.m((char) (dVar.f1681a & 3), this.f1448k.getListPosition());
                        bVar9.l(yVar3.f142b, (byte) 0, 0);
                    }
                    int i10 = yVar3.f141a;
                    h0.h hVar2 = yVar3.f142b;
                    String str5 = yVar3.f144d;
                    M(i10, hVar2, str5, -1, str5 != null ? 8 : 0);
                    if (z4) {
                        bVar9.f1670t.clear();
                        return;
                    }
                    return;
                case 13:
                    ListView listView = (ListView) findViewById(R.id.lvFavorite);
                    if (listView != null) {
                        listView.setAdapter((ListAdapter) new c0.d(this, false, false));
                        return;
                    }
                    return;
                case 17:
                    a0.w wVar2 = (a0.w) bVar;
                    if (dVar.f1685e != wVar2.f132a) {
                        return;
                    }
                    int i11 = wVar2.f133b;
                    if (i11 != 100) {
                        s((i11 * 10000) / 100);
                        return;
                    } else {
                        t();
                        this.f1448k.setMessage(dVar.f1686f[wVar2.f132a].e());
                        return;
                    }
                case 18:
                    v vVar = (v) bVar;
                    d0.h hVarB = this.f1448k.b(vVar.f124a);
                    if (hVarB == null || hVarB.c() != R.layout.item_file_search) {
                        return;
                    }
                    hVarB.f560h.a(vVar.f125b);
                    hVarB.notifyDataSetChanged();
                    return;
                case 19:
                    c0 c0Var = (c0) bVar;
                    y yVar4 = (y) dVar.b(-1, 1, 23);
                    if (yVar4 != null) {
                        yVar4.e();
                    }
                    if (c0Var.f23c == null && (i3 = c0Var.f22b) != 2) {
                        if (i3 == 0) {
                            ZApp.i(R.string.MES_INSTALL_APP_DONE);
                            return;
                        }
                        return;
                    }
                    e0.a.b bVar10 = new e0.a.b(c0Var.f21a.e());
                    ArrayList<e0.a.C0007a> arrayList = bVar10.f648c;
                    String str6 = c0Var.f23c;
                    if (str6 != null) {
                        arrayList.add(new e0.a.C0007a(0, str6));
                        arrayList.add(new e0.a.C0007a(0, getString(R.string.MES_INSTALL_APP_FAILED)));
                    } else {
                        arrayList.add(new e0.a.C0007a(0, "Root is required to XAPK expansions"));
                        arrayList.add(new e0.a.C0007a(0, "App is not fully installed"));
                    }
                    AlertDialog alertDialog = new n(dVar, this, new e0.a.b[]{bVar10}).f979g;
                    if (alertDialog != null) {
                        g0.i.s(alertDialog);
                        return;
                    }
                    return;
                case 20:
                    a0.a aVar5 = new a0.a(((a0) bVar).f3a, 0);
                    if (aVar5.h() == 0) {
                        return;
                    }
                    dVar.f1683c.f1552e = aVar5;
                    F('A');
                    return;
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public final void c(int i2) {
        d0.h listAdapter;
        if (i2 != 0) {
            s((i2 * 10000) / 100);
            return;
        }
        t();
        q0.g gVar = this.f1445h.f1687g;
        if (!(gVar != null && gVar.f1399g) || (listAdapter = this.f1448k.getListAdapter()) == null) {
            return;
        }
        listAdapter.n(this.f1448k.getListPosition(), this.f1448k.getListMaxVisibleItemCount());
    }

    @Override
    public final void d(int i2, int i3, boolean z2) {
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (i2 != dVar.f1685e) {
            return;
        }
        if ((z2 && i3 == 1) || (!z2 && i3 == 0)) {
            J();
            invalidateOptionsMenu();
        }
        ActionMode actionMode = this.f269b;
        if (actionMode != null && ((char) (dVar.f1681a & 3)) == 2) {
            S(actionMode);
        }
    }

    @Override
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (((char) (this.f1445h.f1681a & 3)) != 1 || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return super.dispatchKeyEvent(keyEvent);
        }
        A(true);
        return true;
    }

    @Override
    public final void e(int i2, int i3) {
        y yVar;
        if (i2 != 0 || i3 <= 0 || (yVar = (y) this.f1445h.b(-2, 1, -1)) == null) {
            return;
        }
        runOnUiThread(new b(yVar, i3));
    }

    @Override
    public final void f(int i2, int i3, String str) {
        String strE = e0.a.e(i3, str);
        if (strE != null) {
            str = strE;
        }
        if (str != null) {
            ZApp.j(str);
        }
    }

    @Override
    public final void finish() {
        ZApp.g();
        super.finish();
    }

    @Override
    public final void g() {
        if (this.f1448k.getTag() != null) {
            return;
        }
        ru.zdevs.zarchiver.b bVarC = this.f1445h.c();
        h0.h hVar = bVarC.f1653c;
        this.f1448k.setTag(hVar);
        TextView textView = (TextView) findViewById(R.id.tvFolderSize);
        if (textView == null) {
            return;
        }
        textView.setText(getString(R.string.FINFO_SIZE) + " ...");
        w0.a aVar = this.f270c;
        int i2 = bVarC.f1652b;
        aVar.f(3, 0, i2);
        new i0(hVar, i2).g(this, aVar);
    }

    @Override
    public final void h(int i2) {
        q0.g gVar = this.f1445h.f1687g;
        if (gVar != null) {
            gVar.c(0);
        }
        T(i2, true, false, true);
    }

    @Override
    public final void onActivityResult(int i2, int i3, Intent intent) {
        String str;
        ru.zdevs.zarchiver.b bVar;
        h1.j jVar;
        y yVar;
        String strSubstring = null;
        char c2 = 0;
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (i2 == 105 || i2 == 106) {
            if (i3 == -1 && intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                String str2 = (i2 != 106 || (bVar = dVar.f1686f[1]) == null) ? dVar.f1686f[0].f1653c.f1108c : bVar.f1653c.f1108c;
                x0.d.a aVarI = x0.d.i(str2);
                if (aVarI != null) {
                    Uri uriC = aVarI.c(aVarI.b(str2), true);
                    if (uriC != null && uriC.toString().startsWith(data.toString())) {
                        c2 = 1;
                    }
                } else if (Build.VERSION.SDK_INT >= 33 && str2.startsWith("/SAF") && data.toString().contains("ru.zdevs.zarchiver")) {
                    c2 = 2;
                }
                if (c2 == 0) {
                    int iIndexOf = str2.indexOf("/Android/");
                    if (iIndexOf > 0) {
                        strSubstring = str2.substring(iIndexOf + 1);
                    } else if (aVarI != null && a0.c.K(aVarI.f2259f, 2) && (str = aVarI.f2254a) != null) {
                        strSubstring = str;
                    }
                    if (strSubstring == null) {
                        strSubstring = "SD";
                    }
                    ZApp.j(getResources().getString(R.string.FSD_INCORRECT_PATH).replace("%1", strSubstring));
                } else {
                    getApplicationContext().getContentResolver().takePersistableUriPermission(data, 3);
                    x0.d.b(data);
                }
                if (c2 == 1) {
                    M(dVar.f1685e, dVar.d(), null, this.f1448k.getListPosition(), 16);
                }
            }
        } else if (i2 == 108 || i2 == 109 || i2 == 110) {
            if (i3 == -1 && (jVar = dVar.f1683c.f1553f) != null && jVar.type() == 2) {
                new ru.zdevs.zarchiver.e(getContentResolver(), (ru.zdevs.zarchiver.a.b) dVar.f1683c.f1553f, i2, dVar.f1685e).g(null, this.f270c);
            } else {
                ZApp.i(R.string.MES_END_WITH_ERROR);
            }
        } else if (i2 == 1203) {
            if (i3 == -1) {
                ru.zdevs.zarchiver.a.d(this, (h0.h) intent.getParcelableExtra("apk_path"), (h0.h) intent.getParcelableExtra("dir_path"), intent.getStringArrayExtra("name_list"));
            }
        } else if (i2 == 111) {
            if (Build.VERSION.SDK_INT >= 33) {
                System.exit(0);
                recreate();
            }
        } else if (i2 == 112) {
            if (i3 != -1 && (yVar = (y) dVar.b(-1, 1, 23)) != null) {
                yVar.e();
            }
        } else if (i2 == 107) {
            w();
        } else if (i2 == 113) {
            if (x0.h.c(this) == 0) {
                x(dVar.f1685e, dVar.d().f1108c);
            } else {
                ZApp.i(R.string.FSD_ACCESS_FILES_DENIED);
            }
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        d0.h hVarB;
        d0.h hVarB2;
        int iC;
        int iC2;
        ExSearchView exSearchView;
        ExSearchView exSearchView2;
        super.onConfigurationChanged(configuration);
        int iK = k(configuration);
        boolean z2 = false;
        boolean z3 = iK != this.f1446i;
        this.f1446i = iK;
        if (z3) {
            w0.a aVar = this.f270c;
            aVar.d(this);
            FilePanelView filePanelView = this.f1448k;
            if (filePanelView != null) {
                iC = filePanelView.c(0);
                iC2 = this.f1448k.c(1);
                hVarB = this.f1448k.b(0);
                hVarB2 = this.f1448k.b(1);
            } else {
                hVarB = null;
                hVarB2 = null;
                iC = 0;
                iC2 = 0;
            }
            boolean z4 = configuration.orientation == 1 && !v0.b.d(configuration);
            if (z0.e.c(this, false, configuration)) {
                getWindow().setFlags(z4 ? 134217728 : 0, 134217728);
            }
            z0.e.e(this);
            G(this.f1446i);
            H();
            invalidateOptionsMenu();
            ru.zdevs.zarchiver.d dVar = this.f1445h;
            O(dVar.d());
            U(true);
            ru.zdevs.zarchiver.b bVarC = dVar.c();
            if (hVarB != null) {
                this.f1448k.h(0, hVarB, bVarC.f1652b == 0, false);
                this.f1448k.j(0, iC);
                if (bVarC.f1652b == 0 && hVarB.c() == R.layout.item_file_search && (exSearchView2 = this.f1449l) != null) {
                    exSearchView2.e(bVarC.f1665o, bVarC.f1666p);
                }
            }
            if (hVarB2 != null) {
                this.f1448k.h(1, hVarB2, bVarC.f1652b == 1, false);
                this.f1448k.j(1, iC2);
                if (bVarC.f1652b == 1 && hVarB2.c() == R.layout.item_file_search && (exSearchView = this.f1449l) != null) {
                    exSearchView.e(bVarC.f1665o, bVarC.f1666p);
                }
            }
            this.f1448k.setMessage(bVarC.e());
            Iterator<g0.i> it = dVar.f1684d.iterator();
            while (it.hasNext()) {
                it.next().n(this, configuration);
            }
            aVar.a(this, this);
        }
        FloatingActionMenu floatingActionMenu = this.f1450m;
        if (floatingActionMenu != null) {
            floatingActionMenu.postDelayed(new g(), 150L);
        }
        if ((configuration.screenLayout & 15) >= 3 && !z0.e.b(this)) {
            z2 = true;
        }
        h0.g.f1098g = z2;
    }

    @Override
    public final void onCreate(Bundle bundle) {
        ru.zdevs.zarchiver.b bVar;
        f1442r = new WeakReference<>(this);
        z0.e.g(this);
        t0.b.m(this, false, null);
        if (Build.VERSION.SDK_INT < 21) {
            requestWindowFeature(2);
            if (t0.b.l(1)) {
                try {
                    getWindow().setUiOptions(1);
                } catch (Exception unused) {
                }
            }
        }
        Intent intent = getIntent();
        Configuration configuration = getResources().getConfiguration();
        z0.e.k(this, t0.b.f2084e);
        z0.e.k(ZApp.f1434c, t0.b.f2084e);
        z0.e.o(this, configuration.orientation == 1 && !v0.b.d(configuration));
        h0.g.f1098g = (configuration.screenLayout & 15) >= 3 && !z0.e.b(this);
        super.onCreate(bundle);
        int iK = k(configuration);
        this.f1446i = iK;
        G(iK);
        ru.zdevs.zarchiver.b[] bVarArr = this.f1445h.f1686f;
        bVarArr[0].l(new h0.h(t0.b.f2081b[0]), (byte) 0, 0);
        bVarArr[0].n();
        if (t0.b.l(128)) {
            ru.zdevs.zarchiver.b bVar2 = new ru.zdevs.zarchiver.b(1);
            bVarArr[1] = bVar2;
            bVar2.n();
        }
        C2JBridge.c(this);
        v0.h.d(this);
        z0.b.f(this, t0.b.d(), this.f1445h.c().f1657g == R.layout.item_file_grid);
        x0.d.e(this);
        H();
        n0.a.a(this);
        this.f1453p = 0L;
        new k0().g(null, this.f270c);
        if (intent == null) {
            this.f1452o = false;
        } else if (N(intent, !intent.getBooleanExtra("isZA", false), true)) {
            if (t0.b.l(128)) {
                L(1, 0, this.f1445h.f1686f[1].f1653c);
            }
        } else if (bundle != null) {
            ru.zdevs.zarchiver.d dVar = this.f1445h;
            dVar.getClass();
            dVar.f1681a = (char) bundle.getInt("action");
            a0.a aVar = (a0.a) bundle.getParcelable("c_file");
            ru.zdevs.zarchiver.a aVar2 = dVar.f1683c;
            aVar2.f1552e = aVar;
            aVar2.f1551d = (a0.a) bundle.getParcelable("a_file");
            if (bundle.getInt("d_type") == 1) {
                aVar2.f1553f = (h1.j) bundle.getParcelable("d_data");
            }
            dVar.f1685e = bundle.getInt("page");
            ru.zdevs.zarchiver.b[] bVarArr2 = dVar.f1686f;
            bVarArr2[0].k(bundle, "p1");
            ru.zdevs.zarchiver.b bVar3 = bVarArr2[1];
            if (bVar3 != null) {
                bVar3.k(bundle, "p2");
            } else if (dVar.f1685e >= 1) {
                dVar.f1685e = 0;
            }
            ru.zdevs.zarchiver.b[] bVarArr3 = this.f1445h.f1686f;
            int i2 = 0;
            while (i2 < bVarArr3.length && (bVar = bVarArr3[i2]) != null) {
                if (bVar.i()) {
                    ru.zdevs.zarchiver.b bVar4 = bVarArr3[i2];
                    P(i2, bVar4.f1665o, bVar4.f1666p, false);
                } else {
                    M(i2, bVarArr3[i2].f1653c, null, bundle.getInt("p" + (i2 + 1) + "pos", -1), i2 == this.f1445h.f1685e ? 1024 : 0);
                }
                i2++;
            }
            char c2 = this.f1445h.f1681a;
            if (((char) (c2 & 3)) != 0) {
                F(c2);
            }
        } else {
            if (t0.b.h(16)) {
                t0.b.o(this, 16);
                new w(4, this, getString(R.string.MES_FEATURES), this.f1445h).t();
            }
            L(0, 0, this.f1445h.f1686f[0].f1653c);
            if (t0.b.l(128)) {
                L(1, 0, this.f1445h.f1686f[1].f1653c);
            }
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ZArchiver.iMES");
        h1.h.d(this, this.f1445h.f1683c.f1555h, intentFilter);
        x0.d.v(this, this.f1445h.f1683c);
        w();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d9  */
    @Override
    public final boolean onCreateOptionsMenu(Menu menu) {
        int i2;
        boolean z2;
        boolean z3;
        if (menu == null) {
            return false;
        }
        boolean z4 = v0.b.g(this) && v0.b.j(this);
        FilePanelView filePanelView = this.f1448k;
        d0.h listAdapter = filePanelView == null ? null : filePanelView.getListAdapter();
        boolean z5 = listAdapter != null && listAdapter.f560h.f521a > 0;
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.toolbar_default, menu);
        menuInflater.inflate(R.menu.menu_tool, menu);
        menuInflater.inflate(R.menu.menu_main, menu);
        ExSearchView exSearchView = this.f1449l;
        if (exSearchView == null || exSearchView.getVisibility() == 0) {
            i2 = 1;
        } else {
            menu.findItem(R.id.bSearch).setVisible(true);
            i2 = 0;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.b bVarC = dVar.c();
        String str = bVarC.f1653c.f1108c;
        byte bF = bVarC.f();
        boolean zG = bVarC.g(4);
        boolean z6 = zG && a0.c.N(1, str);
        if (zG) {
            f0.a aVarM = f0.a.m();
            ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
            try {
                reentrantReadWriteLock.readLock().lock();
                f0.d dVar2 = aVarM.f758b;
                boolean z7 = dVar2 != null && dVar2.m(str) && aVarM.f758b.q();
                reentrantReadWriteLock.readLock().unlock();
                if (z7) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                reentrantReadWriteLock.readLock().unlock();
                throw th;
            }
        } else {
            z2 = false;
        }
        boolean z8 = !bVarC.i();
        boolean z9 = !t0.b.l(64);
        MenuItem menuItemFindItem = menu.findItem(R.id.bMenuTool);
        if (!z5 && !z4) {
            if (z9) {
                z3 = dVar.f1683c.f1552e != null;
            }
        }
        menuItemFindItem.setVisible(z3);
        menu.findItem(R.id.bPast).setVisible(z9);
        menu.findItem(R.id.bArchiveComment).setVisible(z2);
        menu.findItem(R.id.bArchiveCommentAdd).setVisible(zG && !z2 && a0.c.N(2, str));
        menu.findItem(R.id.bMenuNew).setVisible(z8 && (!zG || z6));
        menu.findItem(R.id.bNewArchive).setVisible((zG || bF == 2) ? false : true);
        menu.findItem(R.id.bMenuAdd).setVisible(z6);
        if (t0.b.i(null) && ((t0.b.f2092m != 2 || ZApp.f1438g) && ((bF == 3 || bF == 4) && dVar.f(3) && !dVar.f(128)))) {
            menu.findItem(R.id.bRemountRO).setVisible(bF == 3);
            menu.findItem(R.id.bRemountRW).setVisible(bF == 4);
        }
        if (!z4 && v0.b.g(this)) {
            l(i2, menu);
        }
        return true;
    }

    @Override
    public final void onDestroy() {
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        try {
            unregisterReceiver(dVar.f1683c.f1555h);
            x0.d.x(this, dVar.f1683c);
        } catch (Exception unused) {
        }
        t0.a.f2073a.clear();
        t0.a.f2075c = null;
        t0.a.f2076d = false;
        ZApp.g();
        super.onDestroy();
    }

    @Override
    public final boolean onDrag(View view, DragEvent dragEvent) {
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        try {
            int action = dragEvent.getAction();
            if (action == 1) {
                ClipDescription clipDescription = dragEvent.getClipDescription();
                if (clipDescription == null) {
                    return false;
                }
                for (int i2 = 0; i2 < clipDescription.getMimeTypeCount(); i2++) {
                    String mimeType = clipDescription.getMimeType(i2);
                    if (mimeType.startsWith("text/") || mimeType.startsWith("image/") || mimeType.startsWith("video/") || mimeType.startsWith("application/") || mimeType.equals("vnd.android.document/directory") || mimeType.equals("text/uri-list")) {
                        return true;
                    }
                }
            } else if (action == 3) {
                ClipData clipData = dragEvent.getClipData();
                if (clipData.getItemCount() >= 1) {
                    requestDragAndDropPermissions(dragEvent);
                    new o0(this.f1445h.f1685e, clipData).g(this, this.f270c);
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0236  */
    /* JADX WARN: Code duplicated, block: B:66:0x010c  */
    /* JADX WARN: Code duplicated, block: B:67:0x010e  */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        char c2;
        String strI;
        h0.h hVar;
        boolean z2;
        String strE;
        char c3;
        if (adapterView == null) {
            return;
        }
        this.f1451n = false;
        d0.h hVar2 = (d0.h) adapterView.getAdapter();
        if (hVar2 == null) {
            return;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (((char) (dVar.f1681a & 3)) == 2) {
            hVar2.j(i2, 2);
            return;
        }
        if (dVar.b(-1, 10, -1) != null) {
            return;
        }
        int i3 = hVar2.f559g;
        ru.zdevs.zarchiver.b bVar = this.f1445h.f1686f[i3];
        if (hVar2.f560h.f521a > 0) {
            if (hVar2.a(i2).f545g) {
                h0.g.c(this, this.f1445h, bVar, 2, hVar2.d(), this.f1448k.getClickPoint());
                return;
            }
            h0.g gVar = new h0.g(this);
            gVar.f1103d = getString(R.string.MENU_SELECT);
            gVar.a(14);
            gVar.a(15);
            gVar.a(16);
            gVar.d(this.f1445h, 2, this.f1448k.getClickPoint());
            return;
        }
        if (hVar2.c() == R.layout.item_file_search) {
            synchronized (bVar.f1651a) {
                d0.i iVar = bVar.f1668r;
                if (iVar == null || i2 < 0 || i2 >= iVar.size()) {
                    return;
                }
                d0.f fVarJ = bVar.f1668r.j(i2);
                if (fVarJ.f()) {
                    c2 = 3;
                } else if (a0.c.G(fVarJ.d()) || fVarJ.d() == 2) {
                    if ((t0.b.l(2048) || j2 == -8) && this.f1445h.f(3)) {
                        c2 = 2;
                    } else {
                        c2 = 0;
                    }
                } else if (j2 == -8 || (t0.b.l(4096) && j2 != -7)) {
                    c2 = 1;
                } else {
                    c2 = 0;
                }
                if (c2 == 0) {
                    h0.g.c(this, this.f1445h, bVar, 2, new int[]{i2}, this.f1448k.getClickPoint());
                    return;
                }
                if (c2 == 1) {
                    ru.zdevs.zarchiver.a aVar = this.f1445h.f1683c;
                    h0.h hVar3 = new h0.h(fVarJ.f539a, fVarJ.f552k, fVarJ.f540b);
                    long j3 = fVarJ.f542d;
                    boolean z3 = fVarJ.f544f == 28;
                    int i4 = bVar.f1658h;
                    byte bF = bVar.f();
                    aVar.getClass();
                    ru.zdevs.zarchiver.a.j(this, hVar3, j3, z3, 0, i4, bF);
                    return;
                }
                if (c2 != 2) {
                    if (c2 != 3) {
                        return;
                    }
                    h0.h hVar4 = new h0.h(fVarJ.f552k);
                    if (fVarJ.g()) {
                        String str = fVarJ.f540b;
                        if (hVar4.c()) {
                            hVar4.f1109d = str;
                        }
                    } else {
                        String str2 = fVarJ.f539a;
                        String str3 = fVarJ.f540b;
                        hVar4.a(str2);
                        hVar4.f1109d = str3;
                    }
                    L(i3, 128, hVar4);
                    return;
                }
                h0.h hVar5 = fVarJ.f552k;
                String str4 = fVarJ.f539a;
                String str5 = hVar5.f1106a;
                if (hVar5.g()) {
                    strI = hVar5.f1108c;
                    a0.c.i(hVar5.f1110e, str4);
                } else if (hVar5.n()) {
                    strI = hVar5.f1108c + str4;
                } else {
                    strI = a0.c.i(hVar5.f1108c, str4);
                }
                if ("arch".equals(str5) || "rarch".equals(str5)) {
                    hVar = new h0.h(str5, strI, "/");
                } else {
                    hVar = new h0.h("root".equals(str5) ? "rarch" : "arch", strI, "/");
                }
                f0.a.m().b(hVar.f1108c);
                L(i3, 128, hVar);
                return;
            }
        }
        synchronized (bVar.f1651a) {
            if (i2 >= 0) {
                if (i2 < bVar.f1667q.size()) {
                    d0.d dVarB = bVar.f1667q.b(i2);
                    if (dVarB.f()) {
                        h0.h hVar6 = new h0.h(bVar.f1653c);
                        if (!dVarB.g()) {
                            String str6 = dVarB.f539a;
                            String str7 = dVarB.f540b;
                            hVar6.a(str6);
                            hVar6.f1109d = str7;
                            L(i3, 128, hVar6);
                            return;
                        }
                        String str8 = dVarB.f540b;
                        if (hVar6.c()) {
                            hVar6.f1109d = str8;
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            if (t0.b.l(16384)) {
                                strE = bVar.f1653c.e();
                                if ("/".equals(strE) && bVar.g(4)) {
                                    strE = a0.c.y(bVar.f1653c.f1108c);
                                }
                            } else {
                                strE = null;
                            }
                            M(i3, hVar6, strE, -1, 0);
                            return;
                        }
                        return;
                    }
                    byte bD = dVarB.d();
                    if (!a0.c.G(bD) && bD != 2) {
                        if (this.f1445h.f1681a == 'A') {
                            if ((a0.c.H(bD) || (bD == 23 && dVarB.f544f == 30)) && bVar.g(19)) {
                                c3 = 2;
                            }
                        }
                        if (j2 == -8 || (t0.b.l(4096) && j2 != -7)) {
                            c3 = 1;
                        } else {
                            c3 = 0;
                        }
                    } else if ((t0.b.l(2048) || j2 == -8 || this.f1445h.f1681a == 'A') && bVar.g(19)) {
                        c3 = 2;
                    } else {
                        c3 = 0;
                    }
                    if (c3 == 0) {
                        h0.g.c(this, this.f1445h, bVar, 2, new int[]{i2}, this.f1448k.getClickPoint());
                        return;
                    }
                    if (c3 == 1) {
                        ru.zdevs.zarchiver.a aVar2 = this.f1445h.f1683c;
                        h0.h hVar7 = new h0.h(dVarB.f539a, bVar.f1653c, dVarB.f540b);
                        long j4 = dVarB.f542d;
                        boolean z4 = dVarB.f544f == 28;
                        int i5 = bVar.f1658h;
                        byte bF2 = bVar.f();
                        aVar2.getClass();
                        ru.zdevs.zarchiver.a.j(this, hVar7, j4, z4, 0, i5, bF2);
                        return;
                    }
                    if (c3 != 2) {
                        return;
                    }
                    h0.h hVar8 = new h0.h(bVar.f1653c);
                    String str9 = dVarB.f539a;
                    String str10 = dVarB.f540b;
                    hVar8.a(str9);
                    hVar8.f1109d = str10;
                    h0.h hVarB = a0.c.B(hVar8);
                    f0.a.m().b(hVarB.f1108c);
                    L(i3, 128, hVarB);
                }
            }
        }
    }

    @Override
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ActionMode actionMode;
        this.f1451n = false;
        d0.h listAdapter = this.f1448k.getListAdapter();
        if (listAdapter == null) {
            return false;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        char c2 = dVar.f1681a;
        if (c2 != 0 && c2 != 2) {
            return false;
        }
        d0.d dVarA = listAdapter.a(i2);
        if (dVarA.g()) {
            if (listAdapter.f560h.f521a > 0) {
                listAdapter.h();
            } else {
                listAdapter.g();
            }
            return true;
        }
        d0.b bVar = listAdapter.f560h;
        int i3 = bVar.f521a;
        int i4 = listAdapter.f559g;
        if (i3 > 0 && !dVarA.f545g) {
            boolean zF = bVar.f(i2);
            d0.h.a aVar = listAdapter.f566n;
            if (aVar != null && zF) {
                aVar.d(i4, listAdapter.f560h.f521a, true);
            }
            listAdapter.notifyDataSetChanged();
            return true;
        }
        if (dVar.f1681a == 2 && (actionMode = this.f269b) != null) {
            actionMode.setTag(dVar);
            this.f269b.finish();
        }
        if (dVar.b(-1, 10, -1) != null) {
            return true;
        }
        int[] iArrD = listAdapter.f560h.f521a > 0 ? listAdapter.d() : new int[]{i2};
        ru.zdevs.zarchiver.d dVar2 = this.f1445h;
        h0.g.c(this, dVar2, dVar2.f1686f[i4], 3, iArrD, this.f1448k.getClickPoint());
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0195  */
    /* JADX WARN: Code duplicated, block: B:141:0x019a  */
    /* JADX WARN: Code duplicated, block: B:142:0x019c  */
    /* JADX WARN: Code duplicated, block: B:147:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:150:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:159:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:166:0x01df  */
    /* JADX WARN: Code duplicated, block: B:168:0x01e6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:169:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:170:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:173:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:174:0x0202  */
    /* JADX WARN: Code duplicated, block: B:175:0x0208  */
    /* JADX WARN: Code duplicated, block: B:186:0x0223  */
    /* JADX WARN: Code duplicated, block: B:189:0x022e  */
    /* JADX WARN: Code duplicated, block: B:192:0x023b  */
    /* JADX WARN: Code duplicated, block: B:193:0x0241  */
    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        boolean z2;
        boolean z3;
        boolean zG;
        boolean z4;
        boolean z5;
        boolean z6;
        h0.g gVar;
        char c2;
        boolean zK = a0.c.K(keyEvent != null ? keyEvent.getMetaState() : 0, 4096);
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (!zK) {
            if (i2 == 67) {
                A(true);
                return true;
            }
            if (i2 != 69) {
                if (i2 == 76 || i2 == 154) {
                    return D(R.id.bSelectInvert);
                }
                if (i2 == 174) {
                    return this.f1448k.g(2);
                }
                if (i2 == 92) {
                    this.f1448k.d(0);
                    return true;
                }
                if (i2 == 93) {
                    this.f1448k.d(1);
                    return true;
                }
                if (i2 != 111) {
                    if (i2 == 112) {
                        return E() && D(R.id.bDelete);
                    }
                    if (i2 == 122) {
                        this.f1448k.d(2);
                        return true;
                    }
                    if (i2 == 123) {
                        this.f1448k.d(3);
                        return true;
                    }
                    if (i2 != 156) {
                        if (i2 != 157) {
                            switch (i2) {
                                case 82:
                                    char c3 = dVar.f1681a;
                                    ru.zdevs.zarchiver.a aVar = dVar.f1683c;
                                    if (c3 == 0) {
                                        d0.h listAdapter = this.f1448k.getListAdapter();
                                        z2 = listAdapter != null && listAdapter.f560h.f521a > 0;
                                        if (z2) {
                                            int[] iArrD = listAdapter.d();
                                            int length = iArrD.length;
                                            int i3 = 0;
                                            while (true) {
                                                if (i3 < length) {
                                                    d0.d dVarA = listAdapter.a(iArrD[i3]);
                                                    byte bD = dVarA.d();
                                                    if (a0.c.H(bD) || (bD == 23 && dVarA.f544f == 30)) {
                                                        i3++;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                } else {
                                                    z3 = true;
                                                }
                                            }
                                            ru.zdevs.zarchiver.b bVar = dVar.f1686f[listAdapter.f559g];
                                            aVar.getClass();
                                            try {
                                                a0.a aVarA = bVar.a(iArrD);
                                                aVar.f1551d = aVarA;
                                                aVarA.h();
                                                break;
                                            } catch (Exception unused) {
                                            }
                                        }
                                        ru.zdevs.zarchiver.b bVarC = dVar.c();
                                        zG = bVarC.g(4);
                                        if (zG || !a0.c.N(1, bVarC.f1653c.f1108c)) {
                                            z4 = false;
                                        } else {
                                            z4 = true;
                                        }
                                        if (aVar.f1552e != null) {
                                            z5 = true;
                                        } else {
                                            z5 = false;
                                        }
                                        if (z5 || bVarC.i()) {
                                            z6 = false;
                                        } else {
                                            z6 = true;
                                        }
                                        gVar = new h0.g(this);
                                        c2 = dVar.f1681a;
                                        if (c2 == 0) {
                                            if (z2 && !zG && !z3 && !bVarC.i()) {
                                                gVar.a(8);
                                            }
                                            if (z3 || (zG && z2)) {
                                                gVar.a(5);
                                            }
                                            if (!z2 && z6 && (!zG || z4)) {
                                                gVar.a(26);
                                            }
                                            if (z2) {
                                                gVar.a(24);
                                                if (zG) {
                                                    gVar.a(25);
                                                    gVar.a(23);
                                                } else if (z4) {
                                                    gVar.a(56);
                                                }
                                            }
                                            gVar.a(14);
                                            if (z2) {
                                                gVar.a(16);
                                                gVar.a(15);
                                            } else {
                                                gVar.a(91);
                                            }
                                        } else {
                                            if (c2 != '\t' || c2 == 17) {
                                                gVar.a(92);
                                            } else if (c2 == 'A') {
                                                gVar.a(93);
                                            } else if (c2 == '\"') {
                                                gVar.a(94);
                                            }
                                            if (((char) (dVar.f1681a & 3)) == 2) {
                                                gVar.a(14);
                                                gVar.a(16);
                                                gVar.a(15);
                                            }
                                            if (dVar.f1681a == 2) {
                                                gVar.a(95);
                                            } else {
                                                gVar.a(96);
                                            }
                                        }
                                        gVar.a(90);
                                        gVar.a(97);
                                        gVar.f1103d = getString(R.string.app_name);
                                        gVar.d(dVar, 0, null);
                                        return true;
                                    }
                                    z2 = false;
                                    z3 = false;
                                    ru.zdevs.zarchiver.b bVarC2 = dVar.c();
                                    zG = bVarC2.g(4);
                                    if (zG) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (aVar.f1552e != null) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z5) {
                                        z6 = false;
                                    } else {
                                        z6 = false;
                                    }
                                    gVar = new h0.g(this);
                                    c2 = dVar.f1681a;
                                    if (c2 == 0) {
                                        if (z2) {
                                            gVar.a(8);
                                        }
                                        if (z3) {
                                            gVar.a(5);
                                        } else {
                                            gVar.a(5);
                                        }
                                        if (!z2) {
                                            gVar.a(26);
                                        }
                                        if (z2) {
                                            gVar.a(24);
                                            if (zG) {
                                                gVar.a(25);
                                                gVar.a(23);
                                            } else if (z4) {
                                                gVar.a(56);
                                            }
                                        }
                                        gVar.a(14);
                                        if (z2) {
                                            gVar.a(16);
                                            gVar.a(15);
                                        } else {
                                            gVar.a(91);
                                        }
                                    } else {
                                        if (c2 != '\t') {
                                            gVar.a(92);
                                        } else {
                                            gVar.a(92);
                                        }
                                        if (((char) (dVar.f1681a & 3)) == 2) {
                                            gVar.a(14);
                                            gVar.a(16);
                                            gVar.a(15);
                                        }
                                        if (dVar.f1681a == 2) {
                                            gVar.a(95);
                                        } else {
                                            gVar.a(96);
                                        }
                                    }
                                    gVar.a(90);
                                    gVar.a(97);
                                    gVar.f1103d = getString(R.string.app_name);
                                    gVar.d(dVar, 0, null);
                                    return true;
                                case 83:
                                    FloatingActionMenu floatingActionMenu = this.f1450m;
                                    if (floatingActionMenu != null) {
                                        if (floatingActionMenu.f1790e <= 2) {
                                            floatingActionMenu.getOnMenuButtonClick().onClick(this.f1450m);
                                        } else if (floatingActionMenu.d()) {
                                            this.f1450m.e(false, false);
                                            this.f1448k.requestFocus();
                                        } else {
                                            this.f1450m.setMenuState(true);
                                            this.f1450m.requestFocus();
                                        }
                                    }
                                    return true;
                            }
                        }
                        return this.f1448k.g(1);
                    }
                } else if (this.f269b != null) {
                    dVar.g((char) 0);
                    j();
                    return true;
                }
            }
            return this.f1448k.g(0);
        }
        if (i2 == 29) {
            return E() && D(R.id.bCompress);
        }
        if (i2 == 31) {
            return E() && D(R.id.bCopy);
        }
        if (i2 == 33) {
            return E() && D(R.id.bExtract);
        }
        if (i2 == 50) {
            if (!D(R.id.bPast)) {
                return false;
            }
            dVar.g((char) 0);
            j();
            return true;
        }
        if (i2 == 52) {
            return E() && D(R.id.bCut);
        }
        if (i2 == 61) {
            FilePanelView filePanelView = this.f1448k;
            if (!a0.c.K(filePanelView.f1775z, 16)) {
                return false;
            }
            int i4 = filePanelView.f1750a;
            int i5 = i4 == 0 ? 1 : 0;
            if (filePanelView.f1757h[i5] == null) {
                return false;
            }
            if (i4 != i5) {
                filePanelView.f1750a = i5;
                filePanelView.a();
                FilePanelView.h hVar = filePanelView.f1774y;
                if (hVar != null) {
                    ((ZArchiver) hVar).C(filePanelView.f1750a);
                }
            }
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        ExSearchView exSearchView;
        if (keyEvent.getKeyCode() == 4) {
            A(true);
            return true;
        }
        if (i2 == 84) {
            ru.zdevs.zarchiver.d dVar = this.f1445h;
            if (dVar.f1681a == 0 && !dVar.c().i() && (exSearchView = this.f1449l) != null && exSearchView.isIconified()) {
                this.f1449l.setVisibility(0);
                this.f1449l.setIconified(false);
            }
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override
    public final void onLowMemory() {
        Log.e("ZArchiver", "Low memory image cash release!");
        q0.g gVar = this.f1445h.f1687g;
        if (gVar != null) {
            gVar.c(0);
        }
    }

    @Override
    public final boolean onMenuOpened(int i2, Menu menu) {
        boolean z2;
        if (i2 == 8) {
            z0.e.m(menu);
            if ((menu instanceof SubMenu) && ((SubMenu) menu).getItem().getItemId() == R.id.bMenuTool) {
                ru.zdevs.zarchiver.d dVar = this.f1445h;
                ru.zdevs.zarchiver.b bVarC = dVar.c();
                boolean zG = bVarC.g(4);
                boolean z3 = !zG || a0.c.N(1, bVarC.f1653c.f1108c);
                boolean z4 = !bVarC.i();
                d0.h listAdapter = this.f1448k.getListAdapter();
                boolean z5 = listAdapter != null && listAdapter.f560h.f521a > 0;
                if (!z5) {
                    z2 = z5;
                    break;
                }
                int[] iArrD = listAdapter.d();
                int length = iArrD.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z2 = z5;
                        break;
                    }
                    if (!a0.c.H(listAdapter.a(iArrD[i3]).d())) {
                        z2 = false;
                        break;
                    }
                    i3++;
                }
                byte bF = bVarC.f();
                boolean z6 = bF != 2 || listAdapter == null || listAdapter.f560h.f521a < 2;
                menu.findItem(R.id.bCopy).setEnabled(z5);
                menu.findItem(R.id.bCut).setEnabled((!z5 || zG || bF == 2) ? false : true);
                menu.findItem(R.id.bPast).setEnabled((dVar.f1683c.f1552e != null) && z3 && z4 && bF != 2);
                menu.findItem(R.id.bExtract).setEnabled(zG || (z5 && z2));
                menu.findItem(R.id.bTest).setEnabled(zG || (z5 && z2));
                menu.findItem(R.id.bCompress).setEnabled(z5 && !zG && z4);
                menu.findItem(R.id.bDelete).setEnabled(z5 && z3 && z6);
            }
        }
        return super.onMenuOpened(i2, menu);
    }

    @Override
    public final void onNewIntent(Intent intent) {
        y yVar;
        super.onNewIntent(intent);
        if (intent == null) {
        }
        if (!"ru.zdevs.zarchiver.APP_INSTALL_RESULT".equals(intent.getAction()) || Build.VERSION.SDK_INT < 21) {
            N(intent, false, false);
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return;
        }
        int i2 = extras.getInt("android.content.pm.extra.STATUS", -1);
        String string = extras.getString("android.content.pm.extra.STATUS_MESSAGE");
        Uri data = intent.getData();
        h0.h hVar = data == null ? null : new h0.h(data);
        boolean z2 = hVar != null && hVar.f1108c.toLowerCase().endsWith(".xapk");
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (z2 && i2 == 0) {
            new q0(dVar.f1683c.f1554g, hVar).g(null, this.f270c);
        } else if (i2 != -1 && (yVar = (y) dVar.b(-1, 1, 23)) != null) {
            yVar.e();
        }
        switch (i2) {
            case -1:
                Intent intent2 = (Intent) extras.get("android.intent.extra.INTENT");
                if (intent2 != null) {
                    ComponentName componentNameResolveActivity = intent2.resolveActivity(getPackageManager());
                    if (componentNameResolveActivity != null && (componentNameResolveActivity.getPackageName().startsWith("ru.zdevs") || componentNameResolveActivity.getClassName().startsWith("ru.zdevs"))) {
                        ZApp.j("Incorrect confirm pending");
                    } else if (!a0.c.L(intent2.getFlags(), 3)) {
                        w0.c.h(new h1.g(this, intent2, 112, null));
                    } else {
                        ZApp.j("Incorrect confirm pending");
                    }
                    break;
                }
                break;
            case 0:
                ZApp.i(R.string.MES_INSTALL_APP_DONE);
                break;
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
                e0.a.b bVar = new e0.a.b(hVar == null ? "" : hVar.e());
                e0.a.C0007a c0007a = new e0.a.C0007a(0, string);
                ArrayList<e0.a.C0007a> arrayList = bVar.f648c;
                arrayList.add(c0007a);
                arrayList.add(new e0.a.C0007a(0, getString(R.string.MES_INSTALL_APP_FAILED)));
                AlertDialog alertDialog = new n(dVar, this, new e0.a.b[]{bVar}).f979g;
                if (alertDialog != null) {
                    g0.i.s(alertDialog);
                }
                w0.c.h(new c());
                break;
            case 3:
                break;
            default:
                ZApp.j(string);
                break;
        }
    }

    @Override
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            A(false);
            return true;
        }
        if (menuItem.getItemId() != R.id.bMenuViewMode) {
            if (D(menuItem.getItemId())) {
                return true;
            }
            return super.onOptionsItemSelected(menuItem);
        }
        ru.zdevs.zarchiver.b bVarC = this.f1445h.c();
        f1.b bVar = new f1.b(this, bVarC.f1657g, bVarC.f1659i, bVarC.f1658h);
        bVar.a(getWindow(), findViewById(R.id.bMenuViewMode));
        bVar.f789h = new f(bVarC);
        return true;
    }

    @Override
    public final void onPause() {
        super.onPause();
        Handler handler = this.f1444g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1444g = null;
        }
        this.f270c.f(100, 1, -1);
        C2JBridge.f1612b = null;
        this.f1453p = System.currentTimeMillis();
    }

    @Override
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (iArr.length <= 0 || iArr[0] != 0) {
            return;
        }
        Iterator it = x0.d.o().iterator();
        while (it.hasNext()) {
            ((x0.d.a) it.next()).f2259f &= -24577;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.b[] bVarArr = dVar.f1686f;
        ru.zdevs.zarchiver.b bVar = bVarArr[0];
        if (bVar != null) {
            bVar.f1654d = (byte) 0;
        }
        ru.zdevs.zarchiver.b bVar2 = bVarArr[1];
        if (bVar2 != null) {
            bVar2.f1654d = (byte) 0;
        }
        M(dVar.f1685e, dVar.d(), null, this.f1448k.getListPosition(), 0);
    }

    @Override
    public final void onRestart() {
        ru.zdevs.zarchiver.b bVar;
        super.onRestart();
        boolean z2 = true;
        if (t0.b.h(1)) {
            t0.b.a aVar = new t0.b.a();
            t0.b.m(this, false, aVar);
            if (aVar.f2097a) {
                f1442r = null;
                recreate();
                return;
            }
            v0.h.d(this);
            z0.b.f2333c.clear();
            if (aVar.f2101e) {
                f0.a aVar2 = f0.a.f756e;
                if (aVar2 != null) {
                    aVar2.a();
                }
                f0.a.f756e = null;
                aVar.f2098b = true;
            }
            if (aVar.f2098b) {
                int i2 = t0.b.l(128) ? 2 : 1;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (aVar.f2099c && (bVar = this.f1445h.f1686f[i3]) != null) {
                        bVar.n();
                    }
                    this.f1448k.h(i3, null, false, false);
                }
                this.f1453p = 0L;
            }
            if (aVar.f2100d) {
                R(10);
                z2 = false;
            }
        }
        if (z2) {
            R(8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0089  */
    @Override
    public final void onResume() {
        char c2;
        super.onResume();
        C2JBridge.f1612b = this;
        ru.zdevs.zarchiver.service.c cVar = this.f1443f;
        if (cVar != null) {
            try {
                cVar.GUIStatus(true);
                this.f1443f.SetSettings(t0.b.b(), t0.b.f2086g, t0.b.f2084e);
            } catch (Exception unused) {
            }
        } else {
            this.f1444g = h1.h.f(this, new Intent(this, (Class<?>) ZArchiverService.class), this.f1454q);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f1453p;
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        if (jCurrentTimeMillis > 5000) {
            int i2 = t0.b.l(128) ? 2 : 1;
            for (int i3 = 0; i3 < i2; i3++) {
                ru.zdevs.zarchiver.b bVar = dVar.f1686f[i3];
                if (bVar != null) {
                    if (!bVar.i()) {
                        if (bVar.g(4)) {
                            h0.h hVar = bVar.f1653c;
                            String str = hVar.f1108c;
                            if (str.startsWith("/uri/") || str.startsWith("/SAF") || x0.g.b(hVar) != 1 || n0.e.i(str)) {
                                c2 = 1;
                            } else {
                                c2 = 2;
                            }
                        } else if (bVar.g(3)) {
                            c2 = 1;
                        } else {
                            c2 = 0;
                        }
                        if (c2 == 1) {
                            M(i3, bVar.f1653c, null, this.f1448k.c(i3), 16);
                        } else if (c2 == 2) {
                            L(i3, 0, new h0.h(t0.b.f2081b[i3]));
                        }
                    } else if (this.f1448k.b(i3) == null) {
                        FilePanelView filePanelView = this.f1448k;
                        filePanelView.k(bVar, dVar.f1687g, filePanelView.c(i3), 0);
                    }
                }
            }
        }
        dVar.f1683c.i();
        if (dVar.f(4) && n0.e.l(dVar.d().f1108c)) {
            return;
        }
        new h0(this).g(this, this.f270c);
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        bundle.putInt("action", dVar.f1681a);
        ru.zdevs.zarchiver.a aVar = dVar.f1683c;
        a0.a aVar2 = aVar.f1552e;
        bundle.putParcelable("c_file", (aVar2 == null || aVar2.h() < 10) ? aVar.f1552e : null);
        a0.a aVar3 = aVar.f1551d;
        bundle.putParcelable("a_file", (aVar3 == null || aVar3.h() < 10) ? aVar.f1551d : null);
        h1.j jVar = aVar.f1553f;
        if (jVar != null) {
            bundle.putInt("d_type", jVar.type());
            bundle.putParcelable("d_data", aVar.f1553f);
        } else {
            bundle.putInt("d_type", 0);
        }
        bundle.putInt("page", dVar.f1685e);
        ru.zdevs.zarchiver.b[] bVarArr = dVar.f1686f;
        bVarArr[0].j(bundle, "p1");
        ru.zdevs.zarchiver.b bVar = bVarArr[1];
        if (bVar != null) {
            bVar.j(bundle, "p2");
        }
        bundle.putInt("p1pos", this.f1448k.c(0));
        if (t0.b.l(128)) {
            bundle.putInt("p2pos", this.f1448k.c(1));
        }
    }

    @Override
    public final void onStart() {
        ru.zdevs.zarchiver.b bVar;
        super.onStart();
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        dVar.f1683c.o(this, this.f1443f);
        if ((t0.b.f2089j & 4128768) != 0) {
            if (dVar.f1687g == null) {
                dVar.f1687g = new q0.g(this);
            }
            int i2 = t0.b.f2090k;
            ru.zdevs.zarchiver.b[] bVarArr = dVar.f1686f;
            ru.zdevs.zarchiver.b bVar2 = bVarArr[0];
            if ((bVar2 != null && bVar2.f1657g == R.layout.item_file_grid) || ((bVar = bVarArr[1]) != null && bVar.f1657g == R.layout.item_file_grid)) {
                i2 = (int) (i2 * 1.6f);
            }
            dVar.f1687g.d(this, i2);
        }
    }

    @Override
    public final void onStop() {
        o0.e.a aVar;
        super.onStop();
        ru.zdevs.zarchiver.service.c cVar = this.f1443f;
        if (cVar != null) {
            try {
                cVar.GUIStatus(false);
            } catch (Exception unused) {
            }
            this.f1443f = null;
        }
        try {
            unbindService(this.f1454q);
        } catch (Exception unused2) {
        }
        this.f1445h.a(-1, -1, true);
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        int listMaxVisibleItemCount = this.f1448k.getListMaxVisibleItemCount() * 2;
        q0.g gVar = dVar.f1687g;
        if (gVar != null) {
            gVar.e(listMaxVisibleItemCount);
        }
        this.f270c.f(1000, 1, -1);
        f0.a.m().o();
        if (n0.a.f1232a) {
            KitKatExtSD.f1692a = null;
        }
        if (Build.VERSION.SDK_INT >= 23 && (aVar = o0.e.f1307l) != null) {
            try {
                synchronized (aVar) {
                    aVar.notifyAll();
                }
            } catch (Exception unused3) {
            }
        }
        this.f1445h.f1683c.o(null, null);
    }

    public final void w() {
        if (h1.h.a(this)) {
            if (h1.h.c()) {
                return;
            }
            requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 0);
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 30 || (i2 < 33 && z0.e.d(this))) {
            requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 0);
        } else {
            g0.s.t(this.f1445h, this, 0, 0, null, 4, null);
        }
    }

    public final boolean x(int i2, String str) {
        x0.d.a aVarF = x0.g.f(str);
        if (aVarF != null) {
            String str2 = null;
            if (str != null) {
                int length = str.length();
                String str3 = aVarF.f2255b;
                if (length > str3.length()) {
                    String strA0 = a0.c.a0(str.substring(str3.length()));
                    if (strA0.startsWith("Android/data") || strA0.startsWith("Android/obb")) {
                        String[] strArrH = v0.h.h(strA0, '/');
                        if (Build.VERSION.SDK_INT >= 33) {
                            if (strArrH.length >= 3) {
                                str2 = strArrH[0] + '/' + strArrH[1] + '/' + strArrH[2];
                            }
                        } else if (strArrH.length >= 2) {
                            str2 = strArrH[0] + '/' + strArrH[1];
                        }
                    }
                }
            }
            String str4 = str2;
            if (str4 != null) {
                g0.s.t(this.f1445h, this, 0, i2, aVarF, Build.VERSION.SDK_INT >= 33 ? 3 : 2, str4);
                return false;
            }
            if (str.endsWith("/Android/obb") && Build.VERSION.SDK_INT >= 33) {
                g0.s.t(this.f1445h, this, 0, i2, aVarF, 1, "/Android/obb");
                return false;
            }
        }
        return true;
    }

    public final void y(boolean z2) {
        d0.h listAdapter = this.f1448k.getListAdapter();
        if (listAdapter == null || listAdapter.f560h.f521a <= 0) {
            return;
        }
        ru.zdevs.zarchiver.d dVar = this.f1445h;
        ru.zdevs.zarchiver.a aVar = dVar.f1683c;
        ru.zdevs.zarchiver.b bVar = dVar.f1686f[listAdapter.f559g];
        int[] iArrD = listAdapter.d();
        aVar.getClass();
        try {
            a0.a aVarA = bVar.a(iArrD);
            aVar.f1551d = aVarA;
            aVarA.h();
        } catch (Exception unused) {
        }
        if (z2) {
            listAdapter.h();
            J();
        }
    }
}
