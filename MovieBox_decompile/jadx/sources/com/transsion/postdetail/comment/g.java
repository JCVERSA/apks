package com.transsion.postdetail.comment;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.Window;
import android.view.WindowManager;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$style;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g extends androidx.appcompat.app.w {

    private m f46740a;

    private vn.a f46741b;

    public static final class a {

        private final Context f46742a;

        private vn.a f46743b;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f46742a = context;
            this.f46743b = new vn.a();
        }

        public final g a() {
            g gVar = new g(this.f46742a, null);
            gVar.k(this.f46743b);
            return gVar;
        }

        public final a b(Editable editable) {
            vn.a aVar = this.f46743b;
            if (aVar != null) {
                aVar.g(editable);
            }
            return this;
        }

        public final a c(i0 i0Var) {
            vn.a aVar = this.f46743b;
            if (aVar != null) {
                aVar.f(i0Var);
            }
            return this;
        }

        public final a d(int i10) {
            vn.a aVar = this.f46743b;
            if (aVar != null) {
                aVar.h(i10);
            }
            return this;
        }

        public final a e(CommentBean commentBean) {
            vn.a aVar = this.f46743b;
            if (aVar != null) {
                aVar.i(commentBean);
            }
            return this;
        }
    }

    public g(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final void i() {
        m mVar = this.f46740a;
        if (mVar != null) {
            mVar.k(this.f46741b);
        }
        m mVar2 = this.f46740a;
        if (mVar2 != null) {
            mVar2.B();
        }
    }

    private final void m() {
        m mVar = this.f46740a;
        if (mVar != null) {
            mVar.z();
        }
    }

    public final void f() {
        m mVar = this.f46740a;
        if (mVar != null) {
            mVar.g();
        }
    }

    public final vn.a g() {
        return this.f46741b;
    }

    public final m h() {
        return this.f46740a;
    }

    public final void j(Editable editable) {
        vn.a aVar = this.f46741b;
        if (aVar != null) {
            aVar.g(editable);
        }
    }

    public final void k(vn.a aVar) {
        this.f46741b = aVar;
    }

    public final void l() {
        m mVar = this.f46740a;
        if (mVar != null) {
            mVar.y();
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        i();
    }

    @Override
    protected void onStop() {
        super.onStop();
        m();
    }

    private g(Context context) {
        super(context, R$style.CommentEditInputDialogTheme);
        setContentView(R$layout.dialog_comment_input_edit);
        setCancelable(true);
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
        this.f46740a = new m(null, this, null, true, 5, null);
    }
}
