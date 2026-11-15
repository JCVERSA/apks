package com.transsion.room.sub.activity.likes;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.widget.l;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.R$string;
import com.transsion.room.sub.activity.likes.UgcLikesActivity;
import com.transsion.room.sub.adapter.likes.b;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.d;
import ij.y;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfp/d;", "<init>", "()V", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "", "isSelected", "", "h0", "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V", "e0", "()Lfp/d;", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/os/Bundle;)V", "isTranslucent", "()Z", "isStatusDark", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UgcLikesActivity extends BaseActivity<d> {

    public static final class a implements TabLayout.OnTabSelectedListener {

        final ViewPager2 f49630b;

        a(ViewPager2 viewPager2) {
            this.f49630b = viewPager2;
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            UgcLikesActivity ugcLikesActivity = UgcLikesActivity.this;
            Intrinsics.e(tab);
            ugcLikesActivity.h0(tab, true);
            this.f49630b.setCurrentItem(tab.getPosition(), true);
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
            UgcLikesActivity ugcLikesActivity = UgcLikesActivity.this;
            Intrinsics.e(tab);
            ugcLikesActivity.h0(tab, false);
        }
    }

    public static final void f0(b bVar, UgcLikesActivity ugcLikesActivity, TabLayout.Tab tab, int i10) {
        Intrinsics.h(tab, "tab");
        tab.setText(bVar.h(i10));
        ugcLikesActivity.h0(tab, i10 == 0);
    }

    public static final void g0(UgcLikesActivity ugcLikesActivity, View view) {
        ugcLikesActivity.finish();
    }

    public final void h0(TabLayout.Tab tab, boolean isSelected) {
        View customView;
        TextView textView;
        if (tab.getCustomView() == null || (customView = tab.getCustomView()) == null || (textView = (TextView) customView.findViewById(R$id.tv_tab_title)) == null) {
            return;
        }
        textView.setTypeface(isSelected ? Typeface.create(Typeface.DEFAULT, 1) : Typeface.create(Typeface.DEFAULT, 0));
        l.p(textView, isSelected ? R$style.style_import_text : R$style.style_regular_text);
        textView.setTextSize(isSelected ? 16.0f : 14.0f);
        textView.setTextColor(androidx.core.content.b.getColor(this, isSelected ? R$color.white : R$color.white_80));
    }

    @Override
    public d getViewBinding() {
        d dVarC = d.c(getLayoutInflater());
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        if (savedInstanceState == null) {
            final b bVar = new b(this);
            ((d) getMViewBinding()).f60313h.setAdapter(bVar);
            TabLayout tabLayout = ((d) getMViewBinding()).f60311f;
            Intrinsics.g(tabLayout, "tabLayout");
            ViewPager2 viewPager2 = ((d) getMViewBinding()).f60313h;
            Intrinsics.g(viewPager2, "viewPager2");
            new TabLayoutMediator(tabLayout, viewPager2, new TabLayoutMediator.TabConfigurationStrategy() {
                @Override
                public final void onConfigureTab(TabLayout.Tab tab, int i10) {
                    UgcLikesActivity.f0(bVar, this, tab, i10);
                }
            }).attach();
            viewPager2.setCurrentItem(0, false);
            ((d) getMViewBinding()).f60309d.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UgcLikesActivity.g0(this.f65401a, view);
                }
            });
            tabLayout.removeAllTabs();
            for (String str : CollectionsKt.o(getString(R$string.play_hub), getString(R$string.buzz_box))) {
                TabLayout.Tab tabNewTab = tabLayout.newTab();
                Intrinsics.g(tabNewTab, "newTab(...)");
                View viewInflate = LayoutInflater.from(this).inflate(R$layout.ugc_likes_item_tab_custom, (ViewGroup) tabLayout, false);
                ((TextView) viewInflate.findViewById(R$id.tv_tab_title)).setText(str);
                tabNewTab.setCustomView(viewInflate);
                tabLayout.addTab(tabNewTab);
            }
            TabLayout.Tab tabAt = tabLayout.getTabAt(0);
            if (tabAt != null) {
                tabAt.select();
                h0(tabAt, true);
            }
            ((d) getMViewBinding()).f60311f.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new a(viewPager2));
        }
    }

    @Override
    public boolean isStatusDark() {
        return !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }
}
