package ru.zdevs.zarchiver;

import a0.f1;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import android.widget.SearchView;
import android.widget.TextView;
import g0.v;
import g0.w;
import g0.y;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import ru.zdevs.zarchiver.io.SAF;
import ru.zdevs.zarchiver.ui.editor.EditableView;

public class ZTextEditor extends Activity implements w0.a.c, EditableView.f {

    public static final int[] f1490h = {R.id.bFontSerif, R.id.bFontSansSerif, R.id.bFontMono, R.id.bFontLight, R.id.bFontCondensed};

    public static final int[] f1491i = {12, 14, 16, 18, 20, 24, 28};

    public static final int[] f1492j = {R.id.bFontSize12, R.id.bFontSize14, R.id.bFontSize16, R.id.bFontSize18, R.id.bFontSize20, R.id.bFontSize24, R.id.bFontSize28};

    public static final String[] f1493k = {"BIG5", "EUC-JP", "EUC-KR", "EUC-TW", "GB18030", "IBM855", "IBM866", "ISO-2022-JP", "ISO-2022-CN", "ISO-2022-KR", "ISO-8859-5", "ISO-8859-7", "ISO-8859-8", "KOI8-R", "MACCYRILLIC", "SHIFT_JIS", "TIS620", "US-ASCII", "UTF-8", "UTF-16BE", "UTF-16LE", "UTF-32BE", "UTF-32LE", "WINDOWS-1250", "WINDOWS-1251", "WINDOWS-1252", "WINDOWS-1253", "WINDOWS-1254", "WINDOWS-1255", "WINDOWS-1256", "WINDOWS-1257", "WINDOWS-1258"};

    public static final String[] f1494l = {"Bash", "C / CPP", "C#", "Config", "CSS", "Go", "Java", "JavaScript", "PHP", "Python", "Ruby", "Rust", "XML"};

    public static final int[] f1495m = {10, 1, 4, 12, 13, 5, 2, 6, 7, 8, 9, 3, 11};

    public EditableView f1496a;

    public y f1497b;

    public SearchView f1498c;

    public boolean f1499d;

    public String f1500e;

    public p f1501f;

    public final w0.a f1502g = new w0.a();

    public class a implements Runnable {

        public final p f1503a;

        public a(p pVar) {
            this.f1503a = pVar;
        }

        @Override
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1501f = this.f1503a;
            zTextEditor.f1496a.l();
            ZTextEditor.c(zTextEditor);
        }
    }

    public class b implements SearchView.OnCloseListener {

        public final ActionBar f1505a;

        public b(ActionBar actionBar) {
            this.f1505a = actionBar;
        }

        @Override
        public final boolean onClose() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1498c = null;
            ActionBar actionBar = this.f1505a;
            actionBar.setCustomView((View) null);
            actionBar.setDisplayShowCustomEnabled(false);
            zTextEditor.invalidateOptionsMenu();
            return true;
        }
    }

    public class c implements SearchView.OnQueryTextListener {
        public c() {
        }

        @Override
        public final boolean onQueryTextChange(String str) {
            ZTextEditor.this.f1498c.setBackgroundColor(0);
            return false;
        }

        @Override
        public final boolean onQueryTextSubmit(String str) {
            int[] iArr = ZTextEditor.f1490h;
            ZTextEditor.this.i();
            return true;
        }
    }

    public class d implements g0.i.c {
        public d() {
        }

        @Override
        public final void b(g0.i iVar) {
            ZTextEditor.this.f1502g.f(2, 0, -1);
        }
    }

    public class e implements g0.i.d {
        public e() {
        }

        @Override
        public final boolean a(g0.i iVar) {
            int[] iArr = ZTextEditor.f1490h;
            ZTextEditor.this.e(true);
            return true;
        }
    }

    public class f implements g0.i.c {
        public f() {
        }

        @Override
        public final void b(g0.i iVar) {
            ZTextEditor.this.finish();
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public final void onClick(View view) {
            int[] iArr = ZTextEditor.f1490h;
            ZTextEditor.this.d();
        }
    }

    public class h implements View.OnClickListener {

        public class a implements PopupMenu.OnMenuItemClickListener {
            public a() {
            }

            @Override
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return ZTextEditor.this.onOptionsItemSelected(menuItem);
            }
        }

        public h() {
        }

        @Override
        public final void onClick(View view) {
            ZTextEditor zTextEditor = ZTextEditor.this;
            PopupMenu popupMenu = new PopupMenu(zTextEditor, view);
            Menu menu = popupMenu.getMenu();
            zTextEditor.onCreateOptionsMenu(menu);
            menu.findItem(R.id.bSearch).setVisible(false);
            popupMenu.setOnMenuItemClickListener(new a());
            popupMenu.show();
        }
    }

    public class i implements Runnable {

        public final int f1514a;

        public i(int i2) {
            this.f1514a = i2;
        }

        @Override
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1496a.setFont(this.f1514a);
            ZTextEditor.c(zTextEditor);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1496a.setFontSize(t0.b.f2094o);
            ZTextEditor.c(zTextEditor);
        }
    }

    public class k implements Runnable {

        public final boolean f1517a;

        public k(boolean z2) {
            this.f1517a = z2;
        }

        @Override
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1496a.setWordWrap(this.f1517a);
            ZTextEditor.c(zTextEditor);
        }
    }

    public class l implements Runnable {

        public final boolean f1519a;

        public l(boolean z2) {
            this.f1519a = z2;
        }

        @Override
        public final void run() {
            ZTextEditor zTextEditor = ZTextEditor.this;
            zTextEditor.f1496a.setLineNumber(this.f1519a);
            ZTextEditor.c(zTextEditor);
        }
    }

    public class m implements g0.i.d {

        public final v f1521a;

        public final String f1522b;

        public m(v vVar, String str) {
            this.f1521a = vVar;
            this.f1522b = str;
        }

        @Override
        public final boolean a(g0.i iVar) {
            int i2 = this.f1521a.f1050j;
            String str = i2 < 0 ? null : ZTextEditor.f1493k[i2];
            if (Objects.equals(this.f1522b, str)) {
                return false;
            }
            ZTextEditor zTextEditor = ZTextEditor.this;
            p pVar = zTextEditor.f1501f;
            if (pVar != null) {
                zTextEditor.g(true);
                new q(pVar.f1531c, zTextEditor.f1501f.f1532d, str, zTextEditor.f1496a.getEditable()).g(zTextEditor, zTextEditor.f1502g);
            }
            return true;
        }
    }

    public class n implements g0.i.d {

        public final v f1524a;

        public class a implements Runnable {

            public final int f1526a;

            public a(int i2) {
                this.f1526a = i2;
            }

            @Override
            public final void run() {
                n nVar = n.this;
                ZTextEditor.this.f1496a.setSyntax(this.f1526a);
                ZTextEditor.c(ZTextEditor.this);
            }
        }

        public n(v vVar) {
            this.f1524a = vVar;
        }

        @Override
        public final boolean a(g0.i iVar) {
            int i2 = this.f1524a.f1050j;
            if (i2 < 0) {
                ZApp.i(R.string.FREE_LIMIT_HELP);
                return true;
            }
            int[] iArr = ZTextEditor.f1490h;
            ZTextEditor.this.g(true);
            w0.c.h(new a(i2));
            return true;
        }
    }

    public static class o implements w0.a.b {

        public final String f1528a;

        public o(String str) {
            this.f1528a = str;
        }

        @Override
        public final int a() {
            return 2;
        }
    }

    public static class q extends w0.c {

        public final Uri f1533e;

        public final String f1534f;

        public final String f1535g;

        public final ru.zdevs.zarchiver.ui.editor.b f1536h;

        public q(Uri uri, String str, String str2, ru.zdevs.zarchiver.ui.editor.b bVar) {
            this.f1533e = uri;
            this.f1534f = str;
            this.f1535g = str2;
            this.f1536h = bVar;
        }

        @Override
        public final w0.a.b f() {
            String name;
            InputStream inputStreamOpenInputStream;
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f1536h;
            Uri uri = this.f1533e;
            try {
                try {
                    if ("file".equals(uri.getScheme())) {
                        String path = uri.getPath();
                        File file = new File(path);
                        if (file.length() > 10485760) {
                            throw new IOException("File size is too large (> 10MB)");
                        }
                        name = file.getName();
                        inputStreamOpenInputStream = (file.canRead() || !t0.b.i(path)) ? new FileInputStream(file) : n0.f.a(t0.b.f2092m, file.getAbsolutePath());
                    } else {
                        SAF.a aVarF = SAF.f(uri);
                        if (aVarF != null && aVarF.f1701d > 10485760) {
                            throw new IOException("File size is too large (> 10MB)");
                        }
                        name = aVarF != null ? aVarF.f1698a : "";
                        inputStreamOpenInputStream = ZApp.a().openInputStream(uri);
                    }
                    bVar.clear();
                    boolean z2 = (t0.b.f2093n & 64) == 64;
                    String str = this.f1534f;
                    if (z2) {
                        bVar.p(d1.b.b(name, str));
                    }
                    p pVar = new p(name, n0.e.m(inputStreamOpenInputStream, bVar, this.f1535g, this), uri, str);
                    n0.e.d(inputStreamOpenInputStream);
                    return pVar;
                } catch (Exception e2) {
                    o oVar = new o("Failed to load file: " + e2.getMessage());
                    n0.e.d(null);
                    return oVar;
                }
            } catch (Throwable th) {
                n0.e.d(null);
                throw th;
            }
        }

        @Override
        public final int j() {
            return 1;
        }
    }

    public static class r implements w0.a.b {

        public final boolean f1537a;

        public r(boolean z2) {
            this.f1537a = z2;
        }

        @Override
        public final int a() {
            return 3;
        }
    }

    public static class s extends w0.c {

        public final WeakReference<Context> f1538e;

        public final Uri f1539f;

        public final n0.e.a f1540g;

        public final CharSequence f1541h;

        public final boolean f1542i;

        public long f1543j = 0;

        public s(Context context, Uri uri, n0.e.a aVar, ru.zdevs.zarchiver.ui.editor.b bVar, boolean z2) {
            this.f1538e = new WeakReference<>(context);
            this.f1539f = uri;
            this.f1540g = aVar;
            this.f1541h = bVar;
            this.f1542i = z2;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0059 A[Catch: all -> 0x0092, Exception -> 0x0094, TryCatch #1 {Exception -> 0x0094, blocks: (B:3:0x0005, B:6:0x001d, B:23:0x0059, B:25:0x0061, B:26:0x0065, B:29:0x0079, B:31:0x0084, B:32:0x0087, B:8:0x0027, B:10:0x002f, B:18:0x0047, B:21:0x0052, B:19:0x004c), top: B:44:0x0005, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:25:0x0061 A[Catch: all -> 0x0092, Exception -> 0x0094, TryCatch #1 {Exception -> 0x0094, blocks: (B:3:0x0005, B:6:0x001d, B:23:0x0059, B:25:0x0061, B:26:0x0065, B:29:0x0079, B:31:0x0084, B:32:0x0087, B:8:0x0027, B:10:0x002f, B:18:0x0047, B:21:0x0052, B:19:0x004c), top: B:44:0x0005, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:29:0x0079 A[Catch: all -> 0x0092, Exception -> 0x0094, TRY_ENTER, TryCatch #1 {Exception -> 0x0094, blocks: (B:3:0x0005, B:6:0x001d, B:23:0x0059, B:25:0x0061, B:26:0x0065, B:29:0x0079, B:31:0x0084, B:32:0x0087, B:8:0x0027, B:10:0x002f, B:18:0x0047, B:21:0x0052, B:19:0x004c), top: B:44:0x0005, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:31:0x0084 A[Catch: all -> 0x0092, Exception -> 0x0094, TryCatch #1 {Exception -> 0x0094, blocks: (B:3:0x0005, B:6:0x001d, B:23:0x0059, B:25:0x0061, B:26:0x0065, B:29:0x0079, B:31:0x0084, B:32:0x0087, B:8:0x0027, B:10:0x002f, B:18:0x0047, B:21:0x0052, B:19:0x004c), top: B:44:0x0005, outer: #0 }] */
        @Override
        public final w0.a.b f() {
            OutputStream outputStreamM;
            Context contextE;
            Uri uri = this.f1539f;
            OutputStream outputStreamOpenOutputStream = null;
            try {
                try {
                    boolean zEquals = "ru.zdevs.zarchiver.external".equals(uri.getAuthority());
                    boolean zEquals2 = "file".equals(uri.getScheme());
                    WeakReference<Context> weakReference = this.f1538e;
                    if (!zEquals2) {
                        Context context = weakReference.get();
                        if (context == null) {
                            return new o("Context is null");
                        }
                        if (!zEquals) {
                            try {
                                outputStreamOpenOutputStream = ZApp.a().openOutputStream(uri);
                            } catch (Exception unused) {
                            }
                        }
                        if (outputStreamOpenOutputStream == null) {
                            String path = zEquals ? uri.getPath() : v0.f.f(context, uri);
                            if (path != null) {
                                outputStreamM = m(path);
                            }
                        }
                        if (outputStreamOpenOutputStream == null) {
                            contextE = weakReference.get();
                            if (contextE == null) {
                                contextE = ZApp.e();
                            }
                            o oVar = new o(contextE.getResources().getString(R.string.MES_ACCESS_DENIED));
                            n0.e.d(outputStreamOpenOutputStream);
                            return oVar;
                        }
                        n0.e.q(outputStreamOpenOutputStream, this.f1541h, this.f1540g, this.f1543j);
                        if (zEquals) {
                            outputStreamOpenOutputStream.close();
                        }
                        r rVar = new r(this.f1542i);
                        n0.e.d(outputStreamOpenOutputStream);
                        return rVar;
                    }
                    outputStreamM = m(uri.getPath());
                    outputStreamOpenOutputStream = outputStreamM;
                    if (outputStreamOpenOutputStream == null) {
                        contextE = weakReference.get();
                        if (contextE == null) {
                            contextE = ZApp.e();
                        }
                        o oVar2 = new o(contextE.getResources().getString(R.string.MES_ACCESS_DENIED));
                        n0.e.d(outputStreamOpenOutputStream);
                        return oVar2;
                    }
                    n0.e.q(outputStreamOpenOutputStream, this.f1541h, this.f1540g, this.f1543j);
                    if (zEquals) {
                        outputStreamOpenOutputStream.close();
                    }
                    r rVar2 = new r(this.f1542i);
                    n0.e.d(outputStreamOpenOutputStream);
                    return rVar2;
                } catch (Exception e2) {
                    o oVar3 = new o("Failed to save file: " + e2.getMessage());
                    n0.e.d(null);
                    return oVar3;
                }
            } catch (Throwable th) {
                n0.e.d(null);
                throw th;
            }
        }

        @Override
        public final int j() {
            return 2;
        }

        public final OutputStream m(String str) throws FileNotFoundException {
            String localizedMessage;
            OutputStream outputStreamA = null;
            try {
                h0.f fVarA = ZTextEditor.a(str);
                if (fVarA.d()) {
                    this.f1543j = fVarA.o();
                }
                OutputStream outputStreamX = fVarA.x(-1L);
                localizedMessage = null;
                outputStreamA = outputStreamX;
            } catch (Exception e2) {
                localizedMessage = e2.getLocalizedMessage();
            }
            if (outputStreamA == null && t0.b.j()) {
                try {
                    outputStreamA = o0.d.a(t0.b.f2092m, x0.d.n(str));
                } catch (Exception e3) {
                    localizedMessage = e3.getLocalizedMessage();
                }
            }
            if (outputStreamA != null || localizedMessage == null) {
                return outputStreamA;
            }
            throw new FileNotFoundException(localizedMessage);
        }
    }

    public static class t implements w0.a.b {

        public final int f1544a;

        public final int f1545b;

        public t(int i2, int i3) {
            this.f1544a = i2;
            this.f1545b = i3;
        }

        @Override
        public final int a() {
            return 4;
        }
    }

    public static class u extends w0.c {

        public final CharSequence f1546e;

        public final CharSequence f1547f;

        public final int f1548g;

        public u(CharSequence charSequence, ru.zdevs.zarchiver.ui.editor.b bVar, int i2) {
            this.f1546e = charSequence;
            this.f1547f = bVar;
            this.f1548g = i2;
        }

        @Override
        public final w0.a.b f() {
            CharSequence charSequence = this.f1546e;
            int length = charSequence.length();
            if (length == 0) {
                return null;
            }
            CharSequence charSequence2 = this.f1547f;
            int length2 = charSequence2.length();
            int i2 = this.f1548g;
            while (true) {
                int i3 = i2;
                while (true) {
                    if (i3 < length2) {
                        for (int i4 = 0; i4 < length && Character.toLowerCase(charSequence2.charAt(i3 + i4)) == Character.toLowerCase(charSequence.charAt(i4)); i4++) {
                            if (i4 == length - 1) {
                                return new t(i3, length);
                            }
                        }
                        i3++;
                    }
                }
                if (i2 <= 0) {
                    return new t(-1, 0);
                }
                length2 = i2;
                i2 = 0;
            }
        }

        @Override
        public final int j() {
            return 3;
        }
    }

    public static h0.f a(String str) {
        h0.h hVarM;
        String[] strArrA = x0.g.a(str);
        if (strArrA != null) {
            if (n0.i.b(strArrA)) {
                return h0.f.u(new h0.h(n0.i.a(str, strArrA[2])));
            }
            String strI = SAF.i(strArrA[2]);
            x0.d.a aVarJ = x0.d.j(strArrA[0]);
            if (aVarJ != null && aVarJ.d(strI) && (hVarM = SAF.m(aVarJ.a(), strI, true, false)) != null) {
                return h0.f.u(hVarM);
            }
        }
        return h0.f.u(new h0.h(str));
    }

    public static void c(ZTextEditor zTextEditor) {
        zTextEditor.getClass();
        zTextEditor.runOnUiThread(new f1(zTextEditor));
    }

    @Override
    public final void b(w0.a.b bVar) {
        int iA = bVar.a();
        if (iA == 1) {
            p pVar = (p) bVar;
            this.f1500e = pVar.f1529a;
            h(false);
            w0.c.h(new a(pVar));
            return;
        }
        if (iA == 2) {
            g(false);
            y yVar = this.f1497b;
            if (yVar != null) {
                yVar.e();
                this.f1497b = null;
            }
            ZApp.j(((o) bVar).f1528a);
            p pVar2 = this.f1501f;
            if (pVar2 == null || pVar2.f1530b == null) {
                finish();
                return;
            }
            return;
        }
        if (iA == 3) {
            r rVar = (r) bVar;
            y yVar2 = this.f1497b;
            if (yVar2 != null) {
                yVar2.e();
                this.f1497b = null;
            }
            ZApp.i(R.string.MES_FILE_SAVED);
            h(false);
            if (rVar.f1537a) {
                finish();
                return;
            }
            return;
        }
        if (iA == 4) {
            g(false);
            SearchView searchView = this.f1498c;
            if (searchView == null) {
                return;
            }
            t tVar = (t) bVar;
            int i2 = tVar.f1544a;
            if (i2 < 0) {
                searchView.setBackgroundColor(822018048);
                return;
            }
            EditableView editableView = this.f1496a;
            int i3 = tVar.f1545b + i2;
            editableView.requestFocus();
            editableView.s(i2, i3, -1);
        }
    }

    public final void d() {
        if (!this.f1499d) {
            finish();
            return;
        }
        w wVar = new w(6, this, getString(R.string.MES_QUESTION_SAVE), null);
        wVar.f961b = new e();
        wVar.f960a = new f();
        wVar.t();
    }

    @Override
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        SearchView searchView;
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1 || (searchView = this.f1498c) == null) {
            return super.dispatchKeyEvent(keyEvent);
        }
        searchView.setIconified(true);
        return true;
    }

    public final void e(boolean z2) {
        p pVar = this.f1501f;
        if (pVar == null) {
            return;
        }
        Uri uri = pVar.f1531c;
        n0.e.a aVar = pVar.f1530b;
        if (aVar == null) {
            return;
        }
        y yVar = new y(0, this, "", (ru.zdevs.zarchiver.d) null);
        this.f1497b = yVar;
        yVar.f960a = new d();
        yVar.t();
        new s(this, uri, aVar, this.f1496a.getEditable(), z2).g(this, this.f1502g);
    }

    public final boolean f() {
        SearchView searchView = this.f1498c;
        if (searchView != null) {
            searchView.requestFocus();
            return true;
        }
        ActionBar actionBar = getActionBar();
        if (actionBar == null) {
            return false;
        }
        SearchView searchView2 = new SearchView(this);
        this.f1498c = searchView2;
        searchView2.setIconifiedByDefault(true);
        this.f1498c.setIconified(false);
        this.f1498c.setOnCloseListener(new b(actionBar));
        this.f1498c.setOnQueryTextListener(new c());
        actionBar.setCustomView(this.f1498c);
        actionBar.setDisplayShowCustomEnabled(true);
        invalidateOptionsMenu();
        return true;
    }

    public final void g(boolean z2) {
        View viewFindViewById = findViewById(R.id.loadProgress);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z2 ? 0 : 8);
        }
        this.f1496a.setWillNotDraw(z2);
        this.f1496a.setEnabled(!z2);
    }

    @Override
    public final MenuInflater getMenuInflater() {
        return Build.VERSION.SDK_INT < 21 ? new f1.a(this) : super.getMenuInflater();
    }

    public final void h(boolean z2) {
        this.f1499d = z2;
        String str = this.f1500e;
        if (str != null) {
            if (z2) {
                str = "* " + this.f1500e;
            }
            View viewFindViewById = findViewById(R.id.nTitle);
            if (viewFindViewById != null) {
                ((TextView) viewFindViewById).setText(str);
                return;
            }
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setTitle(str);
            }
        }
    }

    public final void i() {
        SearchView searchView = this.f1498c;
        if (searchView == null) {
            return;
        }
        CharSequence query = searchView.getQuery();
        if (query.length() == 0) {
            return;
        }
        ru.zdevs.zarchiver.ui.editor.b editable = this.f1496a.getEditable();
        int selectionEnd = this.f1496a.getSelectionEnd();
        if (selectionEnd == -1) {
            selectionEnd = 0;
        }
        g(true);
        new u(query, editable, selectionEnd).g(this, this.f1502g);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        t0.b.m(this, false, null);
        z0.e.g(this);
        z0.e.k(this, t0.b.f2084e);
        z0.e.k(ZApp.f1434c, t0.b.f2084e);
        z0.e.o(this, false);
        super.onCreate(bundle);
        if (z0.e.d(this)) {
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.hide();
            }
            setContentView(R.layout.dlg_edit_base_tv);
            findViewById(R.id.bBack).setOnClickListener(new g());
            findViewById(R.id.bMenu).setOnClickListener(new h());
        } else {
            ActionBar actionBar2 = getActionBar();
            if (actionBar2 != null) {
                actionBar2.setDisplayHomeAsUpEnabled(true);
            }
            setContentView(R.layout.dlg_edit_base);
        }
        EditableView editableView = (EditableView) findViewById(R.id.editable);
        this.f1496a = editableView;
        editableView.setFont(t0.b.f2093n & 15);
        this.f1496a.setFontSize(t0.b.f2094o);
        this.f1496a.setWordWrap((t0.b.f2093n & 16) == 16);
        this.f1496a.setLineNumber((t0.b.f2093n & 32) == 32);
        this.f1496a.setOnTextChangeChange(this);
        if (bundle == null || !bundle.getBoolean("txtValid")) {
            onNewIntent(getIntent());
        }
    }

    @Override
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_texteditor, menu);
        if (this.f1498c != null) {
            menu.findItem(R.id.bSearch).setVisible(false);
            menu.findItem(R.id.bSave).setVisible(false);
            menu.findItem(R.id.bCharset).setVisible(false);
            menu.findItem(R.id.bNext).setVisible(true);
        }
        return true;
    }

    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (a0.c.K(keyEvent != null ? keyEvent.getMetaState() : 0, 4096)) {
            if (i2 == 47) {
                e(false);
                return true;
            }
            if (i2 == 34 && f()) {
                return true;
            }
        } else if (i2 == 133) {
            i();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        d();
        return true;
    }

    @Override
    public final void onNewIntent(Intent intent) {
        Uri data = intent == null ? null : intent.getData();
        if (data == null) {
            finish();
        } else {
            g(true);
            new q(data, intent.getType(), null, this.f1496a.getEditable()).g(this, this.f1502g);
        }
    }

    @Override
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        n0.e.a aVar;
        int i2 = 0;
        if (menuItem.getGroupId() == R.id.gFontFamily) {
            int[] iArr = f1490h;
            int itemId = menuItem.getItemId();
            while (true) {
                if (i2 >= 5) {
                    i2 = -1;
                    break;
                }
                if (itemId == iArr[i2]) {
                    break;
                }
                i2++;
            }
            if (i2 >= 0 && i2 != (t0.b.f2093n & 15)) {
                menuItem.setChecked(true);
                EditableView editableView = this.f1496a;
                t0.b.n(this, i2, -1, editableView.f1829r, editableView.f1830s);
                g(true);
                w0.c.h(new i(i2));
            }
            return true;
        }
        if (menuItem.getGroupId() == R.id.gFontSize) {
            int[] iArr2 = f1492j;
            int itemId2 = menuItem.getItemId();
            while (true) {
                if (i2 >= 7) {
                    i2 = -1;
                    break;
                }
                if (itemId2 == iArr2[i2]) {
                    break;
                }
                i2++;
            }
            if (i2 >= 0) {
                int[] iArr3 = f1491i;
                if (iArr3[i2] != t0.b.f2094o) {
                    menuItem.setChecked(true);
                    int i3 = iArr3[i2];
                    EditableView editableView2 = this.f1496a;
                    t0.b.n(this, -1, i3, editableView2.f1829r, editableView2.f1830s);
                    g(true);
                    w0.c.h(new j());
                }
            }
            return true;
        }
        int itemId3 = menuItem.getItemId();
        if (itemId3 == 16908332 || itemId3 == R.id.bExit) {
            SearchView searchView = this.f1498c;
            if (searchView == null || itemId3 != 16908332) {
                d();
            } else {
                searchView.setIconified(true);
            }
            return true;
        }
        if (itemId3 == R.id.bSave) {
            e(false);
            return true;
        }
        if (itemId3 == R.id.bNext) {
            i();
            return true;
        }
        if (itemId3 == R.id.bSearch) {
            return f();
        }
        if (itemId3 == R.id.bWordWrap) {
            boolean z2 = !menuItem.isChecked();
            t0.b.n(this, -1, -1, z2, this.f1496a.f1830s);
            g(true);
            w0.c.h(new k(z2));
            return true;
        }
        if (itemId3 == R.id.bLineNumber) {
            boolean z3 = !menuItem.isChecked();
            t0.b.n(this, -1, -1, this.f1496a.f1829r, z3);
            g(true);
            w0.c.h(new l(z3));
            return true;
        }
        if (itemId3 != R.id.bCharset) {
            if (itemId3 != R.id.bSyntax) {
                return false;
            }
            Drawable drawableG = z0.c.g(this, R.drawable.ic_radio_on);
            Drawable drawableG2 = z0.c.g(this, R.drawable.ic_radion_off);
            Drawable drawableG3 = (t0.b.f2093n & 64) == 64 ? z0.c.g(this, R.drawable.ic_check_circle) : drawableG2;
            int syntax = this.f1496a.getSyntax();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new c0.h(-1, getString(R.string.OPT_CORE_N_AUTO), drawableG3));
            arrayList.add(new c0.h(0, getString(R.string.BTN_NO), syntax <= 0 ? drawableG : drawableG2));
            while (i2 < 13) {
                int i4 = f1495m[i2];
                arrayList.add(new c0.h(i4, f1494l[i2], i4 == syntax ? drawableG : drawableG2));
                i2++;
            }
            v vVar = new v(this, arrayList, getString(R.string.MENU_CHARSET), 9);
            vVar.f961b = new n(vVar);
            vVar.v();
            return true;
        }
        Drawable drawableG4 = z0.c.g(this, R.drawable.ic_radio_on);
        Drawable drawableG5 = z0.c.g(this, R.drawable.ic_radion_off);
        p pVar = this.f1501f;
        String str = (pVar == null || (aVar = pVar.f1530b) == null) ? null : aVar.f1245b;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new c0.h(-1, getString(R.string.OPT_CORE_N_AUTO), str == null ? drawableG4 : drawableG5));
        String[] strArr = f1493k;
        int i5 = 0;
        while (i2 < 32) {
            String str2 = strArr[i2];
            int i6 = i5 + 1;
            arrayList2.add(new c0.h(i5, str2, str2.equals(str) ? drawableG4 : drawableG5));
            i2++;
            i5 = i6;
        }
        v vVar2 = new v(this, arrayList2, getString(R.string.MENU_CHARSET), 9);
        vVar2.f961b = new m(vVar2, str);
        vVar2.v();
        return true;
    }

    @Override
    public final void onPause() {
        super.onPause();
        this.f1502g.d(this);
    }

    @Override
    public final boolean onPrepareOptionsMenu(Menu menu) {
        try {
            menu.findItem(R.id.bWordWrap).setChecked(this.f1496a.f1829r);
            menu.findItem(R.id.bLineNumber).setChecked(this.f1496a.f1830s);
            menu.findItem(f1490h[t0.b.f2093n & 15]).setChecked(true);
            int[] iArr = f1491i;
            int i2 = t0.b.f2094o;
            int i3 = 0;
            while (true) {
                if (i3 >= 7) {
                    i3 = -1;
                    break;
                }
                if (i2 == iArr[i3]) {
                    break;
                }
                i3++;
            }
            if (i3 > 0) {
                menu.findItem(f1492j[i3]).setChecked(true);
            }
        } catch (Exception unused) {
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override
    public final void onRestoreInstanceState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        super.onRestoreInstanceState(bundle);
        this.f1499d = bundle.getBoolean("txtChg");
        this.f1500e = bundle.getString("txtName");
        this.f1496a.setSyntax(bundle.getInt("txtSyntax"));
        if (bundle.getParcelable("op2u") != null) {
            this.f1501f = new p(bundle);
            if (!bundle.getBoolean("txtValid")) {
                ZApp.j("File is too big for restore state");
                g(true);
                p pVar = this.f1501f;
                Uri uri = pVar.f1531c;
                n0.e.a aVar = pVar.f1530b;
                new q(uri, pVar.f1532d, aVar != null ? aVar.f1245b : null, this.f1496a.getEditable()).g(this, this.f1502g);
            }
        }
        h(this.f1499d);
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.f1502g.a(this, this);
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("txtChg", this.f1499d);
        bundle.putString("txtName", this.f1500e);
        bundle.putBoolean("txtValid", this.f1496a.f1816e.f1857c < 1047552);
        bundle.putInt("txtSyntax", this.f1496a.getSyntax());
        p pVar = this.f1501f;
        if (pVar != null) {
            bundle.putString("op2n", pVar.f1529a);
            n0.e.a aVar = pVar.f1530b;
            if (aVar != null) {
                bundle.putByteArray("op2b", aVar.f1244a);
                bundle.putString("op2f", aVar.f1245b);
                bundle.putBoolean("op2r", aVar.f1246c);
            }
            bundle.putParcelable("op2u", pVar.f1531c);
            bundle.putString("op2t", pVar.f1532d);
        }
    }

    public static class p implements w0.a.b {

        public final String f1529a;

        public final n0.e.a f1530b;

        public final Uri f1531c;

        public final String f1532d;

        public p(String str, n0.e.a aVar, Uri uri, String str2) {
            this.f1529a = str;
            this.f1530b = aVar;
            this.f1531c = uri;
            this.f1532d = str2;
        }

        @Override
        public final int a() {
            return 1;
        }

        public p(Bundle bundle) {
            this.f1529a = bundle.getString("op2n");
            String string = bundle.getString("op2f");
            if (string != null) {
                this.f1530b = new n0.e.a(bundle.getByteArray("op2b"), string, bundle.getBoolean("op2r"));
            } else {
                this.f1530b = null;
            }
            this.f1531c = (Uri) bundle.getParcelable("op2u");
            this.f1532d = bundle.getString("op2t");
        }
    }
}
