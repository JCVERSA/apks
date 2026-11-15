package com.transsion.audio.widgets;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.viewpager.widget.ViewPager;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.adapter.RtlViewPageAdapter;
import com.transsion.widgets.CustomViewPager;
import defpackage.hb0;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.ry5;
import defpackage.vf;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(api = 26)
public class AppWidgetMusicDialog {
    public static final int FROM_AUDIO = 0;
    public static final int FROM_MORE = 1;
    int from;
    private Context mContext;
    RtlViewPageAdapter mPageAdapter;
    CustomViewPager mPager;
    View mSpotA;
    View mSpotB;
    View mSpotC;
    List<View> mImageViews = new ArrayList();
    List<View> mSpots = new ArrayList();
    int mIndex = 0;

    private View getView(int i) {
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_music_appwidget_page, null);
        ((ImageView) viewInflate.findViewById(R.id.img)).setImageResource(i);
        return viewInflate;
    }

    private void init() {
        this.mImageViews.clear();
        this.mSpots.clear();
        this.mSpots.add(this.mSpotA);
        this.mSpots.add(this.mSpotB);
        this.mSpots.add(this.mSpotC);
        this.mImageViews.add(getView(R.drawable.ic_music_widget));
        this.mImageViews.add(getView(R.drawable.ic_music_widget_second_large));
        this.mImageViews.add(getView(R.drawable.ic_music_widget_third));
    }

    @RequiresApi(api = 26)
    private void initItemClick(View view) {
        this.mSpotA = view.findViewById(R.id.spot_1);
        this.mSpotB = view.findViewById(R.id.spot_2);
        this.mSpotC = view.findViewById(R.id.spot_3);
        this.mPager = (CustomViewPager) view.findViewById(R.id.pager);
        init();
        this.mPageAdapter = new RtlViewPageAdapter(this.mImageViews);
        this.mPager.setOffscreenPageLimit(this.mImageViews.size());
        this.mPager.setAdapter(this.mPageAdapter);
        this.mPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrollStateChanged(int i) {
            }

            @Override
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override
            public void onPageSelected(int i) {
                AppWidgetMusicDialog appWidgetMusicDialog = AppWidgetMusicDialog.this;
                appWidgetMusicDialog.mIndex = i;
                ry5.n(i + 1, appWidgetMusicDialog.from);
                AppWidgetMusicDialog.this.updateUI(i);
            }
        });
        OverScrollDecorHelper.setUpOverScroll(this.mPager);
        updateUI(0);
        ry5.n(this.mIndex + 1, this.from);
        ry5.m(this.from);
        this.mPager.setCurrentItem(this.mIndex);
    }

    public void lambda$showDialog$0(DialogInterface dialogInterface, int i) {
        vf.g(this.mContext, this.mIndex);
        hb0.markDirect("vd_widget_add_show_checkpop_show");
        ry5.h(this.mIndex + 1, this.from);
    }

    public static AppWidgetMusicDialog newInstance(Context context, int i) {
        AppWidgetMusicDialog appWidgetMusicDialog = new AppWidgetMusicDialog();
        appWidgetMusicDialog.mContext = context;
        appWidgetMusicDialog.from = i;
        return appWidgetMusicDialog;
    }

    public void updateUI(int i) {
        int i2 = 0;
        while (i2 < this.mSpots.size()) {
            this.mSpots.get(i2).setBackgroundResource(i2 != i ? R.drawable.ic_page_dot_unselected : R.drawable.ic_page_dot_selected);
            i2++;
        }
    }

    public View onCreateView() {
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_music_appwidget, null);
        initItemClick(viewInflate);
        return viewInflate;
    }

    public void showDialog(Context context) {
        if (context == null) {
            return;
        }
        MMKV.p().t("music_widget_show_count", MMKV.p().g("music_widget_show_count", 0) + 1);
        MMKV.p().u("music_widget_show_date", System.currentTimeMillis());
        new com.transsion.widgetslib.dialog.d.a(context).B(r0a.e(pp3.c ? R.string.visha_add_widget_guide_pre : R.string.visha_add_widget_guide)).E(onCreateView()).w(r0a.e(R.string.ok), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.lambda$showDialog$0(dialogInterface, i);
            }
        }).n(r0a.e(R.string.cancel), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                hb0.markDirect("vd_widget_add_show_close");
            }
        }).F();
    }
}
