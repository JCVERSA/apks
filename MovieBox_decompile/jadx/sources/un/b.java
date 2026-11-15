package un;

import com.transsion.postdetail.bean.CommentListBean;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private a f73220a;

    private CommentListBean f73221b;

    public b(a commentBean, CommentListBean commentListBean) {
        Intrinsics.h(commentBean, "commentBean");
        this.f73220a = commentBean;
        this.f73221b = commentListBean;
    }

    public final a a() {
        return this.f73220a;
    }

    public final CommentListBean b() {
        return this.f73221b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f73220a, bVar.f73220a) && Intrinsics.c(this.f73221b, bVar.f73221b);
    }

    public int hashCode() {
        int iHashCode = this.f73220a.hashCode() * 31;
        CommentListBean commentListBean = this.f73221b;
        return iHashCode + (commentListBean == null ? 0 : commentListBean.hashCode());
    }

    public String toString() {
        return "SubCommentData(commentBean=" + this.f73220a + ", commentListBean=" + this.f73221b + ")";
    }
}
