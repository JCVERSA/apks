package com.transsion.playercommon.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.StatefulAdapter;
import androidx.viewpager2.widget.ViewPager2;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class TrassionFragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {
    public final Lifecycle o;
    public final FragmentManager p;
    public final LongSparseArray q;
    public final LongSparseArray r;
    public final LongSparseArray s;
    public FragmentMaxLifecycleEnforcer t;
    public boolean u;
    public boolean v;
    public final Set w;

    public class FragmentMaxLifecycleEnforcer {
        public ViewPager2.OnPageChangeCallback a;
        public RecyclerView.AdapterDataObserver b;
        public LifecycleEventObserver c;
        public ViewPager2 d;
        public long e = -1;

        public class a extends ViewPager2.OnPageChangeCallback {
            public a() {
            }

            @Override
            public void onPageScrollStateChanged(int i) {
                FragmentMaxLifecycleEnforcer.this.d(false);
            }

            @Override
            public void onPageSelected(int i) {
                FragmentMaxLifecycleEnforcer.this.d(false);
            }
        }

        public class b extends c {
            public b() {
                super();
            }

            @Override
            public void onChanged() {
                FragmentMaxLifecycleEnforcer.this.d(true);
            }
        }

        public FragmentMaxLifecycleEnforcer() {
        }

        public final ViewPager2 a(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        public void b(RecyclerView recyclerView) {
            this.d = a(recyclerView);
            a aVar = new a();
            this.a = aVar;
            this.d.registerOnPageChangeCallback(aVar);
            b bVar = new b();
            this.b = bVar;
            TrassionFragmentStateAdapter.this.registerAdapterDataObserver(bVar);
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() {
                @Override
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.d(false);
                }
            };
            this.c = lifecycleEventObserver;
            TrassionFragmentStateAdapter.this.o.addObserver(lifecycleEventObserver);
        }

        public void c(RecyclerView recyclerView) {
            a(recyclerView).unregisterOnPageChangeCallback(this.a);
            TrassionFragmentStateAdapter.this.unregisterAdapterDataObserver(this.b);
            TrassionFragmentStateAdapter.this.o.removeObserver(this.c);
            this.d = null;
        }

        public void d(boolean z) {
            int currentItem;
            Fragment fragment;
            if (TrassionFragmentStateAdapter.this.shouldDelayFragmentTransactions() || this.d.getScrollState() != 0 || TrassionFragmentStateAdapter.this.q.isEmpty() || TrassionFragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.d.getCurrentItem()) >= TrassionFragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = TrassionFragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.e || z) && (fragment = (Fragment) TrassionFragmentStateAdapter.this.q.get(itemId)) != null && fragment.isAdded()) {
                this.e = itemId;
                FragmentTransaction fragmentTransactionBeginTransaction = TrassionFragmentStateAdapter.this.p.beginTransaction();
                Fragment fragment2 = null;
                for (int i = 0; i < TrassionFragmentStateAdapter.this.q.size(); i++) {
                    long jKeyAt = TrassionFragmentStateAdapter.this.q.keyAt(i);
                    Fragment fragment3 = (Fragment) TrassionFragmentStateAdapter.this.q.valueAt(i);
                    if (fragment3.isAdded()) {
                        if (jKeyAt != this.e) {
                            fragmentTransactionBeginTransaction.setMaxLifecycle(fragment3, Lifecycle.State.STARTED);
                        } else {
                            fragment2 = fragment3;
                        }
                        fragment3.setMenuVisibility(jKeyAt == this.e);
                    }
                }
                if (fragment2 != null) {
                    fragmentTransactionBeginTransaction.setMaxLifecycle(fragment2, Lifecycle.State.RESUMED);
                }
                if (fragmentTransactionBeginTransaction.isEmpty()) {
                    return;
                }
                fragmentTransactionBeginTransaction.commitNow();
            }
        }
    }

    public static final class FragmentViewHolder extends RecyclerView.ViewHolder {
        public FragmentViewHolder(FrameLayout frameLayout) {
            super(frameLayout);
        }

        public static FragmentViewHolder a(ViewGroup viewGroup) {
            FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            frameLayout.setId(ViewCompat.generateViewId());
            frameLayout.setSaveEnabled(false);
            return new FragmentViewHolder(frameLayout);
        }

        public FrameLayout getContainer() {
            return (FrameLayout) this.itemView;
        }
    }

    public class a implements View.OnLayoutChangeListener {
        public final FrameLayout b;
        public final FragmentViewHolder c;

        public a(FrameLayout frameLayout, FragmentViewHolder fragmentViewHolder) {
            this.b = frameLayout;
            this.c = fragmentViewHolder;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (this.b.getParent() != null) {
                this.b.removeOnLayoutChangeListener(this);
                TrassionFragmentStateAdapter.this.r(this.c);
            }
        }
    }

    public class b extends FragmentManager.FragmentLifecycleCallbacks {
        public final Fragment a;
        public final FrameLayout b;

        public b(Fragment fragment, FrameLayout frameLayout) {
            this.a = fragment;
            this.b = frameLayout;
        }

        @Override
        public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view, Bundle bundle) {
            if (fragment != this.a || fragment.isRemoving() || this.b.getParent() == null) {
                return;
            }
            TrassionFragmentStateAdapter.this.s(this);
            TrassionFragmentStateAdapter.this.addViewToContainer(view, this.b);
        }
    }

    public static abstract class c extends RecyclerView.AdapterDataObserver {
        @Override
        public abstract void onChanged();

        @Override
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }

        public c() {
        }

        @Override
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }
    }

    public TrassionFragmentStateAdapter(FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    public static String createKey(String str, long j) {
        return str + j;
    }

    public static void d(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean isValidKey(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    public static long parseIdFromKey(String str, String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    public void addViewToContainer(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            Log.i("TrassionFragmentStateAd", "addViewToContainer: Design assumption violated.\n" + Log.getStackTraceString(new Throwable()));
            frameLayout.removeAllViews();
        }
        if (view.getParent() != frameLayout) {
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            frameLayout.addView(view);
        }
    }

    public boolean containsItem(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    public abstract Fragment createFragment(int i);

    public void ensureFragment(int i) {
        long itemId = getItemId(i);
        if (this.q.containsKey(itemId)) {
            return;
        }
        Fragment fragmentCreateFragment = createFragment(i);
        fragmentCreateFragment.setInitialSavedState((Fragment.SavedState) this.r.get(itemId));
        this.q.put(itemId, fragmentCreateFragment);
    }

    public void g() {
        this.q.clear();
        this.r.clear();
        this.s.clear();
    }

    public void gcFragments() {
        if (!this.v || shouldDelayFragmentTransactions()) {
            return;
        }
        ArraySet arraySet = new ArraySet();
        for (int i = 0; i < this.q.size(); i++) {
            long jKeyAt = this.q.keyAt(i);
            if (!containsItem(jKeyAt)) {
                arraySet.add(Long.valueOf(jKeyAt));
                this.s.remove(jKeyAt);
            }
        }
        if (!this.u) {
            this.v = false;
            for (int i2 = 0; i2 < this.q.size(); i2++) {
                long jKeyAt2 = this.q.keyAt(i2);
                if (!isFragmentViewBound(jKeyAt2)) {
                    arraySet.add(Long.valueOf(jKeyAt2));
                }
            }
        }
        Iterator<E> it = arraySet.iterator();
        while (it.hasNext()) {
            removeFragment(((Long) it.next()).longValue());
        }
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public final void onBindViewHolder(FragmentViewHolder fragmentViewHolder, int i) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.getContainer().getId();
        Long lItemForViewHolder = itemForViewHolder(id);
        if (lItemForViewHolder != null && lItemForViewHolder.longValue() != itemId) {
            removeFragment(lItemForViewHolder.longValue());
            this.s.remove(lItemForViewHolder.longValue());
        }
        this.s.put(itemId, Integer.valueOf(id));
        ensureFragment(i);
        FrameLayout container = fragmentViewHolder.getContainer();
        if (ViewCompat.isAttachedToWindow(container)) {
            if (container.getParent() != null) {
                Log.i("TrassionFragmentStateAd", "onBindViewHolder: Design assumption violated.\n" + Log.getStackTraceString(new Throwable()));
                r(fragmentViewHolder);
            } else {
                container.addOnLayoutChangeListener(new a(container, fragmentViewHolder));
            }
        }
        gcFragments();
    }

    @Override
    public final FragmentViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return FragmentViewHolder.a(viewGroup);
    }

    public final boolean isFragmentViewBound(long j) {
        View view;
        if (this.s.containsKey(j)) {
            return true;
        }
        Fragment fragment = (Fragment) this.q.get(j);
        return (fragment == null || (view = fragment.getView()) == null || view.getParent() == null) ? false : true;
    }

    public final Long itemForViewHolder(int i) {
        Long lValueOf = null;
        for (int i2 = 0; i2 < this.s.size(); i2++) {
            if (((Integer) this.s.valueAt(i2)).intValue() == i) {
                if (lValueOf != null) {
                    Log.i("TrassionFragmentStateAd", "itemForViewHolder: Design assumption violated: a ViewHolder can only be bound to one item at a time.\n" + Log.getStackTraceString(new Throwable()));
                }
                lValueOf = Long.valueOf(this.s.keyAt(i2));
            }
        }
        return lValueOf;
    }

    @Override
    public final boolean onFailedToRecycleView(FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    @Override
    public final void onViewAttachedToWindow(FragmentViewHolder fragmentViewHolder) {
        r(fragmentViewHolder);
        gcFragments();
    }

    @Override
    public final void onViewRecycled(FragmentViewHolder fragmentViewHolder) {
        Long lItemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (lItemForViewHolder != null) {
            removeFragment(lItemForViewHolder.longValue());
            this.s.remove(lItemForViewHolder.longValue());
        }
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        d(this.t == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.t = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.b(recyclerView);
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.t.c(recyclerView);
        this.t = null;
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            this.p.unregisterFragmentLifecycleCallbacks((FragmentManager.FragmentLifecycleCallbacks) it.next());
        }
        this.w.clear();
    }

    public void r(final FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = (Fragment) this.q.get(fragmentViewHolder.getItemId());
        if (fragment == null) {
            Log.i("TrassionFragmentStateAd", "placeFragmentInViewHolder: Design assumption violated.\n" + Log.getStackTraceString(new Throwable()));
            return;
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            Log.i("TrassionFragmentStateAd", "placeFragmentInViewHolder: Design assumption violated.\n" + Log.getStackTraceString(new Throwable()));
            return;
        }
        if (fragment.isAdded() && view == null) {
            scheduleViewAttach(fragment, container);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != container) {
                addViewToContainer(view, container);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            addViewToContainer(view, container);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            if (this.p.isDestroyed()) {
                return;
            }
            this.o.addObserver(new LifecycleEventObserver() {
                @Override
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (TrassionFragmentStateAdapter.this.shouldDelayFragmentTransactions()) {
                        return;
                    }
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
                        TrassionFragmentStateAdapter.this.r(fragmentViewHolder);
                    }
                }
            });
            return;
        }
        scheduleViewAttach(fragment, container);
        this.p.beginTransaction().add(fragment, "f" + fragmentViewHolder.getItemId()).setMaxLifecycle(fragment, Lifecycle.State.STARTED).commitNow();
        this.t.d(false);
    }

    public final void removeFragment(long j) {
        ViewParent parent;
        Fragment fragment = (Fragment) this.q.get(j);
        if (fragment != null) {
            if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
                ((FrameLayout) parent).removeAllViews();
            }
            if (!containsItem(j)) {
                this.r.remove(j);
            }
            if (!fragment.isAdded()) {
                this.q.remove(j);
                return;
            }
            if (shouldDelayFragmentTransactions()) {
                this.v = true;
                return;
            }
            if (fragment.isAdded() && containsItem(j)) {
                this.r.put(j, this.p.saveFragmentInstanceState(fragment));
            }
            this.p.beginTransaction().remove(fragment).commitNow();
            this.q.remove(j);
        }
    }

    @Override
    public final void restoreState(Parcelable parcelable) {
        if (!this.r.isEmpty() || !this.q.isEmpty()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (isValidKey(str, "f#")) {
                this.q.put(parseIdFromKey(str, "f#"), this.p.getFragment(bundle, str));
            } else {
                if (!isValidKey(str, "s#")) {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
                long idFromKey = parseIdFromKey(str, "s#");
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (containsItem(idFromKey)) {
                    this.r.put(idFromKey, savedState);
                }
            }
        }
        if (this.q.isEmpty()) {
            return;
        }
        this.v = true;
        this.u = true;
        gcFragments();
        scheduleGracePeriodEnd();
    }

    public final void s(FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        this.p.unregisterFragmentLifecycleCallbacks(fragmentLifecycleCallbacks);
        this.w.remove(fragmentLifecycleCallbacks);
    }

    @Override
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.q.size() + this.r.size());
        for (int i = 0; i < this.q.size(); i++) {
            long jKeyAt = this.q.keyAt(i);
            Fragment fragment = (Fragment) this.q.get(jKeyAt);
            if (fragment != null && fragment.isAdded()) {
                this.p.putFragment(bundle, createKey("f#", jKeyAt), fragment);
            }
        }
        for (int i2 = 0; i2 < this.r.size(); i2++) {
            long jKeyAt2 = this.r.keyAt(i2);
            if (containsItem(jKeyAt2)) {
                bundle.putParcelable(createKey("s#", jKeyAt2), (Parcelable) this.r.get(jKeyAt2));
            }
        }
        return bundle;
    }

    public final void scheduleGracePeriodEnd() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() {
            @Override
            public void run() {
                TrassionFragmentStateAdapter trassionFragmentStateAdapter = TrassionFragmentStateAdapter.this;
                trassionFragmentStateAdapter.u = false;
                trassionFragmentStateAdapter.gcFragments();
            }
        };
        this.o.addObserver(new LifecycleEventObserver() {
            @Override
            public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    lifecycleOwner.getLifecycle().removeObserver(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    public final void scheduleViewAttach(Fragment fragment, FrameLayout frameLayout) {
        b bVar = new b(fragment, frameLayout);
        this.w.add(bVar);
        this.p.registerFragmentLifecycleCallbacks(bVar, false);
    }

    @Override
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    public boolean shouldDelayFragmentTransactions() {
        return this.p.isStateSaved();
    }

    public TrassionFragmentStateAdapter(Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    public TrassionFragmentStateAdapter(FragmentManager fragmentManager, Lifecycle lifecycle) {
        this.w = new HashSet();
        this.q = new LongSparseArray();
        this.r = new LongSparseArray();
        this.s = new LongSparseArray();
        this.u = false;
        this.v = false;
        this.p = fragmentManager;
        this.o = lifecycle;
        super.setHasStableIds(true);
    }
}
