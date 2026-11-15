package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.SelectionAdapter;
import java.util.List;

public class fd8 {
    public final Context a;
    public PopupWindow b;
    public RecyclerView c;
    public SelectionAdapter d;
    public a e;

    public interface a {
        void a(int i, ub9 ub9Var);

        default void onDismiss() {
        }
    }

    public fd8(Context context) {
        this.a = context;
        f();
    }

    public final void c(int i) {
        int iE = e(48);
        boolean z = i > 7;
        int i2 = z ? iE * 7 : iE * i;
        ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
        layoutParams.height = i2;
        this.c.setLayoutParams(layoutParams);
        this.c.setVerticalScrollBarEnabled(z);
        if (z) {
            this.c.setScrollBarStyle(0);
            this.c.setScrollbarFadingEnabled(true);
        }
        this.b.setWidth(e(137));
    }

    public void d() {
        PopupWindow popupWindow = this.b;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.b.dismiss();
    }

    public final int e(int i) {
        return (int) TypedValue.applyDimension(1, i, this.a.getResources().getDisplayMetrics());
    }

    public final void f() {
        View viewInflate = LayoutInflater.from(this.a).inflate(R.layout.layout_universal_selector, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_view);
        this.c = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this.a));
        this.c.addItemDecoration(new DividerItemDecoration(this.a, 1));
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        this.b = popupWindow;
        popupWindow.setAnimationStyle(R.style.PopupAnimation);
        this.b.setOutsideTouchable(true);
        this.b.setFocusable(true);
        this.b.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public final void onDismiss() {
                this.b.g();
            }
        });
    }

    public final void g() {
        a aVar = this.e;
        if (aVar != null) {
            aVar.onDismiss();
        }
    }

    public final void h(int i, ub9 ub9Var) {
        this.d.r(i);
        a aVar = this.e;
        if (aVar != null) {
            aVar.a(i, ub9Var);
        }
        d();
    }

    public void i(View view, List list, a aVar) {
        this.e = aVar;
        SelectionAdapter selectionAdapter = new SelectionAdapter(list);
        this.d = selectionAdapter;
        selectionAdapter.setOnItemClickListener(new SelectionAdapter.a() {
            @Override
            public final void a(int i, ub9 ub9Var) {
                this.a.h(i, ub9Var);
            }
        });
        this.c.setAdapter(this.d);
        c(list.size());
        j(view);
    }

    public final void j(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        int width = view.getWidth();
        int height = view.getHeight();
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        int i3 = displayMetrics.widthPixels;
        int i4 = displayMetrics.heightPixels;
        this.b.getContentView().measure(0, 0);
        int measuredWidth = this.b.getContentView().getMeasuredWidth();
        int measuredHeight = this.b.getContentView().getMeasuredHeight();
        if (i + measuredWidth > i3) {
            i = (i + width) - measuredWidth;
        }
        if (i < 0) {
            i = 0;
        }
        int iE = height + i2 + e(20);
        int i5 = iE + measuredHeight;
        if (i5 > i4) {
            int i6 = i2 - measuredHeight;
            if (i6 >= 0) {
                iE = i6;
            } else if (i5 > i4) {
                iE = (i4 - measuredHeight) - e(10);
            }
        }
        this.b.showAtLocation(view, 0, i, iE);
    }
}
