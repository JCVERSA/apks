package androidx.appcompat.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.t0;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;

public class AppCompatActivity extends FragmentActivity implements d, androidx.core.app.b0.a {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private f mDelegate;
    private Resources mResources;

    class a implements androidx.p010savedstate.c.InterfaceC0116c {
        a() {
        }

        @Override
        public Bundle saveState() {
            Bundle bundle = new Bundle();
            AppCompatActivity.this.getDelegate().F(bundle);
            return bundle;
        }
    }

    class b implements androidx.activity.contextaware.d {
        b() {
        }

        @Override
        public void a(Context context) {
            f delegate = AppCompatActivity.this.getDelegate();
            delegate.w();
            delegate.B(AppCompatActivity.this.getSavedStateRegistry().b(AppCompatActivity.DELEGATE_TAG));
        }
    }

    public AppCompatActivity() {
        L();
    }

    private void L() {
        getSavedStateRegistry().h(DELEGATE_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private void M() {
        ViewTreeLifecycleOwner.b(getWindow().getDecorView(), this);
        ViewTreeViewModelStoreOwner.b(getWindow().getDecorView(), this);
        ViewTreeSavedStateRegistryOwner.b(getWindow().getDecorView(), this);
        androidx.activity.z.a(getWindow().getDecorView(), this);
    }

    private boolean N(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        M();
        getDelegate().e(view, layoutParams);
    }

    @Override
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().i(context));
    }

    @Override
    public void closeOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.g()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.q(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override
    public <T extends View> T findViewById(int i10) {
        return (T) getDelegate().m(i10);
    }

    @NonNull
    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.j(this, this);
        }
        return this.mDelegate;
    }

    @Nullable
    public androidx.appcompat.app.b getDrawerToggleDelegate() {
        return getDelegate().q();
    }

    @Override
    @NonNull
    public MenuInflater getMenuInflater() {
        return getDelegate().t();
    }

    @Override
    public Resources getResources() {
        if (this.mResources == null && t0.c()) {
            this.mResources = new t0(this, super.getResources());
        }
        Resources resources = this.mResources;
        return resources == null ? super.getResources() : resources;
    }

    @Nullable
    public androidx.appcompat.app.a getSupportActionBar() {
        return getDelegate().v();
    }

    @Override
    @Nullable
    public Intent getSupportParentActivityIntent() {
        return androidx.core.app.n.a(this);
    }

    @Override
    public void invalidateOptionsMenu() {
        getDelegate().x();
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getDelegate().A(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(@NonNull androidx.core.app.b0 b0Var) {
        b0Var.c(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        getDelegate().C();
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (N(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    protected void onLocalesChanged(@NonNull androidx.core.os.i iVar) {
    }

    @Override
    public final boolean onMenuItemSelected(int i10, @NonNull MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.j() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override
    public boolean onMenuOpened(int i10, Menu menu) {
        return super.onMenuOpened(i10, menu);
    }

    protected void onNightModeChanged(int i10) {
    }

    @Override
    public void onPanelClosed(int i10, @NonNull Menu menu) {
        super.onPanelClosed(i10, menu);
    }

    @Override
    protected void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().D(bundle);
    }

    @Override
    protected void onPostResume() {
        super.onPostResume();
        getDelegate().E();
    }

    public void onPrepareSupportNavigateUpTaskStack(@NonNull androidx.core.app.b0 b0Var) {
    }

    @Override
    protected void onStart() {
        super.onStart();
        getDelegate().G();
    }

    @Override
    protected void onStop() {
        super.onStop();
        getDelegate().H();
    }

    @Override
    public void onSupportActionModeFinished(@NonNull androidx.appcompat.view.b bVar) {
    }

    @Override
    public void onSupportActionModeStarted(@NonNull androidx.appcompat.view.b bVar) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        androidx.core.app.b0 b0VarF = androidx.core.app.b0.f(this);
        onCreateSupportNavigateUpTaskStack(b0VarF);
        onPrepareSupportNavigateUpTaskStack(b0VarF);
        b0VarF.g();
        try {
            ActivityCompat.b(this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override
    protected void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        getDelegate().S(charSequence);
    }

    @Override
    @Nullable
    public androidx.appcompat.view.b onWindowStartingSupportActionMode(@NonNull androidx.appcompat.view.b.a aVar) {
        return null;
    }

    @Override
    public void openOptionsMenu() {
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.r()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override
    public void setContentView(int i10) {
        M();
        getDelegate().L(i10);
    }

    public void setSupportActionBar(@Nullable Toolbar toolbar) {
        getDelegate().Q(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z10) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z10) {
    }

    @Override
    public void setTheme(int i10) {
        super.setTheme(i10);
        getDelegate().R(i10);
    }

    @Nullable
    public androidx.appcompat.view.b startSupportActionMode(@NonNull androidx.appcompat.view.b.a aVar) {
        return getDelegate().T(aVar);
    }

    @Override
    public void supportInvalidateOptionsMenu() {
        getDelegate().x();
    }

    public void supportNavigateUpTo(@NonNull Intent intent) {
        androidx.core.app.n.e(this, intent);
    }

    public boolean supportRequestWindowFeature(int i10) {
        return getDelegate().K(i10);
    }

    public boolean supportShouldUpRecreateTask(@NonNull Intent intent) {
        return androidx.core.app.n.f(this, intent);
    }

    public AppCompatActivity(int i10) {
        super(i10);
        L();
    }

    @Override
    public void setContentView(View view) {
        M();
        getDelegate().M(view);
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        M();
        getDelegate().N(view, layoutParams);
    }
}
