package com.cloud.tmc.miniapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.AddScreenView;
import com.cloud.tmc.miniapp.widget.ImmersiveTitleBarView;
import com.cloud.tmc.miniapp.widget.PageContainerView;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniapp.widget.TabBarView;
import f4.a;
import f4.b;

public final class OooO00o implements a {

    @NonNull
    public final ConstraintLayout OooO00o;

    @NonNull
    public final PageContainerView OooO0O0;

    @NonNull
    public final FrameLayout OooO0OO;

    @NonNull
    public final ImageView OooO0Oo;

    @NonNull
    public final TabBarView OooO0o;

    @NonNull
    public final ProgressBar OooO0o0;

    @NonNull
    public final ImmersiveTitleBarView OooO0oO;

    @NonNull
    public final View OooO0oo;

    public OooO00o(@NonNull ConstraintLayout constraintLayout, @NonNull AddScreenView addScreenView, @NonNull PageContainerView pageContainerView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ProgressBar progressBar, @NonNull StatusLayout statusLayout, @NonNull TabBarView tabBarView, @NonNull ImmersiveTitleBarView immersiveTitleBarView, @NonNull View view) {
        this.OooO00o = constraintLayout;
        this.OooO0O0 = pageContainerView;
        this.OooO0OO = frameLayout;
        this.OooO0Oo = imageView;
        this.OooO0o0 = progressBar;
        this.OooO0o = tabBarView;
        this.OooO0oO = immersiveTitleBarView;
        this.OooO0oo = view;
    }

    @NonNull
    public static OooO00o OooO00o(@NonNull LayoutInflater layoutInflater) {
        View viewA;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_mini, (ViewGroup) null, false);
        int i10 = R.id.addScreenView;
        AddScreenView addScreenView = (AddScreenView) b.a(viewInflate, i10);
        if (addScreenView != null) {
            i10 = R.id.f22829fl;
            PageContainerView pageContainerView = (PageContainerView) b.a(viewInflate, i10);
            if (pageContainerView != null) {
                i10 = R.id.fl_fullscreen;
                FrameLayout frameLayout = (FrameLayout) b.a(viewInflate, i10);
                if (frameLayout != null) {
                    i10 = R.id.fl_loading_mask;
                    FrameLayout frameLayout2 = (FrameLayout) b.a(viewInflate, i10);
                    if (frameLayout2 != null) {
                        i10 = R.id.iv_fullscreen_back;
                        ImageView imageView = (ImageView) b.a(viewInflate, i10);
                        if (imageView != null) {
                            i10 = R.id.iv_loading;
                            ImageView imageView2 = (ImageView) b.a(viewInflate, i10);
                            if (imageView2 != null) {
                                i10 = R.id.f22830pb;
                                ProgressBar progressBar = (ProgressBar) b.a(viewInflate, i10);
                                if (progressBar != null) {
                                    i10 = R.id.sl_status;
                                    StatusLayout statusLayout = (StatusLayout) b.a(viewInflate, i10);
                                    if (statusLayout != null) {
                                        i10 = R.id.tabBar;
                                        TabBarView tabBarView = (TabBarView) b.a(viewInflate, i10);
                                        if (tabBarView != null) {
                                            i10 = R.id.titleBar;
                                            ImmersiveTitleBarView immersiveTitleBarView = (ImmersiveTitleBarView) b.a(viewInflate, i10);
                                            if (immersiveTitleBarView != null && (viewA = b.a(viewInflate, (i10 = R.id.view_mask))) != null) {
                                                return new OooO00o((ConstraintLayout) viewInflate, addScreenView, pageContainerView, frameLayout, frameLayout2, imageView, imageView2, progressBar, statusLayout, tabBarView, immersiveTitleBarView, viewA);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override
    @NonNull
    public View getRoot() {
        return this.OooO00o;
    }
}
