package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.b;
import androidx.collection.x;
import androidx.core.util.i;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class FragmentStateAdapter extends RecyclerView.Adapter implements StatefulAdapter {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = "f#";
    private static final String KEY_PREFIX_STATE = "s#";
    FragmentEventDispatcher mFragmentEventDispatcher;
    final FragmentManager mFragmentManager;
    private FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final x mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final x mItemIdToViewHolder;
    final Lifecycle mLifecycle;
    private final x mSavedStates;

    private static abstract class DataSetChangeObserver extends RecyclerView.g {
        private DataSetChangeObserver() {
        }

        @Override
        public abstract void onChanged();

        @Override
        public final void onItemRangeChanged(int i10, int i11) {
            onChanged();
        }

        @Override
        public final void onItemRangeInserted(int i10, int i11) {
            onChanged();
        }

        @Override
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }

        @Override
        public final void onItemRangeRemoved(int i10, int i11) {
            onChanged();
        }

        @Override
        public final void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            onChanged();
        }
    }

    public @interface ExperimentalFragmentStateAdapterApi {
    }

    static class FragmentEventDispatcher {
        private List<FragmentTransactionCallback> mCallbacks = new CopyOnWriteArrayList();

        FragmentEventDispatcher() {
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchMaxLifecyclePreUpdated(Fragment fragment, Lifecycle.State state) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentMaxLifecyclePreUpdated(fragment, state));
            }
            return arrayList;
        }

        public void dispatchPostEvents(List<FragmentTransactionCallback.OnPostEventListener> list) {
            Iterator<FragmentTransactionCallback.OnPostEventListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onPost();
            }
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreAdded(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreAdded(fragment));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreRemoved(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreRemoved(fragment));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreSavedInstanceState(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().onFragmentPreSavedInstanceState(fragment));
            }
            return arrayList;
        }

        public void registerCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.add(fragmentTransactionCallback);
        }

        public void unregisterCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.mCallbacks.remove(fragmentTransactionCallback);
        }
    }

    class FragmentMaxLifecycleEnforcer {
        private RecyclerView.g mDataObserver;
        private r mLifecycleObserver;
        private ViewPager2.OnPageChangeCallback mPageChangeCallback;
        private long mPrimaryItemId = -1;
        private ViewPager2 mViewPager;

        FragmentMaxLifecycleEnforcer() {
        }

        @NonNull
        private ViewPager2 inferViewPager(@NonNull RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        void register(@NonNull RecyclerView recyclerView) {
            this.mViewPager = inferViewPager(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback() {
                @Override
                public void onPageScrollStateChanged(int i10) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }

                @Override
                public void onPageSelected(int i10) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mPageChangeCallback = onPageChangeCallback;
            this.mViewPager.registerOnPageChangeCallback(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() {
                @Override
                public void onChanged() {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(true);
                }
            };
            this.mDataObserver = dataSetChangeObserver;
            FragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            r rVar = new r() {
                @Override
                public void onStateChanged(@NonNull u uVar, @NonNull Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.updateFragmentMaxLifecycle(false);
                }
            };
            this.mLifecycleObserver = rVar;
            FragmentStateAdapter.this.mLifecycle.a(rVar);
        }

        void unregister(@NonNull RecyclerView recyclerView) {
            inferViewPager(recyclerView).unregisterOnPageChangeCallback(this.mPageChangeCallback);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.mDataObserver);
            FragmentStateAdapter.this.mLifecycle.d(this.mLifecycleObserver);
            this.mViewPager = null;
        }

        void updateFragmentMaxLifecycle(boolean z10) {
            int currentItem;
            Fragment fragment;
            if (FragmentStateAdapter.this.shouldDelayFragmentTransactions() || this.mViewPager.getScrollState() != 0 || FragmentStateAdapter.this.mFragments.i() || FragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= FragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = FragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.mPrimaryItemId || z10) && (fragment = (Fragment) FragmentStateAdapter.this.mFragments.e(itemId)) != null && fragment.isAdded()) {
                this.mPrimaryItemId = itemId;
                w wVarP = FragmentStateAdapter.this.mFragmentManager.p();
                ArrayList arrayList = new ArrayList();
                Fragment fragment2 = null;
                for (int i10 = 0; i10 < FragmentStateAdapter.this.mFragments.n(); i10++) {
                    long j10 = FragmentStateAdapter.this.mFragments.j(i10);
                    Fragment fragment3 = (Fragment) FragmentStateAdapter.this.mFragments.o(i10);
                    if (fragment3.isAdded()) {
                        if (j10 != this.mPrimaryItemId) {
                            Lifecycle.State state = Lifecycle.State.STARTED;
                            wVarP.v(fragment3, state);
                            arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(fragment3, state));
                        } else {
                            fragment2 = fragment3;
                        }
                        fragment3.setMenuVisibility(j10 == this.mPrimaryItemId);
                    }
                }
                if (fragment2 != null) {
                    Lifecycle.State state2 = Lifecycle.State.RESUMED;
                    wVarP.v(fragment2, state2);
                    arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchMaxLifecyclePreUpdated(fragment2, state2));
                }
                if (wVarP.q()) {
                    return;
                }
                wVarP.k();
                Collections.reverse(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    FragmentStateAdapter.this.mFragmentEventDispatcher.dispatchPostEvents((List) it.next());
                }
            }
        }
    }

    public static abstract class FragmentTransactionCallback {

        @NonNull
        private static final OnPostEventListener NO_OP = new OnPostEventListener() {
            @Override
            public void onPost() {
            }
        };

        public interface OnPostEventListener {
            void onPost();
        }

        @NonNull
        public OnPostEventListener onFragmentMaxLifecyclePreUpdated(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener onFragmentPreAdded(@NonNull Fragment fragment) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener onFragmentPreRemoved(@NonNull Fragment fragment) {
            return NO_OP;
        }

        @NonNull
        @ExperimentalFragmentStateAdapterApi
        public OnPostEventListener onFragmentPreSavedInstanceState(@NonNull Fragment fragment) {
            return NO_OP;
        }
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    @NonNull
    private static String createKey(@NonNull String str, long j10) {
        return str + j10;
    }

    private void ensureFragment(int i10) {
        long itemId = getItemId(i10);
        if (this.mFragments.d(itemId)) {
            return;
        }
        Fragment fragmentCreateFragment = createFragment(i10);
        fragmentCreateFragment.setInitialSavedState((Fragment.SavedState) this.mSavedStates.e(itemId));
        this.mFragments.k(itemId, fragmentCreateFragment);
    }

    private boolean isFragmentViewBound(long j10) {
        View view;
        if (this.mItemIdToViewHolder.d(j10)) {
            return true;
        }
        Fragment fragment = (Fragment) this.mFragments.e(j10);
        return (fragment == null || (view = fragment.getView()) == null || view.getParent() == null) ? false : true;
    }

    private static boolean isValidKey(@NonNull String str, @NonNull String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private Long itemForViewHolder(int i10) {
        Long lValueOf = null;
        for (int i11 = 0; i11 < this.mItemIdToViewHolder.n(); i11++) {
            if (((Integer) this.mItemIdToViewHolder.o(i11)).intValue() == i10) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(this.mItemIdToViewHolder.j(i11));
            }
        }
        return lValueOf;
    }

    private static long parseIdFromKey(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private void removeFragment(long j10) {
        ViewParent parent;
        Fragment fragment = (Fragment) this.mFragments.e(j10);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j10)) {
            this.mSavedStates.l(j10);
        }
        if (!fragment.isAdded()) {
            this.mFragments.l(j10);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            this.mHasStaleFragments = true;
            return;
        }
        if (fragment.isAdded() && containsItem(j10)) {
            List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreSavedInstanceState = this.mFragmentEventDispatcher.dispatchPreSavedInstanceState(fragment);
            Fragment.SavedState savedStateB1 = this.mFragmentManager.B1(fragment);
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreSavedInstanceState);
            this.mSavedStates.k(j10, savedStateB1);
        }
        List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreRemoved = this.mFragmentEventDispatcher.dispatchPreRemoved(fragment);
        try {
            this.mFragmentManager.p().r(fragment).k();
            this.mFragments.l(j10);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreRemoved);
        }
    }

    private void scheduleGracePeriodEnd() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() {
            @Override
            public void run() {
                FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
                fragmentStateAdapter.mIsInGracePeriod = false;
                fragmentStateAdapter.gcFragments();
            }
        };
        this.mLifecycle.a(new r() {
            @Override
            public void onStateChanged(@NonNull u uVar, @NonNull Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    uVar.getLifecycle().d(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    private void scheduleViewAttach(final Fragment fragment, @NonNull final FrameLayout frameLayout) {
        this.mFragmentManager.p1(new FragmentManager.k() {
            @Override
            public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2, @NonNull View view, @Nullable Bundle bundle) {
                if (fragment2 == fragment) {
                    fragmentManager.N1(this);
                    FragmentStateAdapter.this.addViewToContainer(view, frameLayout);
                }
            }
        }, false);
    }

    void addViewToContainer(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public boolean containsItem(long j10) {
        return j10 >= 0 && j10 < ((long) getItemCount());
    }

    @NonNull
    public abstract Fragment createFragment(int i10);

    void gcFragments() {
        if (!this.mHasStaleFragments || shouldDelayFragmentTransactions()) {
            return;
        }
        b bVar = new b();
        for (int i10 = 0; i10 < this.mFragments.n(); i10++) {
            long j10 = this.mFragments.j(i10);
            if (!containsItem(j10)) {
                bVar.add(Long.valueOf(j10));
                this.mItemIdToViewHolder.l(j10);
            }
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i11 = 0; i11 < this.mFragments.n(); i11++) {
                long j11 = this.mFragments.j(i11);
                if (!isFragmentViewBound(j11)) {
                    bVar.add(Long.valueOf(j11));
                }
            }
        }
        Iterator it = bVar.iterator();
        while (it.hasNext()) {
            removeFragment(((Long) it.next()).longValue());
        }
    }

    @Override
    public long getItemId(int i10) {
        return i10;
    }

    @Override
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        i.a(this.mFragmentMaxLifecycleEnforcer == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.register(recyclerView);
    }

    @Override
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.unregister(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    void placeFragmentInViewHolder(@NonNull final FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = (Fragment) this.mFragments.e(fragmentViewHolder.getItemId());
        if (fragment == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
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
            if (this.mFragmentManager.L0()) {
                return;
            }
            this.mLifecycle.a(new r() {
                @Override
                public void onStateChanged(@NonNull u uVar, @NonNull Lifecycle.Event event) {
                    if (FragmentStateAdapter.this.shouldDelayFragmentTransactions()) {
                        return;
                    }
                    uVar.getLifecycle().d(this);
                    if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
                        FragmentStateAdapter.this.placeFragmentInViewHolder(fragmentViewHolder);
                    }
                }
            });
            return;
        }
        scheduleViewAttach(fragment, container);
        List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreAdded = this.mFragmentEventDispatcher.dispatchPreAdded(fragment);
        try {
            fragment.setMenuVisibility(false);
            this.mFragmentManager.p().e(fragment, "f" + fragmentViewHolder.getItemId()).v(fragment, Lifecycle.State.STARTED).k();
            this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
        } finally {
            this.mFragmentEventDispatcher.dispatchPostEvents(listDispatchPreAdded);
        }
    }

    public void registerFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.registerCallback(fragmentTransactionCallback);
    }

    @Override
    public final void restoreState(@NonNull Parcelable parcelable) {
        if (!this.mSavedStates.i() || !this.mFragments.i()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (isValidKey(str, KEY_PREFIX_FRAGMENT)) {
                this.mFragments.k(parseIdFromKey(str, KEY_PREFIX_FRAGMENT), this.mFragmentManager.u0(bundle, str));
            } else {
                if (!isValidKey(str, KEY_PREFIX_STATE)) {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
                long idFromKey = parseIdFromKey(str, KEY_PREFIX_STATE);
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (containsItem(idFromKey)) {
                    this.mSavedStates.k(idFromKey, savedState);
                }
            }
        }
        if (this.mFragments.i()) {
            return;
        }
        this.mHasStaleFragments = true;
        this.mIsInGracePeriod = true;
        gcFragments();
        scheduleGracePeriodEnd();
    }

    @Override
    @NonNull
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.mFragments.n() + this.mSavedStates.n());
        for (int i10 = 0; i10 < this.mFragments.n(); i10++) {
            long j10 = this.mFragments.j(i10);
            Fragment fragment = (Fragment) this.mFragments.e(j10);
            if (fragment != null && fragment.isAdded()) {
                this.mFragmentManager.o1(bundle, createKey(KEY_PREFIX_FRAGMENT, j10), fragment);
            }
        }
        for (int i11 = 0; i11 < this.mSavedStates.n(); i11++) {
            long j11 = this.mSavedStates.j(i11);
            if (containsItem(j11)) {
                bundle.putParcelable(createKey(KEY_PREFIX_STATE, j11), (Parcelable) this.mSavedStates.e(j11));
            }
        }
        return bundle;
    }

    @Override
    public final void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    boolean shouldDelayFragmentTransactions() {
        return this.mFragmentManager.T0();
    }

    public void unregisterFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.mFragmentEventDispatcher.unregisterCallback(fragmentTransactionCallback);
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    @Override
    public final void onBindViewHolder(@NonNull FragmentViewHolder fragmentViewHolder, int i10) {
        long itemId = fragmentViewHolder.getItemId();
        int id2 = fragmentViewHolder.getContainer().getId();
        Long lItemForViewHolder = itemForViewHolder(id2);
        if (lItemForViewHolder != null && lItemForViewHolder.longValue() != itemId) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.l(lItemForViewHolder.longValue());
        }
        this.mItemIdToViewHolder.k(itemId, Integer.valueOf(id2));
        ensureFragment(i10);
        if (ViewCompat.isAttachedToWindow(fragmentViewHolder.getContainer())) {
            placeFragmentInViewHolder(fragmentViewHolder);
        }
        gcFragments();
    }

    @Override
    @NonNull
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return FragmentViewHolder.create(viewGroup);
    }

    @Override
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        placeFragmentInViewHolder(fragmentViewHolder);
        gcFragments();
    }

    @Override
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long lItemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (lItemForViewHolder != null) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.l(lItemForViewHolder.longValue());
        }
    }

    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.mFragments = new x();
        this.mSavedStates = new x();
        this.mItemIdToViewHolder = new x();
        this.mFragmentEventDispatcher = new FragmentEventDispatcher();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManager;
        this.mLifecycle = lifecycle;
        super.setHasStableIds(true);
    }
}
