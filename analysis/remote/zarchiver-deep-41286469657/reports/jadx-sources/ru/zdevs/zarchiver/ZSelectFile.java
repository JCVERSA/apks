package ru.zdevs.zarchiver;

import a0.a1;
import a0.b1;
import a0.c1;
import a0.d1;
import a0.e0;
import a0.e1;
import a0.f0;
import a0.i0;
import a0.j0;
import a0.o;
import a0.p;
import a0.q;
import a0.t0;
import a0.v;
import a0.w;
import a0.x0;
import a0.y0;
import a0.z;
import a0.z0;
import android.app.ActionBar;
import android.app.WallpaperManager;
import android.content.ClipData;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.constraint.ConstraintLayout;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import d0.f;
import d0.h;
import d0.i;
import java.util.ArrayList;
import q0.g;
import ru.zdevs.zarchiver.activity.AboutDlg;
import ru.zdevs.zarchiver.activity.SettingsDlg;
import ru.zdevs.zarchiver.ui.FilePanelView;
import ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu;
import ru.zdevs.zarchiver.ui.text.ExSearchView;

public class ZSelectFile extends b0.c implements AdapterView.OnItemClickListener, h.a, g.c, FilePanelView.g, FilePanelView.f {

    public static final int f1479n = 0;

    public ru.zdevs.zarchiver.b f1480f;

    public g f1481g;

    public boolean f1482h;

    public int f1483i;

    public FilePanelView f1484j;

    public View f1485k = null;

    public ExSearchView f1486l;

    public FloatingActionMenu f1487m;

    public class a implements f1.b.e {
        public a() {
        }

        @Override
        public final void a(int i2, int i3, boolean z2) {
            ZSelectFile zSelectFile = ZSelectFile.this;
            ru.zdevs.zarchiver.b bVar = zSelectFile.f1480f;
            bVar.f1657g = i2;
            bVar.f1659i = z2;
            bVar.f1658h = i3;
            zSelectFile.y(null, null, false);
        }
    }

    public final class b implements ActionMode.Callback {
        public b() {
        }

        @Override
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            ZSelectFile.this.onOptionsItemSelected(menuItem);
            return true;
        }

        @Override
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            ZSelectFile zSelectFile = ZSelectFile.this;
            ActionBar actionBar = zSelectFile.getActionBar();
            if (actionBar != null) {
                actionBar.setCustomView((View) null);
            }
            actionMode.setCustomView(zSelectFile.f1485k);
            MenuInflater menuInflater = zSelectFile.getMenuInflater();
            menuInflater.inflate(R.menu.toolbar_default, menu);
            menuInflater.inflate(R.menu.menu_main, menu);
            z0.e.p(menu, new int[]{R.id.bArchiveComment, R.id.bMenuTool, R.id.bMultiSelect, R.id.bSettings, R.id.bAbout}, false);
            if (v0.b.i(zSelectFile)) {
                menu.findItem(R.id.bSearch).setVisible(true);
            }
            return true;
        }

        @Override
        public final void onDestroyActionMode(ActionMode actionMode) {
            ZSelectFile zSelectFile = ZSelectFile.this;
            zSelectFile.setResult(0, null);
            zSelectFile.i();
        }

        @Override
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            z0.e.m(menu);
            return true;
        }
    }

    public static void u(ZSelectFile zSelectFile, String str, String[] strArr, boolean z2) {
        ru.zdevs.zarchiver.b bVar = zSelectFile.f1480f;
        synchronized (bVar.f1651a) {
            bVar.f1665o = str;
            bVar.f1666p = strArr;
            bVar.f1664n = 0;
            bVar.f1668r = new i(0);
            bVar.f1656f |= 1;
        }
        zSelectFile.f1484j.k(zSelectFile.f1480f, zSelectFile.f1481g, 0, 0);
        if (z2) {
            return;
        }
        w0.a aVar = zSelectFile.f270c;
        aVar.f(13, 0, 0);
        new t0(zSelectFile.f1480f, str, strArr).g(zSelectFile, aVar);
    }

    public final void A(boolean z2, boolean z3) {
        this.f270c.f(13, 0, 0);
        ru.zdevs.zarchiver.b bVar = this.f1480f;
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
        ExSearchView exSearchView = this.f1486l;
        if (exSearchView != null) {
            exSearchView.b();
        }
        if (z3) {
            this.f1484j.k(this.f1480f, this.f1481g, 0, 0);
        }
    }

    public final void B(boolean z2) {
        String strB;
        String str;
        long j2 = this.f1480f.f1660j;
        if (j2 == -2 || !z2) {
            strB = getString(R.string.FINFO_SIZE) + " ...";
        } else if (j2 == -1) {
            strB = getString(R.string.FINFO_SIZE) + " ---";
        } else {
            strB = v0.h.b(j2, 1, getString(R.string.FINFO_SIZE));
        }
        String str2 = strB;
        w0.a aVar = this.f270c;
        if (z2 && this.f1480f.f1662l == -1) {
            aVar.f(4, 0, 0);
            new f0(this.f1480f.f1653c, 0).g(this, aVar);
        }
        if (!z2 || this.f1480f.f1662l == -1) {
            str = getString(R.string.FINFO_FREE_SPACE) + " ...";
        } else {
            str = getString(R.string.FINFO_FREE_SPACE) + " " + v0.h.b(this.f1480f.f1661k, 1, null) + "/\n" + v0.h.b(this.f1480f.f1662l, 1, null);
        }
        String str3 = getString(R.string.FINFO_TYPE) + ' ' + getString(R.string.FINFO_TYPE_FOLDER);
        o(str3, str, getString(R.string.FINFO_TYPE_FOLDER) + ": " + this.f1480f.f1653c.e(), str2, 0L, 0L);
        if (z2) {
            FilePanelView filePanelView = this.f1484j;
            if (filePanelView.f1753d != null) {
                ru.zdevs.zarchiver.b bVar = this.f1480f;
                filePanelView.setTag(bVar.f1660j != -2 ? bVar.f1651a : null);
            } else if (this.f1480f.f1660j == -2) {
                aVar.f(3, 0, 0);
                new i0(this.f1480f.f1653c, 0).g(this, aVar);
            }
        }
    }

    @Override
    public final void b(w0.a.b bVar) {
        String strB;
        int iA = bVar.a();
        if (iA == 4) {
            z zVar = (z) bVar;
            String str = zVar.f147a;
            if (str != null) {
                ZApp.j(str);
                return;
            } else {
                ZApp.i(zVar.f148b);
                return;
            }
        }
        if (iA == 13) {
            ListView listView = (ListView) findViewById(R.id.lvFavorite);
            if (listView != null) {
                listView.setAdapter((ListAdapter) new c0.d(this, true, false));
                return;
            }
            return;
        }
        try {
            if (iA == 6) {
                o oVar = (o) bVar;
                ru.zdevs.zarchiver.b bVar2 = this.f1480f;
                h0.e.a aVar = oVar.f77b;
                bVar2.f1661k = aVar.f1085a;
                bVar2.f1662l = aVar.f1086b;
                String str2 = getString(R.string.FINFO_FREE_SPACE) + " " + v0.h.b(oVar.f77b.f1085a, 1, null) + "/\n" + v0.h.b(oVar.f77b.f1086b, 1, null);
                h0.e.a aVar2 = oVar.f77b;
                long j2 = aVar2.f1086b;
                p(str2, j2 - aVar2.f1085a, j2);
                return;
            }
            if (iA == 7) {
                q qVar = (q) bVar;
                this.f1480f.f1660j = qVar.f95b;
                TextView textView = (TextView) findViewById(R.id.tvFolderSize);
                if (textView != null) {
                    long j3 = qVar.f95b;
                    if (j3 != -1) {
                        strB = v0.h.b(j3, 1, getString(R.string.FINFO_SIZE));
                    } else {
                        strB = getString(R.string.FINFO_SIZE) + " ---";
                    }
                    textView.setText(strB);
                    return;
                }
                return;
            }
            if (iA != 8) {
                if (iA == 17) {
                    int i2 = ((w) bVar).f133b;
                    if (i2 == 100) {
                        t();
                        return;
                    } else {
                        s((i2 * 10000) / 100);
                        return;
                    }
                }
                if (iA != 18) {
                    return;
                }
                v vVar = (v) bVar;
                h hVarB = this.f1484j.b(vVar.f124a);
                if (hVarB == null || hVarB.c() != R.layout.item_file_search) {
                    return;
                }
                hVarB.f560h.a(vVar.f125b);
                hVarB.notifyDataSetChanged();
                return;
            }
            p pVar = (p) bVar;
            View view = this.f1484j.f1754e;
            if (view != null) {
                view.setVisibility(8);
            }
            if (pVar.f86h == null) {
                return;
            }
            if (this.f1480f.i()) {
                A(false, false);
            }
            synchronized (this.f1480f.f1651a) {
                this.f1480f.f1667q = pVar.f86h;
            }
            if (a0.c.L(pVar.f81c, 768)) {
                new e0(pVar.f80b, pVar.f86h, pVar.f81c, this.f1480f.f1652b).g(this, this.f270c);
            }
            this.f1480f.l(pVar.f80b, pVar.f88j, pVar.f84f);
            this.f1484j.k(this.f1480f, this.f1481g, pVar.f82d, pVar.f81c);
            B(true);
        } catch (Exception unused) {
        }
    }

    @Override
    public final void c(int i2) {
        g gVar;
        h listAdapter;
        if (i2 != 0 || (gVar = this.f1481g) == null || !gVar.f1399g || (listAdapter = this.f1484j.getListAdapter()) == null) {
            return;
        }
        listAdapter.n(this.f1484j.getListPosition(), this.f1484j.getListMaxVisibleItemCount());
    }

    @Override
    public final void d(int i2, int i3, boolean z2) {
        FloatingActionMenu floatingActionMenu = this.f1487m;
        if (floatingActionMenu != null) {
            if (i3 == 1 || i3 == 0) {
                floatingActionMenu.setVisibility(i3 == 0 ? 8 : 0);
            }
        }
    }

    @Override
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        String strE;
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (this.f1480f.i() ? false : this.f1480f.h()) {
            setResult(0, null);
            i();
        } else {
            if (this.f1480f.i()) {
                strE = null;
            } else {
                h0.h hVar = this.f1480f.f1653c;
                strE = hVar.e();
                hVar.c();
            }
            y(strE, null, false);
        }
        return true;
    }

    @Override
    public final void g() {
        if (this.f1484j.getTag() != null) {
            return;
        }
        h0.h hVar = this.f1480f.f1653c;
        this.f1484j.setTag(hVar);
        TextView textView = (TextView) findViewById(R.id.tvFolderSize);
        if (textView == null) {
            return;
        }
        textView.setText(getString(R.string.FINFO_SIZE) + " ...");
        w0.a aVar = this.f270c;
        aVar.f(3, 0, 0);
        new i0(hVar, 0).g(this, aVar);
    }

    @Override
    public final void h(int i2) {
        g gVar = this.f1481g;
        if (gVar != null) {
            gVar.c(0);
        }
        if (this.f1480f.i()) {
            return;
        }
        y(null, null, true);
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) throws Throwable {
        super.onConfigurationChanged(configuration);
        int iK = k(configuration);
        if (iK == this.f1483i) {
            return;
        }
        this.f1483i = iK;
        w0.a aVar = this.f270c;
        aVar.d(this);
        int iC = this.f1484j.c(0);
        h hVarB = this.f1484j.b(0);
        z0.e.e(this);
        w(this.f1483i);
        x();
        invalidateOptionsMenu();
        b0.c.r(this.f1485k, this.f1480f.f1653c.f1108c);
        B(true);
        this.f1484j.h(0, hVarB, false, false);
        if (iC > 0) {
            this.f1484j.j(0, iC);
        }
        this.f1484j.setMessage(this.f1480f.e());
        aVar.a(this, this);
    }

    @Override
    public final void onCreate(Bundle bundle) throws Throwable {
        int i2;
        t0.b.m(this, false, null);
        Configuration configuration = getResources().getConfiguration();
        z0.e.g(this);
        z0.e.o(this, configuration.orientation == 1 && !v0.b.d(configuration));
        z0.e.k(this, t0.b.f2084e);
        super.onCreate(bundle);
        int iK = k(getResources().getConfiguration());
        this.f1483i = iK;
        w(iK);
        ru.zdevs.zarchiver.b bVar = new ru.zdevs.zarchiver.b(0);
        this.f1480f = bVar;
        int i3 = t0.b.f2089j;
        int i4 = i3 & 3840;
        if (i4 != 512) {
            i2 = i4 != 768 ? R.layout.item_file_detail : R.layout.item_file_grid;
        } else {
            i2 = R.layout.item_file_compact;
        }
        bVar.f1657g = i2;
        bVar.f1658h = i3 & 248;
        bVar.f1659i = t0.b.g(4);
        v0.h.d(this);
        z0.b.f(this, t0.b.d(), this.f1480f.f1657g == R.layout.item_file_grid);
        Intent intent = getIntent();
        if (intent == null || intent.getAction() == null || !(intent.getAction().equals("android.intent.action.GET_CONTENT") || intent.getAction().equals("android.intent.action.OPEN_DOCUMENT"))) {
            setResult(0, null);
            i();
            return;
        }
        this.f1482h = Build.VERSION.SDK_INT >= 18 && intent.getBooleanExtra("android.intent.extra.ALLOW_MULTIPLE", false);
        x();
        y(null, null, false);
        startActionMode(new b());
        z0.e.f(this, z0.c.f(this, R.attr.menuIconCancel), android.R.string.cancel);
    }

    @Override
    public final boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        h0.h hVar;
        d0.d dVar;
        synchronized (this.f1480f.f1651a) {
            if (this.f1480f.i()) {
                if (i2 < 0 || i2 >= this.f1480f.f1668r.size()) {
                    return;
                }
                f fVarJ = this.f1480f.f1668r.j(i2);
                hVar = fVarJ.f552k;
                dVar = fVarJ;
            } else {
                if (i2 < 0 || i2 >= this.f1480f.f1667q.size()) {
                    return;
                }
                d0.d dVarB = this.f1480f.f1667q.b(i2);
                hVar = new h0.h(this.f1480f.f1653c);
                dVar = dVarB;
            }
            boolean z2 = true;
            if (!dVar.f()) {
                z(new int[]{i2});
                return;
            }
            if (dVar.g()) {
                String str = dVar.f540b;
                if (hVar.c()) {
                    hVar.f1109d = str;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    return;
                }
            } else {
                String str2 = dVar.f539a;
                String str3 = dVar.f540b;
                hVar.a(str2);
                hVar.f1109d = str3;
            }
            y(null, hVar, false);
        }
    }

    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 82) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        String strE;
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            if (this.f1480f.i()) {
                strE = null;
            } else {
                h0.h hVar = this.f1480f.f1653c;
                strE = hVar.e();
                hVar.c();
            }
            y(strE, null, false);
            return true;
        }
        if (itemId == R.id.bMenuViewMode) {
            ru.zdevs.zarchiver.b bVar = this.f1480f;
            f1.b bVar2 = new f1.b(this, bVar.f1657g, bVar.f1659i, bVar.f1658h);
            bVar2.a(getWindow(), findViewById(R.id.bMenuViewMode));
            bVar2.f789h = new a();
            return true;
        }
        if (itemId == R.id.bSettings) {
            h1.h.e(this, new Intent(this, (Class<?>) SettingsDlg.class));
            return true;
        }
        if (itemId == R.id.bAbout) {
            h1.h.e(this, new Intent(this, (Class<?>) AboutDlg.class));
            return true;
        }
        if (itemId != R.id.bExit) {
            return super.onOptionsItemSelected(menuItem);
        }
        setResult(0, null);
        i();
        return true;
    }

    @Override
    public final void onStart() {
        super.onStart();
        new x0(4, null).g(this, this.f270c);
        if ((t0.b.f2089j & 4128768) != 0) {
            if (this.f1481g == null) {
                this.f1481g = new g(this);
            }
            this.f1481g.d(this, t0.b.f2090k);
        }
    }

    @Override
    public final void onStop() {
        super.onStop();
        g gVar = this.f1481g;
        if (gVar != null) {
            gVar.e(this.f1484j.getListMaxVisibleItemCount() * 2);
        }
        this.f270c.f(1000, 1, -1);
    }

    public final Uri v(int i2) {
        h0.h hVar;
        d0.d dVar;
        synchronized (this.f1480f.f1651a) {
            if (this.f1480f.i()) {
                if (i2 < 0 || i2 >= this.f1480f.f1668r.size()) {
                    return null;
                }
                f fVarJ = this.f1480f.f1668r.j(i2);
                hVar = new h0.h(fVarJ.f552k);
                dVar = fVarJ;
            } else {
                if (i2 < 0 || i2 >= this.f1480f.f1667q.size()) {
                    return null;
                }
                d0.d dVarB = this.f1480f.f1667q.b(i2);
                hVar = new h0.h(this.f1480f.f1653c);
                dVar = dVarB;
            }
            String str = dVar.f539a;
            String str2 = dVar.f540b;
            hVar.a(str);
            hVar.f1109d = str2;
            return v0.e.b(this, hVar, 0L, null);
        }
    }

    public final void w(int i2) {
        setContentView(i2);
        FilePanelView filePanelView = (FilePanelView) findViewById(R.id.fp);
        this.f1484j = filePanelView;
        filePanelView.setOnListRefreshListener(this);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            ImageView imageView = new ImageView(this);
            imageView.setImageResource(R.drawable.ic_refresh);
            this.f1484j.setCircleView(imageView);
        }
        boolean z2 = i2 == R.layout.dlg_main_list_tv;
        ActionBar actionBar = getActionBar();
        if (actionBar == null || z2) {
            this.f1485k = null;
            this.f1486l = null;
        } else {
            actionBar.setCustomView(R.layout.ctm_navigate);
            View customView = actionBar.getCustomView();
            this.f1485k = customView;
            ExSearchView exSearchView = (ExSearchView) customView.findViewById(R.id.svSearch);
            this.f1486l = exSearchView;
            if (exSearchView != null) {
                exSearchView.getContext().setTheme(t0.b.c());
            }
        }
        if (z2) {
            this.f1485k = findViewById(R.id.rlTitle);
            q(actionBar);
        }
        if (findViewById(R.id.tvStorage) == null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(this).inflate(R.layout.extend_info, (ViewGroup) this.f1484j, false);
            constraintLayout.setBackgroundColor(z0.c.c(this, android.R.attr.colorBackground));
            if (i3 >= 21) {
                constraintLayout.setElevation(25.0f);
            }
            this.f1484j.setExtendView(constraintLayout);
            this.f1484j.setOnExtendShowListener(this);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
        if (progressBar != null) {
            z0.e.n(this, progressBar, -3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:49:0x0105  */
    /* JADX WARN: Code duplicated, block: B:51:0x010a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x010c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0115  */
    /* JADX WARN: Code duplicated, block: B:55:0x011a  */
    /* JADX WARN: Code duplicated, block: B:59:0x013e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0144  */
    /* JADX WARN: Code duplicated, block: B:63:0x0154  */
    /* JADX WARN: Code duplicated, block: B:66:0x0174  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    public final void x() throws Throwable {
        int iC;
        ImageView imageView;
        ListView listView;
        FloatingActionMenu floatingActionMenu;
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowCustomEnabled(true);
            actionBar.setDisplayShowTitleEnabled(false);
        }
        ExSearchView exSearchView = this.f1486l;
        Drawable drawable = null;
        if (exSearchView != null) {
            exSearchView.setVisibility(v0.b.i(this) ? 8 : 0);
            View viewFindViewById = this.f1486l.findViewById(this.f1486l.getContext().getResources().getIdentifier("android:id/search_button", null, null));
            if (viewFindViewById instanceof ImageView) {
                ((ImageView) viewFindViewById).setImageDrawable(z0.c.f(this, R.attr.menuIconSearch));
            }
            this.f1486l.setOnCloseListener(new y0(this));
            this.f1486l.setOnSearchClickListener(new z0(this));
            this.f1486l.setOnQueryListener(new a1(this));
        }
        View viewFindViewById2 = this.f1485k.findViewById(R.id.rlNavigation);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new b1(this));
        }
        int i2 = t0.b.f2083d & 983040;
        if (i2 == 65536) {
            try {
                drawable = WallpaperManager.getInstance(this).getDrawable();
            } catch (Exception e2) {
                e2.printStackTrace();
                ZApp.j("Error on get the wallpaper");
            }
        } else if (i2 == 131072) {
            drawable = z0.c.f(this, R.attr.backgroundColorFileList);
        } else {
            if (i2 != 262144) {
                if (((t0.b.f2087h & 255) > 1 && Build.VERSION.SDK_INT < 21) || t0.b.k(1024)) {
                    iC = z0.c.c(this, R.attr.backgroundColorFileList);
                }
                imageView = (ImageView) findViewById(R.id.ivParent);
                if (drawable instanceof BitmapDrawable) {
                    imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    if (i2 == 65536) {
                        imageView.setAlpha(0.7f);
                    }
                    this.f1484j.setCacheEnabled(false);
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
                    this.f1484j.setCacheEnabled(true);
                }
                this.f1484j.setFastScrollEnabled(t0.b.l(32768));
                this.f1484j.setOnItemClickListener(this);
                if (this.f1482h) {
                    this.f1484j.setOnItemSelectChanged(this);
                } else {
                    this.f1484j.setSelectByIcon(false);
                }
                listView = (ListView) findViewById(R.id.lvFavorite);
                if (listView != null) {
                    listView.setAdapter((ListAdapter) new c0.d(this, true, false));
                    z0.e.l(listView);
                    listView.setOnItemClickListener(new c1(this));
                }
                floatingActionMenu = (FloatingActionMenu) findViewById(R.id.ibAction);
                this.f1487m = floatingActionMenu;
                if (floatingActionMenu != null) {
                    floatingActionMenu.setVisibility(8);
                    this.f1487m.setMenuButtonImageResource(R.drawable.l_done);
                    this.f1487m.setTransparent(t0.b.l(16));
                    this.f1487m.setAnimated(t0.b.l(32));
                    this.f1487m.setClosedOnTouchOutside(true);
                    this.f1487m.setOnMenuButtonClickListener(new d1(this));
                    this.f1487m.setOnMenuToggleListener(new e1(this));
                }
            }
            try {
                String string = PreferenceManager.getDefaultSharedPreferences(this).getString("iGUICustomBGPath", null);
                if (string != null) {
                    drawable = Drawable.createFromPath(string);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                ZApp.j("Error on the loading the background image");
            }
        }
        iC = 0;
        imageView = (ImageView) findViewById(R.id.ivParent);
        if (drawable instanceof BitmapDrawable) {
            imageView.setImageBitmap(((BitmapDrawable) drawable).getBitmap());
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (i2 == 65536) {
                imageView.setAlpha(0.7f);
            }
            this.f1484j.setCacheEnabled(false);
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
            this.f1484j.setCacheEnabled(true);
        }
        this.f1484j.setFastScrollEnabled(t0.b.l(32768));
        this.f1484j.setOnItemClickListener(this);
        if (this.f1482h) {
            this.f1484j.setOnItemSelectChanged(this);
        } else {
            this.f1484j.setSelectByIcon(false);
        }
        listView = (ListView) findViewById(R.id.lvFavorite);
        if (listView != null) {
            listView.setAdapter((ListAdapter) new c0.d(this, true, false));
            z0.e.l(listView);
            listView.setOnItemClickListener(new c1(this));
        }
        floatingActionMenu = (FloatingActionMenu) findViewById(R.id.ibAction);
        this.f1487m = floatingActionMenu;
        if (floatingActionMenu != null) {
            floatingActionMenu.setVisibility(8);
            this.f1487m.setMenuButtonImageResource(R.drawable.l_done);
            this.f1487m.setTransparent(t0.b.l(16));
            this.f1487m.setAnimated(t0.b.l(32));
            this.f1487m.setClosedOnTouchOutside(true);
            this.f1487m.setOnMenuButtonClickListener(new d1(this));
            this.f1487m.setOnMenuToggleListener(new e1(this));
        }
    }

    public final void y(String str, h0.h hVar, boolean z2) {
        w0.a aVar = this.f270c;
        aVar.f(10, 1, 0);
        if (this.f1480f.i()) {
            A(true, false);
        }
        if (hVar != null) {
            this.f1480f.l(hVar, (byte) 0, 0);
        }
        b0.c.r(this.f1485k, this.f1480f.f1653c.f1108c);
        if (!(this.f1484j.f1753d != null)) {
            B(false);
        }
        int listPosition = z2 ? this.f1484j.getListPosition() : -1;
        int i2 = this.f1480f.f1659i ? 32 : 0;
        Point listSize = str != null ? this.f1484j.getListSize() : null;
        ru.zdevs.zarchiver.b bVar = this.f1480f;
        new j0(bVar, bVar.f1653c, hVar == null, str, listPosition, i2, listSize, null).g(null, aVar);
    }

    public final void z(int[] iArr) {
        boolean z2;
        Intent intent = new Intent();
        if (iArr.length == 1) {
            Uri uriV = v(iArr[0]);
            if (uriV == null) {
                return;
            }
            z2 = !"file".equals(uriV.getScheme());
            intent.setData(uriV);
            if (Build.VERSION.SDK_INT >= 18) {
                intent.setClipData(ClipData.newRawUri(null, uriV));
            }
        } else {
            if (Build.VERSION.SDK_INT < 18 || iArr.length <= 1) {
                return;
            }
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(iArr.length);
            boolean z3 = false;
            for (int i2 : iArr) {
                Uri uriV2 = v(i2);
                if (uriV2 != null) {
                    arrayList.add(uriV2);
                    if (!"file".equals(uriV2.getScheme())) {
                        z3 = true;
                    }
                }
            }
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            ClipData clipData = new ClipData(null, new String[]{"*/*"}, new ClipData.Item((Uri) arrayList.get(0)));
            int size = arrayList.size();
            for (int i3 = 1; i3 < size; i3++) {
                clipData.addItem(new ClipData.Item((Uri) arrayList.get(i3)));
            }
            intent.setClipData(clipData);
            z2 = z3;
        }
        if (z2) {
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 18) {
                intent.addFlags(3);
            }
            if (i4 >= 19) {
                intent.addFlags(64);
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            v0.e.g();
        }
        setResult(-1, intent);
        i();
    }
}
