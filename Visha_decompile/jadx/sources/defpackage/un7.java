package defpackage;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import com.transsion.xuanniao.account.bind.contact.view.BindingEmergencyContactActivity;
import com.transsion.xuanniao.account.comm.widget.EmailInput;

public class un7 implements EmailInput.b {
    public final BindingEmergencyContactActivity a;

    public un7(BindingEmergencyContactActivity bindingEmergencyContactActivity) {
        this.a = bindingEmergencyContactActivity;
    }

    @Override
    public void q(boolean z) {
        BindingEmergencyContactActivity bindingEmergencyContactActivity = this.a;
        int[] iArr = new int[2];
        bindingEmergencyContactActivity.h.getLocationInWindow(iArr);
        Rect rect = new Rect();
        View decorView = bindingEmergencyContactActivity.getWindow().getDecorView();
        decorView.getWindowVisibleDisplayFrame(rect);
        if (bindingEmergencyContactActivity.l == 0) {
            bindingEmergencyContactActivity.l = bindingEmergencyContactActivity.h.getHeight() + iArr[1];
        }
        boolean z2 = ((double) rect.height()) / ((double) decorView.getHeight()) < 0.7d;
        StringBuilder sbA = xo7.a("originalEmailBottom:");
        sbA.append(bindingEmergencyContactActivity.l);
        Log.d("com.palm.id.log", sbA.toString());
        if (z2) {
            bindingEmergencyContactActivity.k = rect.bottom - bindingEmergencyContactActivity.l;
        }
        StringBuilder sbA2 = xo7.a("space:");
        sbA2.append(bindingEmergencyContactActivity.k);
        Log.d("com.palm.id.log", sbA2.toString());
        if (bindingEmergencyContactActivity.k < c39.a(150.0f) && z) {
            bindingEmergencyContactActivity.m.animate().translationY(bindingEmergencyContactActivity.k - c39.a(150.0f)).setDuration(50L).start();
        } else {
            Log.d("com.palm.id.log", "No Change");
            bindingEmergencyContactActivity.m.setTranslationY(0.0f);
        }
    }
}
