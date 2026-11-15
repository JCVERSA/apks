package defpackage;

import android.view.View;
import android.view.Window;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetPanel;
import com.transsion.widgetsbottomsheet.followsoft.BottomSheetTranslateDeferringInsetsAnimationCallback;
import com.transsion.widgetslib.view.followsoft.RootViewDeferringInsetsCallback;

public abstract class sj0 {
    public static void a(Window window, OSBottomSheetPanel oSBottomSheetPanel, boolean z, boolean z2, boolean z3, View view, View... viewArr) {
        WindowCompat.setDecorFitsSystemWindows(window, z);
        RootViewDeferringInsetsCallback rootViewDeferringInsetsCallback = new RootViewDeferringInsetsCallback(z3, WindowInsetsCompat.Type.navigationBars(), WindowInsetsCompat.Type.ime(), z);
        ViewCompat.setWindowInsetsAnimationCallback(view, rootViewDeferringInsetsCallback);
        ViewCompat.setOnApplyWindowInsetsListener(view, rootViewDeferringInsetsCallback);
        if (z2) {
            for (View view2 : viewArr) {
                rootViewDeferringInsetsCallback.a(view2);
                BottomSheetTranslateDeferringInsetsAnimationCallback bottomSheetTranslateDeferringInsetsAnimationCallback = new BottomSheetTranslateDeferringInsetsAnimationCallback(view2, oSBottomSheetPanel, WindowInsetsCompat.Type.systemBars(), WindowInsetsCompat.Type.ime(), 1);
                ViewCompat.setWindowInsetsAnimationCallback(view2, bottomSheetTranslateDeferringInsetsAnimationCallback);
                ViewCompat.setOnApplyWindowInsetsListener(view2, bottomSheetTranslateDeferringInsetsAnimationCallback);
            }
        }
    }
}
