package ik;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.i;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

public final class b extends Dialog {

    private hk.b f62130a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    public static final void b(b bVar, View view) {
        bVar.dismiss();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hk.b bVarC = hk.b.c(getLayoutInflater());
        this.f62130a = bVarC;
        hk.b bVar = null;
        if (bVarC == null) {
            Intrinsics.y("viewBinding");
            bVarC = null;
        }
        setContentView(bVarC.getRoot());
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(null);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes != null) {
                attributes.gravity = 17;
            }
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (attributes2 != null) {
                attributes2.width = y.e() - i.e(70.0f);
            }
        }
        float fE = i.e(8.0f);
        hk.b bVar2 = this.f62130a;
        if (bVar2 == null) {
            Intrinsics.y("viewBinding");
            bVar2 = null;
        }
        LinearLayout root = bVar2.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        jk.a.a(root, fE);
        hk.b bVar3 = this.f62130a;
        if (bVar3 == null) {
            Intrinsics.y("viewBinding");
            bVar3 = null;
        }
        AppCompatTextView btnOk = bVar3.f61375b;
        Intrinsics.g(btnOk, "btnOk");
        jk.a.a(btnOk, fE);
        hk.b bVar4 = this.f62130a;
        if (bVar4 == null) {
            Intrinsics.y("viewBinding");
        } else {
            bVar = bVar4;
        }
        bVar.f61375b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                b.b(this.f62129a, view);
            }
        });
    }
}
