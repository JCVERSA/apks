package vn;

import android.text.Editable;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.comment.i0;

public final class a {

    private int f73676a = 300;

    private i0 f73677b;

    private Editable f73678c;

    private CommentBean f73679d;

    public final i0 a() {
        return this.f73677b;
    }

    public final Editable b() {
        return this.f73678c;
    }

    public final int c() {
        return this.f73676a;
    }

    public final CommentBean d() {
        return this.f73679d;
    }

    public final void e() {
        this.f73679d = null;
        this.f73678c = null;
    }

    public final void f(i0 i0Var) {
        this.f73677b = i0Var;
    }

    public final void g(Editable editable) {
        this.f73678c = editable;
    }

    public final void h(int i10) {
        this.f73676a = i10;
    }

    public final void i(CommentBean commentBean) {
        this.f73679d = commentBean;
    }
}
