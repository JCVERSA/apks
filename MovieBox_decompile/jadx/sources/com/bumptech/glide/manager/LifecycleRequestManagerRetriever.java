package com.bumptech.glide.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class LifecycleRequestManagerRetriever {

    @NonNull
    private final RequestManagerRetriever.RequestManagerFactory factory;
    final Map<androidx.p009lifecycle.Lifecycle, RequestManager> lifecycleToRequestManager = new HashMap();

    private final class SupportRequestManagerTreeNode implements RequestManagerTreeNode {
        private final FragmentManager childFragmentManager;

        SupportRequestManagerTreeNode(FragmentManager fragmentManager) {
            this.childFragmentManager = fragmentManager;
        }

        private void getChildFragmentsRecursive(FragmentManager fragmentManager, Set<RequestManager> set) {
            List listY0 = fragmentManager.y0();
            int size = listY0.size();
            for (int i10 = 0; i10 < size; i10++) {
                Fragment fragment = (Fragment) listY0.get(i10);
                getChildFragmentsRecursive(fragment.getChildFragmentManager(), set);
                RequestManager only = LifecycleRequestManagerRetriever.this.getOnly(fragment.getLifecycle());
                if (only != null) {
                    set.add(only);
                }
            }
        }

        @Override
        @NonNull
        public Set<RequestManager> getDescendants() {
            HashSet hashSet = new HashSet();
            getChildFragmentsRecursive(this.childFragmentManager, hashSet);
            return hashSet;
        }
    }

    LifecycleRequestManagerRetriever(@NonNull RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.factory = requestManagerFactory;
    }

    RequestManager getOnly(androidx.p009lifecycle.Lifecycle lifecycle) {
        Util.assertMainThread();
        return this.lifecycleToRequestManager.get(lifecycle);
    }

    RequestManager getOrCreate(Context context, Glide glide, final androidx.p009lifecycle.Lifecycle lifecycle, FragmentManager fragmentManager, boolean z10) {
        Util.assertMainThread();
        RequestManager only = getOnly(lifecycle);
        if (only != null) {
            return only;
        }
        LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
        RequestManager requestManagerBuild = this.factory.build(glide, lifecycleLifecycle, new SupportRequestManagerTreeNode(fragmentManager), context);
        this.lifecycleToRequestManager.put(lifecycle, requestManagerBuild);
        lifecycleLifecycle.addListener(new LifecycleListener() {
            @Override
            public void onDestroy() {
                LifecycleRequestManagerRetriever.this.lifecycleToRequestManager.remove(lifecycle);
            }

            @Override
            public void onStart() {
            }

            @Override
            public void onStop() {
            }
        });
        if (z10) {
            requestManagerBuild.onStart();
        }
        return requestManagerBuild;
    }
}
