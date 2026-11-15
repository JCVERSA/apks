package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.transsion.playercommon.R;
import com.transsion.playercommon.utils.storage.MountPointManager;
import defpackage.av3;
import java.util.ArrayList;
import java.util.List;

public class BreadcrumbsView extends RelativeLayout {
    public SlowHorizontalScrollView b;
    public View c;
    public Context d;
    public MountPointManager e;
    public b f;
    public final List g;
    public int h;
    public a i;

    public interface a {
        void a(String str);
    }

    public class b {
        public LinearLayout a;
        public String b;
        public boolean c = true;
        public int d = 0;

        public b() {
            this.a = (LinearLayout) BreadcrumbsView.this.c.findViewById(R.id.tabs_holder);
        }

        public void b(String str, boolean z, boolean z2) {
            TextView textView = new TextView(BreadcrumbsView.this.d);
            textView.setTextColor(BreadcrumbsView.this.d.getResources().getColor(R.color.navigation_text_color_normal));
            textView.setMaxWidth(BreadcrumbsView.this.d.getResources().getDimensionPixelSize(R.dimen.navigationbutton_maxsize));
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setSingleLine(true);
            textView.setText(str);
            textView.setElevation(this.d);
            textView.setTextSize(14.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(new ViewGroup.MarginLayoutParams(-2, -1));
            Resources resources = BreadcrumbsView.this.d.getResources();
            TypedValue typedValue = new TypedValue();
            BreadcrumbsView.this.d.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
            int i = typedValue.data;
            if (av3.z()) {
                if (z) {
                    layoutParams.setMargins((int) BreadcrumbsView.this.d.getResources().getDimension(R.dimen.tab_item_padding_start), 0, (int) resources.getDimension(z2 ? R.dimen.tab_item_padding_start : R.dimen.tab_margin_left), 0);
                    textView.setTextColor(i);
                } else {
                    int i2 = z2 ? R.dimen.tab_item_padding_start : R.dimen.tab_margin_left;
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, BreadcrumbsView.this.getContext().getDrawable(R.drawable.breadcrumbs_left_arrow), (Drawable) null);
                    textView.setCompoundDrawablePadding(BreadcrumbsView.this.d.getResources().getDimensionPixelOffset(R.dimen.tab_margin_left));
                    layoutParams.setMargins(0, 0, (int) resources.getDimension(i2), 0);
                    textView.setTextColor(BreadcrumbsView.this.h);
                }
            } else if (z) {
                layoutParams.setMargins((int) resources.getDimension(z2 ? R.dimen.tab_item_padding_start : R.dimen.tab_margin_left), 0, (int) resources.getDimension(R.dimen.tab_item_padding_start), 0);
                textView.setTextColor(i);
            } else {
                int i3 = z2 ? R.dimen.tab_item_padding_start : R.dimen.tab_margin_left;
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, BreadcrumbsView.this.getContext().getDrawable(R.drawable.breadcrumbs_right_arrow), (Drawable) null);
                textView.setCompoundDrawablePadding(BreadcrumbsView.this.d.getResources().getDimensionPixelOffset(R.dimen.tab_margin_left));
                layoutParams.setMargins((int) resources.getDimension(i3), 0, 0, 0);
                textView.setTextColor(BreadcrumbsView.this.h);
            }
            textView.setLayoutParams(layoutParams);
            textView.setGravity(17);
            if (z) {
                textView.setClickable(false);
            } else {
                textView.setTag(resources.getString(R.string.file_title));
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.c(view);
                    }
                });
            }
            this.a.addView(textView);
            textView.setId(BreadcrumbsView.this.g.size());
            BreadcrumbsView.this.g.add(str);
            this.d--;
        }

        public final void c(View view) {
            if (this.c) {
                g(view.getId());
            }
        }

        public void d(String str) {
            this.a.removeViews(0, this.a.getChildCount());
            BreadcrumbsView.this.g.clear();
            this.b = str;
            if (str != null) {
                if (BreadcrumbsView.this.e.l(this.b)) {
                    b(BreadcrumbsView.this.getResources().getString(R.string.file_title), true, true);
                    return;
                }
                b(BreadcrumbsView.this.getResources().getString(R.string.file_title), false, true);
                String[] strArrSplit = BreadcrumbsView.this.e.e(this.b).split("/");
                int i = 0;
                while (i < strArrSplit.length) {
                    b(strArrSplit[i], i == strArrSplit.length - 1, false);
                    i++;
                }
                if (av3.r() == 0) {
                    f();
                } else if (av3.r() == 1) {
                    BreadcrumbsView.this.b.startHorizontalScroll(-BreadcrumbsView.this.b.getScrollX(), -BreadcrumbsView.this.b.getRight());
                }
            }
        }

        public void e(boolean z) {
            this.c = z;
        }

        public final void f() {
            int childCount = this.a.getChildCount();
            int childCount2 = BreadcrumbsView.this.b.getChildCount();
            if (childCount <= 2 || childCount2 < 1) {
                return;
            }
            BreadcrumbsView.this.b.startHorizontalScroll(BreadcrumbsView.this.b.getScrollX(), BreadcrumbsView.this.b.getChildAt(childCount2 - 1).getRight() - BreadcrumbsView.this.b.getScrollX());
        }

        public boolean g(int i) {
            if (i >= BreadcrumbsView.this.g.size() - 1) {
                return false;
            }
            int size = (BreadcrumbsView.this.g.size() - 1) - i;
            this.a.removeViews(i + 1, size);
            for (int i2 = 0; i2 < size; i2++) {
                BreadcrumbsView.this.g.remove(BreadcrumbsView.this.g.size() - 1);
            }
            if (i == 0) {
                this.b = BreadcrumbsView.this.e.i();
            } else {
                String strH = BreadcrumbsView.this.e.h(this.b);
                String strSubstring = this.b.substring(strH.length() + 1);
                StringBuilder sb = new StringBuilder(strH);
                String[] strArrSplit = strSubstring.split("/");
                for (int i3 = 2; i3 <= i; i3++) {
                    sb.append("/");
                    sb.append(strArrSplit[i3 - 2]);
                }
                this.b = sb.toString();
            }
            if (BreadcrumbsView.this.i != null) {
                BreadcrumbsView.this.i.a(this.b);
            }
            d(this.b);
            return true;
        }
    }

    public BreadcrumbsView(Context context) {
        this(context, null);
    }

    public void addItemClickListener(a aVar) {
        this.i = aVar;
    }

    public int getItemViewCount() {
        return this.g.size();
    }

    public final void h(Context context, AttributeSet attributeSet) {
        this.d = context;
        MountPointManager mountPointManagerF = MountPointManager.f();
        this.e = mountPointManagerF;
        mountPointManagerF.k(Utils.a());
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.navigation_path_bar, this);
        this.c = viewInflate;
        SlowHorizontalScrollView slowHorizontalScrollView = (SlowHorizontalScrollView) viewInflate.findViewById(R.id.navigation_bar);
        this.b = slowHorizontalScrollView;
        slowHorizontalScrollView.setVerticalScrollBarEnabled(false);
        this.b.setHorizontalScrollBarEnabled(false);
        this.f = new b();
        this.h = this.d.getResources().getColor(R.color.path_color);
    }

    public boolean onBackPressed() {
        if (this.g.size() <= 1) {
            return false;
        }
        return this.f.g(this.g.size() - 2);
    }

    public void refreshTab(String str) {
        this.f.d(str);
    }

    public void setTabClickEnable(boolean z) {
        this.f.e(z);
    }

    public void setTextColor(int i) {
        this.h = this.d.getResources().getColor(i);
        invalidate();
    }

    public BreadcrumbsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BreadcrumbsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = null;
        this.g = new ArrayList();
        h(context, attributeSet);
    }
}
