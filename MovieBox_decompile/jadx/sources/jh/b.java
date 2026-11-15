package jh;

import com.tn.tranpay.bean.QueryOrderResultContent;
import com.tn.tranpay.bean.QueryStatus;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final QueryOrderResultContent f63127a;

    private final QueryStatus f63128b;

    public b(QueryOrderResultContent queryOrderResultContent, QueryStatus status) {
        Intrinsics.h(status, "status");
        this.f63127a = queryOrderResultContent;
        this.f63128b = status;
    }

    public final QueryOrderResultContent a() {
        return this.f63127a;
    }

    public final QueryStatus b() {
        return this.f63128b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f63127a, bVar.f63127a) && this.f63128b == bVar.f63128b;
    }

    public int hashCode() {
        QueryOrderResultContent queryOrderResultContent = this.f63127a;
        return ((queryOrderResultContent == null ? 0 : queryOrderResultContent.hashCode()) * 31) + this.f63128b.hashCode();
    }

    public String toString() {
        return "QueryOrderResult(content=" + this.f63127a + ", status=" + this.f63128b + ")";
    }
}
