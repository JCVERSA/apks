package f1;

import android.R;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.PopupWindow;

public class c implements PopupWindow.OnDismissListener {

    public static final boolean f796b;

    public final PopupWindow f797a;

    static {
        f796b = Build.VERSION.SDK_INT < 21;
    }

    public c(Context context) {
        PopupWindow popupWindow = new PopupWindow(LayoutInflater.from(t0.b.k(768) ? new ContextThemeWrapper(context, R.style.Theme.DeviceDefault.Dialog) : context).inflate(ru.zdevs.zarchiver.R.layout.menu_view_mode, (ViewGroup) null, false), -2, -2, true);
        this.f797a = popupWindow;
        popupWindow.setOutsideTouchable(true);
        popupWindow.setInputMethodMode(1);
        if (Build.VERSION.SDK_INT >= 23) {
            if (!t0.b.k(1536)) {
                popupWindow.setElevation(8.0f);
            }
            popupWindow.setWindowLayoutType(1002);
        } else {
            popupWindow.setBackgroundDrawable(new ColorDrawable(context.getResources().getColor(z0.c.b(context, ru.zdevs.zarchiver.R.attr.isLightActionBar) ? ru.zdevs.zarchiver.R.color.ab_background_material_light : ru.zdevs.zarchiver.R.color.ab_background_material_dark)));
        }
        popupWindow.setOnDismissListener(this);
    }

    public final void a(Window window, View view) {
        int i2;
        View viewFindViewById;
        View decorView = window.getDecorView();
        PopupWindow popupWindow = this.f797a;
        try {
            if (view != null) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                decorView.getLocationOnScreen(iArr2);
                iArr[0] = iArr[0] - iArr2[0];
                int i3 = iArr[1] - iArr2[1];
                iArr[1] = i3;
                if (Build.VERSION.SDK_INT >= 21) {
                    i2 = 48;
                } else if (i3 > view.getHeight() * 3) {
                    iArr[1] = view.getHeight();
                    i2 = 80;
                } else {
                    iArr[1] = view.getHeight() + iArr[1];
                    i2 = 48;
                }
                popupWindow.showAtLocation(view, i2 | 8388611, iArr[0], iArr[1]);
            } else {
                if (f796b && (viewFindViewById = decorView.findViewById(decorView.getContext().getResources().getIdentifier("action_bar_container", "id", "android"))) != null) {
                    int[] iArr3 = new int[2];
                    viewFindViewById.getLocationOnScreen(iArr3);
                    try {
                        popupWindow.showAtLocation(viewFindViewById, 8388659, viewFindViewById.getWidth(), viewFindViewById.getHeight() + iArr3[1]);
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                popupWindow.showAtLocation(decorView, 8388659, decorView.getWidth(), 0);
            }
        } catch (Exception unused2) {
        }
    }
}
