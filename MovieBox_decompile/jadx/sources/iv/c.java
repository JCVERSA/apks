package iv;

import android.app.Application;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.google.android.material.card.MaterialCardView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsnet.downloader.adapter.u0;
import com.transsnet.downloader.popup.q;
import kotlin.jvm.internal.Intrinsics;
import zg.h;

public final class c {

    private PopupWindow f62803a;

    private u0.b f62804b;

    private final View c(Context context, final boolean z10) {
        String string;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.popup_report_layout, (ViewGroup) null);
        viewInflate.findViewById(R$id.menu_item1).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                c.d(this.f62799a, z10, view);
            }
        });
        TextView textView = (TextView) viewInflate.findViewById(R$id.menu_item2);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                c.e(this.f62801a, z10, view);
            }
        });
        if (z10) {
            textView.setVisibility(8);
            string = textView.getResources().getString(R$string.str_unblock);
        } else {
            string = textView.getResources().getString(R$string.str_block);
        }
        textView.setText(string);
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    public static final void d(c cVar, boolean z10, View view) {
        u0.b bVar = cVar.f62804b;
        if (bVar != null) {
            bVar.b(0, 0, 2, z10);
        }
        PopupWindow popupWindow = cVar.f62803a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public static final void e(c cVar, boolean z10, View view) {
        u0.b bVar = cVar.f62804b;
        if (bVar != null) {
            bVar.b(0, 0, 1, z10);
        }
        PopupWindow popupWindow = cVar.f62803a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public final void f(u0.b listener) {
        Intrinsics.h(listener, "listener");
        this.f62804b = listener;
    }

    public final void g(View anchorView, boolean z10) {
        Intrinsics.h(anchorView, "anchorView");
        Context context = anchorView.getContext();
        Intrinsics.g(context, "getContext(...)");
        View viewC = c(context, z10);
        PopupWindow popupWindow = new PopupWindow(viewC, -2, -2, true);
        this.f62803a = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        int[] iArrA = q.f57348a.a(anchorView, viewC);
        h hVar = h.f76787a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        int iA = hVar.a(applicationA, 16.0f);
        int i10 = iArrA[0] - iA;
        iArrA[0] = i10;
        int i11 = iArrA[1] - iA;
        iArrA[1] = i11;
        PopupWindow popupWindow2 = this.f62803a;
        if (popupWindow2 != null) {
            popupWindow2.showAtLocation(anchorView, MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START, i10, i11);
        }
    }
}
