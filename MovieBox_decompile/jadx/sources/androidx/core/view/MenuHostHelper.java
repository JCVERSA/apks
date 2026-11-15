package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.p009lifecycle.Lifecycle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class MenuHostHelper {
    private final Runnable mOnInvalidateMenuCallback;
    private final CopyOnWriteArrayList<MenuProvider> mMenuProviders = new CopyOnWriteArrayList<>();
    private final Map<MenuProvider, a> mProviderToLifecycleContainers = new HashMap();

    private static class a {

        final Lifecycle f7981a;

        private androidx.p009lifecycle.r f7982b;

        a(Lifecycle lifecycle, androidx.p009lifecycle.r rVar) {
            this.f7981a = lifecycle;
            this.f7982b = rVar;
            lifecycle.a(rVar);
        }

        void a() {
            this.f7981a.d(this.f7982b);
            this.f7982b = null;
        }
    }

    public MenuHostHelper(Runnable runnable) {
        this.mOnInvalidateMenuCallback = runnable;
    }

    public void lambda$addMenuProvider$0(MenuProvider menuProvider, androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        }
    }

    public void lambda$addMenuProvider$1(Lifecycle.State state, MenuProvider menuProvider, androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.upTo(state)) {
            addMenuProvider(menuProvider);
            return;
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        } else if (event == Lifecycle.Event.downFrom(state)) {
            this.mMenuProviders.remove(menuProvider);
            this.mOnInvalidateMenuCallback.run();
        }
    }

    public void addMenuProvider(MenuProvider menuProvider) {
        this.mMenuProviders.add(menuProvider);
        this.mOnInvalidateMenuCallback.run();
    }

    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onCreateMenu(menu, menuInflater);
        }
    }

    public void onMenuClosed(Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onMenuClosed(menu);
        }
    }

    public boolean onMenuItemSelected(MenuItem menuItem) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            if (it.next().onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void onPrepareMenu(Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onPrepareMenu(menu);
        }
    }

    public void removeMenuProvider(MenuProvider menuProvider) {
        this.mMenuProviders.remove(menuProvider);
        a aVarRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.mOnInvalidateMenuCallback.run();
    }

    public void addMenuProvider(final MenuProvider menuProvider, androidx.p009lifecycle.u uVar) {
        addMenuProvider(menuProvider);
        Lifecycle lifecycle = uVar.getLifecycle();
        a aVarRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new a(lifecycle, new androidx.p009lifecycle.r() {
            @Override
            public final void onStateChanged(androidx.p009lifecycle.u uVar2, Lifecycle.Event event) {
                this.f8129a.lambda$addMenuProvider$0(menuProvider, uVar2, event);
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(final MenuProvider menuProvider, androidx.p009lifecycle.u uVar, final Lifecycle.State state) {
        Lifecycle lifecycle = uVar.getLifecycle();
        a aVarRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new a(lifecycle, new androidx.p009lifecycle.r() {
            @Override
            public final void onStateChanged(androidx.p009lifecycle.u uVar2, Lifecycle.Event event) {
                this.f8126a.lambda$addMenuProvider$1(state, menuProvider, uVar2, event);
            }
        }));
    }
}
