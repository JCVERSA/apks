package mo;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.w;
import com.blankj.utilcode.util.KeyboardUtils;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$style;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ro.j;

public final class b extends w {

    private j f66659a;

    private InterfaceC0816b f66660b;

    private View f66661c;

    public static final class a {

        private final Context f66662a;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f66662a = context;
        }

        public final b a(InterfaceC0816b listener, View view) {
            Intrinsics.h(listener, "listener");
            return new b(this.f66662a, listener, view, null);
        }
    }

    public interface InterfaceC0816b {
        void completeLoad();
    }

    public b(Context context, InterfaceC0816b interfaceC0816b, View view, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, interfaceC0816b, view);
    }

    public static final boolean g(b bVar, DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        if (i10 != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        bVar.dismiss();
        return false;
    }

    private final void h() {
    }

    private final void i() {
    }

    @Override
    public void dismiss() {
        View viewJ;
        super.dismiss();
        this.f66661c = null;
        j jVar = this.f66659a;
        if (jVar == null || (viewJ = jVar.j()) == null) {
            return;
        }
        KeyboardUtils.e(viewJ);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        h();
    }

    @Override
    protected void onStop() {
        super.onStop();
        i();
    }

    private b(Context context, InterfaceC0816b interfaceC0816b, View view) {
        super(context, R$style.CommentEditInputDialogTheme);
        this.f66660b = interfaceC0816b;
        this.f66661c = view;
        setContentView(R$layout.dialog_link_input_edit);
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes != null) {
                if (attributes.width != -1) {
                    attributes.width = -1;
                }
                if (attributes.height != -2) {
                    attributes.height = -2;
                }
                window.setAttributes(attributes);
                window.setSoftInputMode(4);
            }
        }
        this.f66659a = new j(null, this, interfaceC0816b, this.f66661c, true, 1, null);
        ro.b bVar = new ro.b();
        j jVar = this.f66659a;
        if (jVar != null) {
            jVar.k(bVar);
        }
        setOnKeyListener(new DialogInterface.OnKeyListener() {
            @Override
            public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                return b.g(this.f66658a, dialogInterface, i10, keyEvent);
            }
        });
    }
}
