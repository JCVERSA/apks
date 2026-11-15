package jm;

import com.transsion.moviedetailapi.bean.Subject;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    private final Subject f63184a;

    /* JADX WARN: Multi-variable type inference failed */
    public j() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final Subject a() {
        return this.f63184a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && Intrinsics.c(this.f63184a, ((j) obj).f63184a);
    }

    public int hashCode() {
        Subject subject = this.f63184a;
        if (subject == null) {
            return 0;
        }
        return subject.hashCode();
    }

    public String toString() {
        return "PosterDetailEvent(mMovieDetailBean=" + this.f63184a + ")";
    }

    public j(Subject subject) {
        this.f63184a = subject;
    }

    public j(Subject subject, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : subject);
    }
}
