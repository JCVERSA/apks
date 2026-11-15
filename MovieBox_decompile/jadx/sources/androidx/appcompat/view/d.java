package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.R$style;

public class d extends ContextWrapper {

    private static Configuration f952f;

    private int f953a;

    private Resources.Theme f954b;

    private LayoutInflater f955c;

    private Configuration f956d;

    private Resources f957e;

    public d() {
        super(null);
    }

    private Resources b() {
        if (this.f957e == null) {
            Configuration configuration = this.f956d;
            if (configuration == null || (Build.VERSION.SDK_INT >= 26 && e(configuration))) {
                this.f957e = super.getResources();
            } else {
                this.f957e = createConfigurationContext(this.f956d).getResources();
            }
        }
        return this.f957e;
    }

    private void d() {
        boolean z10 = this.f954b == null;
        if (z10) {
            this.f954b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f954b.setTo(theme);
            }
        }
        f(this.f954b, this.f953a, z10);
    }

    private static boolean e(Configuration configuration) {
        if (configuration == null) {
            return true;
        }
        if (f952f == null) {
            Configuration configuration2 = new Configuration();
            configuration2.fontScale = 0.0f;
            f952f = configuration2;
        }
        return configuration.equals(f952f);
    }

    public void a(Configuration configuration) {
        if (this.f957e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f956d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f956d = new Configuration(configuration);
    }

    @Override
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public int c() {
        return this.f953a;
    }

    protected void f(Resources.Theme theme, int i10, boolean z10) {
        theme.applyStyle(i10, true);
    }

    @Override
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override
    public Resources getResources() {
        return b();
    }

    @Override
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f955c == null) {
            this.f955c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f955c;
    }

    @Override
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f954b;
        if (theme != null) {
            return theme;
        }
        if (this.f953a == 0) {
            this.f953a = R$style.Theme_AppCompat_Light;
        }
        d();
        return this.f954b;
    }

    @Override
    public void setTheme(int i10) {
        if (this.f953a != i10) {
            this.f953a = i10;
            d();
        }
    }

    public d(Context context, int i10) {
        super(context);
        this.f953a = i10;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f954b = theme;
    }
}
