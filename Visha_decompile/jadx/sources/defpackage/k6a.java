package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.TextSelectorAdapter;
import com.transsion.magicvideo.subtitle.widgets.SubtitleVideoView;
import com.transsion.playercommon.widgets.TranOsSeekbar;
import com.transsion.widgetslib.widget.seekbar.OSSectionSeekbar;
import java.util.List;

public abstract class k6a {
    public static int a = 0;
    public static boolean b = false;
    public static final int[] c = {R.color.subtitle_color_1, R.color.subtitle_color_2, R.color.subtitle_color_3, R.color.subtitle_color_4, R.color.subtitle_color_5, R.color.subtitle_color_6, R.color.subtitle_color_7, R.color.subtitle_color_8, R.color.subtitle_color_9, R.color.subtitle_color_10, R.color.subtitle_color_11, R.color.subtitle_color_12, R.color.subtitle_color_13, R.color.subtitle_color_14};
    public static final int[] d = {R.dimen.subtitle_text_size_small, R.dimen.subtitle_text_size_medium, R.dimen.subtitle_text_size_large};
    public static final int[] e = {R.style.subtitle_appearance_small, R.style.subtitle_appearance_medium, R.style.subtitle_appearance_large};
    public static final int[] f = {4, 2, 3};
    public static final int[] g = {17, GravityCompat.START, GravityCompat.END};

    public class a implements OSSectionSeekbar.c {
        public final d a;

        public a(d dVar) {
            this.a = dVar;
        }

        @Override
        public void a(OSSectionSeekbar oSSectionSeekbar) {
        }

        @Override
        public void b(OSSectionSeekbar oSSectionSeekbar, int i, float f, boolean z) {
        }

        @Override
        public void c(OSSectionSeekbar oSSectionSeekbar) {
        }

        @Override
        public void d(OSSectionSeekbar oSSectionSeekbar, int i, float f, boolean z) {
            d dVar = this.a;
            if (dVar != null) {
                dVar.b(i);
            }
        }
    }

    public class b implements SeekBar.OnSeekBarChangeListener {
        public final d b;

        public b(d dVar) {
            this.b = dVar;
        }

        @Override
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            d dVar = this.b;
            if (dVar != null) {
                dVar.b(i);
            }
        }

        @Override
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    public class c implements TranOsSeekbar.i {
        public final d a;

        public c(d dVar) {
            this.a = dVar;
        }

        @Override
        public void a(TranOsSeekbar tranOsSeekbar, int i, float f, boolean z) {
            d dVar = this.a;
            if (dVar != null) {
                dVar.b(i);
            }
        }

        @Override
        public void b(TranOsSeekbar tranOsSeekbar) {
        }

        @Override
        public void c(TranOsSeekbar tranOsSeekbar) {
        }
    }

    public interface d {
        default void a(int i) {
        }

        default void b(int i) {
        }
    }

    public static int b(woc wocVar) {
        if (wocVar == null) {
            return Utils.a().getResources().getDimensionPixelOffset(R.dimen.subtitle_location_margin_bottom);
        }
        int i = wocVar.a;
        if (i == 0) {
            if (wocVar.c) {
                return com.transsion.utils.a.d(Utils.a(), 180.0f);
            }
            return com.transsion.utils.a.d(Utils.a(), wocVar.g ? 30.0f : 240.0f);
        }
        if (i != 2 && i == 3) {
            return com.transsion.utils.a.d(Utils.a(), 20.0f);
        }
        return com.transsion.utils.a.d(Utils.a(), 180.0f);
    }

    public static int c(int i) {
        return c[i];
    }

    public static RelativeLayout.LayoutParams d(RelativeLayout.LayoutParams layoutParams, int i, boolean z, woc wocVar, SubtitleVideoView subtitleVideoView) {
        if (i == 0) {
            layoutParams.addRule(13);
            layoutParams.removeRule(10);
            layoutParams.removeRule(12);
            layoutParams.bottomMargin = 0;
            layoutParams.topMargin = 0;
        } else if (i == 1) {
            layoutParams.addRule(10);
            layoutParams.removeRule(13);
            layoutParams.removeRule(12);
            Application applicationA = Utils.a();
            layoutParams.topMargin = z ? applicationA.getResources().getDimensionPixelOffset(R.dimen.subtitle_location_margin) : com.transsion.utils.a.n(applicationA);
            layoutParams.bottomMargin = 0;
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.removeRule(13);
            layoutParams.removeRule(10);
            layoutParams.bottomMargin = z ? Utils.a().getResources().getDimensionPixelOffset(R.dimen.subtitle_location_margin) : b(wocVar);
            layoutParams.topMargin = 0;
        } else if (i == 3) {
            layoutParams.addRule(12);
            layoutParams.removeRule(13);
            layoutParams.removeRule(10);
            layoutParams.bottomMargin = Utils.a().getResources().getDimensionPixelOffset(R.dimen.subtitle_location_margin_pip);
            layoutParams.topMargin = 0;
            if (subtitleVideoView != null) {
                SubtitleSettingData subtitleSettingData = new SubtitleSettingData(0);
                subtitleVideoView.setTextAlignment(e(subtitleSettingData.textAlignment));
                subtitleVideoView.setTextSize(Utils.a().getResources().getDimensionPixelOffset(g(subtitleSettingData.textSize)));
                subtitleVideoView.setTextAppearance(f(subtitleSettingData.textStyle));
                subtitleVideoView.setTextColor(Utils.a().getResources().getColor(c(subtitleSettingData.textColor), Utils.a().getTheme()));
                subtitleVideoView.setTextBackground(ColorUtils.setAlphaComponent(Utils.a().getResources().getColor(c(subtitleSettingData.textBackgroundColor), Utils.a().getTheme()), (subtitleSettingData.textBackgroundOpacity * 255) / 100));
            }
        } else if (i == 4) {
            layoutParams.removeRule(13);
            layoutParams.removeRule(10);
            layoutParams.removeRule(12);
            layoutParams.bottomMargin = 0;
            layoutParams.topMargin = a;
        }
        return layoutParams;
    }

    public static int e(int i) {
        return f[i];
    }

    public static int f(int i) {
        return e[i];
    }

    public static int g(int i) {
        return d[i];
    }

    public static void h(d dVar, PopupWindow popupWindow, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (dVar != null) {
            dVar.a(i);
        }
        popupWindow.dismiss();
    }

    public static void i(SeekBar seekBar, d dVar, boolean z, Context context) {
        seekBar.setMax(13);
        seekBar.setKeyProgressIncrement(1);
        seekBar.setThumbOffset(olb.h(context, 1));
        seekBar.setOnSeekBarChangeListener(new b(dVar));
    }

    public static void j(TranOsSeekbar tranOsSeekbar, Context context, d dVar) {
        tranOsSeekbar.setThumbInsideColor(context.getResources().getColor(R.color.selection_seekbar_thumb_center_color, context.getTheme()));
        tranOsSeekbar.setOnProgressChangedListener(new c(dVar));
    }

    public static void k(OSSectionSeekbar oSSectionSeekbar, Context context, d dVar) {
        OSSectionSeekbar.b configBuilder = oSSectionSeekbar.getConfigBuilder();
        configBuilder.c(context.getResources().getColor(R.color.selection_seekbar_dots_color, context.getTheme()));
        configBuilder.e(context.getResources().getColor(R.color.selection_seekbar_thumb_center_color, context.getTheme()));
        configBuilder.b(false);
        configBuilder.d(2);
        configBuilder.a();
        oSSectionSeekbar.setOnProgressChangedListener(new a(dVar));
    }

    public static void l(int i, View view, Context context, final d dVar, List list, boolean z) {
        RecyclerView recyclerView = (RecyclerView) View.inflate(context, R.layout.rv_text_selector, null);
        recyclerView.setVerticalScrollBarEnabled(true);
        recyclerView.setScrollBarStyle(50331648);
        recyclerView.setScrollBarSize(6);
        final PopupWindow popupWindow = new PopupWindow(context);
        popupWindow.setAnimationStyle(com.transsion.playercommon.R.style.popup_anim);
        popupWindow.setElevation(context.getResources().getDimension(com.transsion.playercommon.R.dimen.os_popup_menu_shadow_size));
        popupWindow.setBackgroundDrawable(context.getResources().getDrawable(com.transsion.playercommon.R.drawable.os_popup_background, context.getTheme()));
        popupWindow.setContentView(recyclerView);
        if (z) {
            popupWindow.setHeight(com.transsion.utils.a.d(context, Math.max(list.size() * 48, 172)));
        } else {
            popupWindow.setHeight(com.transsion.utils.a.d(context, 172.0f));
        }
        popupWindow.setOutsideTouchable(true);
        if (Build.VERSION.SDK_INT > 29) {
            popupWindow.setFocusable(true);
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    popupWindow.showAsDropDown(view, -10, 10);
                }
            }
        } else {
            popupWindow.setFocusable(false);
            if (context instanceof Activity) {
                Activity activity2 = (Activity) context;
                if (!activity2.isFinishing() && !activity2.isDestroyed()) {
                    popupWindow.showAsDropDown(view, -10, 10);
                }
            }
            popupWindow.getContentView().setSystemUiVisibility(4870);
            popupWindow.setFocusable(true);
            popupWindow.update();
        }
        TextSelectorAdapter textSelectorAdapter = new TextSelectorAdapter(context, z);
        recyclerView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        recyclerView.setAdapter(textSelectorAdapter);
        textSelectorAdapter.setNewData(list);
        textSelectorAdapter.r(i);
        textSelectorAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                k6a.h(dVar, popupWindow, baseQuickAdapter, view2, i2);
            }
        });
    }
}
