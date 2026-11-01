package b0;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;

public abstract class c extends Activity implements w0.a.c {

    public ProgressBar f268a;

    public ActionMode f269b;

    public Drawable f271d;

    public final w0.a f270c = new w0.a();

    public byte f272e = 1;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            c cVar = c.this;
            if (cVar.f269b instanceof z0.a) {
                cVar.j();
            } else {
                cVar.onKeyUp(4, null);
            }
        }
    }

    public class b implements View.OnClickListener {

        public class a implements PopupMenu.OnMenuItemClickListener {
            public a() {
            }

            @Override
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return c.this.onOptionsItemSelected(menuItem);
            }
        }

        public b() {
        }

        @Override
        public final void onClick(View view) {
            PopupMenu popupMenu;
            c cVar = c.this;
            ActionMode actionMode = cVar.f269b;
            if (actionMode instanceof z0.a) {
                popupMenu = ((z0.a) actionMode).f2329c;
            } else {
                PopupMenu popupMenu2 = new PopupMenu(cVar, view);
                cVar.onCreateOptionsMenu(popupMenu2.getMenu());
                popupMenu = popupMenu2;
            }
            popupMenu.setOnMenuItemClickListener(new a());
            popupMenu.show();
        }
    }

    public static void r(View view, String str) {
        if (view == null) {
            return;
        }
        int iLastIndexOf = str.lastIndexOf(47);
        String strSubstring = "/";
        if (iLastIndexOf >= 0 && str.length() > 1) {
            String strSubstring2 = str.substring(iLastIndexOf + 1);
            strSubstring = iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : "/";
            str = strSubstring2;
        }
        TextView textView = (TextView) view.findViewById(R.id.nSubtitle);
        if (textView != null) {
            try {
                textView.setText(strSubstring);
            } catch (ArrayIndexOutOfBoundsException unused) {
                textView.setEllipsize(null);
                textView.setGravity(8388613);
                textView.setText(strSubstring);
            }
        }
        TextView textView2 = (TextView) view.findViewById(R.id.nTitle);
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override
    public final void finishAndRemoveTask() {
        if (Build.VERSION.SDK_INT < 21) {
            finish();
        } else {
            super.finishAndRemoveTask();
        }
    }

    @Override
    public final MenuInflater getMenuInflater() {
        return Build.VERSION.SDK_INT < 21 ? new f1.a(this) : super.getMenuInflater();
    }

    public final void i() {
        if (Build.VERSION.SDK_INT < 24) {
            finishAndRemoveTask();
        } else {
            finish();
        }
    }

    public final void j() {
        ActionMode actionMode = this.f269b;
        if (actionMode != null) {
            actionMode.finish();
            this.f269b = null;
        }
    }

    public final int k(Configuration configuration) {
        if (z0.e.d(this)) {
            return R.layout.dlg_main_list_tv;
        }
        int i2 = configuration.screenLayout & 15;
        if (configuration.orientation != 2 || z0.e.b(this)) {
            return i2 >= 3 ? R.layout.dlg_main_list_large : R.layout.dlg_main_list;
        }
        if (t0.b.l(2)) {
            return i2 >= 3 ? R.layout.dlg_main_list_land_large : R.layout.dlg_main_list_land;
        }
        return R.layout.dlg_main_list;
    }

    public final void l(int i2, Menu menu) {
        int integer;
        try {
            int identifier = Resources.getSystem().getIdentifier("max_action_buttons", "integer", "android");
            if (identifier != 0) {
                integer = getResources().getInteger(identifier);
            } else {
                Configuration configuration = getResources().getConfiguration();
                int i3 = configuration.screenWidthDp;
                int i4 = configuration.screenHeightDp;
                if (configuration.smallestScreenWidthDp > 600 || ((i3 > 960 && i4 > 720) || (i3 > 720 && i4 > 960))) {
                    integer = 5;
                } else if (i3 >= 500 || (i3 > 480 && i4 > 640)) {
                    integer = 4;
                } else {
                    integer = i3 >= 360 ? 3 : 2;
                }
            }
            int i5 = i2 + 1;
            int size = menu.size();
            if (integer <= 1 || size < integer) {
                return;
            }
            for (int i6 = 0; i6 < size; i6++) {
                MenuItem item = menu.getItem(i6);
                if (item.isVisible() && item.getTitle() == null) {
                    i5++;
                }
            }
            for (int i7 = 0; i7 < size; i7++) {
                MenuItem item2 = menu.getItem(i7);
                if (item2.isVisible() && item2.getTitle() != null && (i5 = i5 + 1) > integer) {
                    item2.setShowAsActionFlags(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void m(boolean z2) {
        Drawable drawableF;
        int i2;
        if (z2) {
            drawableF = z0.c.f(this, R.attr.menuIconCancel);
            i2 = android.R.string.cancel;
        } else {
            drawableF = this.f271d;
            i2 = android.R.string.ok;
        }
        if (z0.e.d(this)) {
            ImageView imageView = (ImageView) findViewById(R.id.bBack);
            if (this.f271d == null) {
                this.f271d = imageView.getDrawable();
            }
            imageView.setImageDrawable(drawableF);
            return;
        }
        Drawable drawableF2 = z0.e.f(this, drawableF, i2);
        if (this.f271d == null) {
            this.f271d = drawableF2;
        }
    }

    public final void n(byte b2) {
        byte b3 = this.f272e;
        if (b3 == b2) {
            return;
        }
        if (b2 == 2 || b3 == 2 || t0.b.i(null)) {
            invalidateOptionsMenu();
        }
        this.f272e = b2;
        z0.e.h(this, (b2 == 1 || b2 == 2) ? R.attr.colorPrimary : R.attr.actionBarBackgroundInRoot);
    }

    public final void o(String str, String str2, String str3, String str4, long j2, long j3) {
        TextView textView = (TextView) findViewById(R.id.tvStorage);
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = (TextView) findViewById(R.id.tvStorageSpace);
        if (textView2 != null) {
            textView2.setText(str2);
        }
        TextView textView3 = (TextView) findViewById(R.id.tvFolder);
        if (textView3 != null) {
            textView3.setText(str3);
        }
        TextView textView4 = (TextView) findViewById(R.id.tvFolderSize);
        if (textView4 != null) {
            textView4.setText(str4);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
        if (progressBar != null) {
            if (j2 < 0 || j3 < 0) {
                progressBar.setMax(0);
                progressBar.setProgress(0);
            } else if (j3 > 2147483647L) {
                progressBar.setMax((int) (j3 >> 10));
                progressBar.setProgress((int) (j2 >> 10));
            } else {
                progressBar.setMax((int) j3);
                progressBar.setProgress((int) j2);
            }
        }
    }

    @Override
    public boolean onMenuOpened(int i2, Menu menu) {
        if (i2 == 8) {
            z0.e.m(menu);
        }
        return super.onMenuOpened(i2, menu);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.f270c.d(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.f270c.a(this, this);
    }

    @Override
    public void onStart() {
        super.onStart();
        t();
    }

    public final void p(String str, long j2, long j3) {
        TextView textView = (TextView) findViewById(R.id.tvStorageSpace);
        if (textView != null) {
            textView.setText(str);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
        if (progressBar != null) {
            if (j2 < 0 || j3 < 0) {
                progressBar.setMax(0);
                progressBar.setProgress(0);
            } else if (j3 > 2147483647L) {
                progressBar.setMax((int) (j3 >> 10));
                progressBar.setProgress((int) (j2 >> 10));
            } else {
                progressBar.setMax((int) j3);
                progressBar.setProgress((int) j2);
            }
        }
    }

    public final void q(ActionBar actionBar) {
        if (actionBar != null) {
            actionBar.hide();
        }
        findViewById(R.id.bBack).setOnClickListener(new a());
        findViewById(R.id.bMenu).setOnClickListener(new b());
    }

    @Override
    public final void recreate() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            super.recreate();
            return;
        }
        Intent intent = getIntent();
        overridePendingTransition(0, 0);
        intent.addFlags(65536);
        if (i2 >= 21) {
            System.exit(0);
            startActivity(intent);
        } else {
            intent.addFlags(32768);
            startActivity(intent);
            System.exit(0);
        }
    }

    public final void s(int i2) {
        if (Build.VERSION.SDK_INT < 21) {
            setProgress(i2);
            return;
        }
        if (this.f268a == null) {
            int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, 20);
            ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
            this.f268a = progressBar;
            progressBar.setLayoutParams(layoutParams);
            this.f268a.setMax(10000);
            z0.e.n(this, this.f268a, z0.c.b(this, R.attr.isLightActionBar) ? -16777216 : -1);
            ((ViewGroup) getWindow().getDecorView()).addView(this.f268a);
            this.f268a.setY(dimensionPixelSize);
        }
        if (i2 < 0) {
            this.f268a.setIndeterminate(true);
        } else {
            this.f268a.setProgress(i2);
        }
        this.f268a.setVisibility(0);
    }

    @Override
    public final ActionMode startActionMode(ActionMode.Callback callback) {
        ActionMode actionMode = this.f269b;
        if (actionMode != null) {
            actionMode.finish();
        }
        if (z0.e.d(this)) {
            this.f269b = new z0.a(this, callback);
        } else {
            this.f269b = super.startActionMode(callback);
        }
        return this.f269b;
    }

    public final void t() {
        if (Build.VERSION.SDK_INT < 21) {
            setProgressBarVisibility(false);
            return;
        }
        ProgressBar progressBar = this.f268a;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }
}
