package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.tools.t0;
import java.util.List;

public class ToolBar extends LinearLayout {
    public static final String BACKWARD = "backward";
    public static final String EXITS = "exits";
    public static final String FORWARD = "forward";
    public static final String OPEN_BY_BROWSER = "open_by_browser";
    public static final String REFRESH = "refresh";
    public String title;
    public TextView titleView;

    public static class a {

        public static int f35651b = 40;

        public int f35652a;

        public void a(int i10) {
            this.f35652a = i10;
        }

        public void b(int i10) {
            f35651b = i10;
        }

        public int a() {
            return f35651b;
        }
    }

    public static class b {

        public String f35653a;

        public String f35654b;

        public boolean f35655c = true;

        public View.OnClickListener f35656d;

        public b(String str) {
            this.f35653a = str;
        }

        public b a(View.OnClickListener onClickListener) {
            this.f35656d = onClickListener;
            return this;
        }

        public b a(String str) {
            this.f35654b = str;
            return this;
        }

        public b a(boolean z10) {
            this.f35655c = z10;
            return this;
        }
    }

    public ToolBar(Context context) {
        super(context);
        c();
    }

    private void a(a aVar, List<b> list) {
        setOrientation(0);
        try {
            int iA = t0.a(getContext(), 10.0f);
            setPadding(0, iA, t0.a(getContext(), 20.0f), iA);
        } catch (Exception unused) {
        }
        try {
            for (b bVar : list) {
                ImageView imageView = (ImageView) b();
                imageView.setTag(bVar.f35653a);
                imageView.setImageDrawable(getResources().getDrawable(getResources().getIdentifier(bVar.f35654b, "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(aVar.a(), -1);
                layoutParams.setMargins(32, 0, 32, 0);
                imageView.setLayoutParams(layoutParams);
                imageView.setOnClickListener(bVar.f35656d);
                if (!bVar.f35655c) {
                    imageView.setVisibility(8);
                }
                addView(imageView);
            }
        } catch (Exception unused2) {
        }
    }

    private View b() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        imageView.setLayoutParams(layoutParams);
        imageView.setClickable(true);
        return imageView;
    }

    private void c() {
        setOrientation(0);
        try {
            int iA = t0.a(getContext(), 10.0f);
            setPadding(0, iA, 0, iA);
        } catch (Exception unused) {
        }
        try {
            ImageView imageView = (ImageView) b();
            imageView.setTag(BACKWARD);
            imageView.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_backward", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView);
        } catch (Exception unused2) {
        }
        try {
            ImageView imageView2 = (ImageView) b();
            imageView2.setTag(FORWARD);
            imageView2.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_forward", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView2);
        } catch (Exception unused3) {
        }
        try {
            ImageView imageView3 = (ImageView) b();
            imageView3.setTag(REFRESH);
            imageView3.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_refresh", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView3);
        } catch (Exception unused4) {
        }
        try {
            ImageView imageView4 = (ImageView) b();
            imageView4.setTag(OPEN_BY_BROWSER);
            imageView4.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_browser", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView4);
        } catch (Exception unused5) {
        }
        try {
            ImageView imageView5 = (ImageView) b();
            imageView5.setTag(EXITS);
            imageView5.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_exits", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView5);
        } catch (Exception unused6) {
        }
    }

    public View getItem(String str) {
        return findViewWithTag(str);
    }

    public void hideTitle() {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText("");
        }
    }

    public void setButtonIcon(String str, String str2) {
        ((ImageView) findViewWithTag(str)).setImageDrawable(getResources().getDrawable(getResources().getIdentifier(str2, "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
    }

    public void setOnItemClickListener(View.OnClickListener onClickListener) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).setOnClickListener(onClickListener);
        }
    }

    public void setTitle(String str, int i10) {
        this.title = str;
        if (this.titleView == null) {
            TextView textView = (TextView) a();
            this.titleView = textView;
            textView.setPadding(64, 0, 10, 0);
            this.titleView.setTextColor(i10);
            addView(this.titleView, 0);
        }
        this.titleView.setText(str);
    }

    public void showTitle() {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(this.title);
        }
    }

    public ToolBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public ToolBar(Context context, List<b> list) {
        super(context);
        a(list);
    }

    public ToolBar(Context context, AttributeSet attributeSet, List<b> list) {
        super(context, attributeSet);
        a(list);
    }

    public void setTitle(String str) {
        setTitle(str, ViewCompat.MEASURED_STATE_MASK);
    }

    public ToolBar(Context context, a aVar, List<b> list) {
        super(context);
        a(aVar, list);
    }

    public ToolBar(Context context, AttributeSet attributeSet, a aVar, List<b> list) {
        super(context, attributeSet);
        a(aVar, list);
    }

    private void a(List<b> list) {
        setOrientation(0);
        try {
            int iA = t0.a(getContext(), 10.0f);
            setPadding(0, iA, 0, iA);
        } catch (Exception unused) {
        }
        try {
            for (b bVar : list) {
                ImageView imageView = (ImageView) b();
                imageView.setTag(bVar.f35653a);
                imageView.setImageDrawable(getResources().getDrawable(getResources().getIdentifier(bVar.f35654b, "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                imageView.setOnClickListener(bVar.f35656d);
                if (!bVar.f35655c) {
                    imageView.setVisibility(8);
                }
                addView(imageView);
            }
        } catch (Exception unused2) {
        }
    }

    private View a() {
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        textView.setLayoutParams(layoutParams);
        textView.setClickable(true);
        return textView;
    }
}
