package bs;

import android.view.View;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.Subject;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {

    public static final C0136a f15880g = new C0136a(null);

    private final int f15881a;

    private final View f15882b;

    private final Subject f15883c;

    private final OperateItem f15884d;

    private final int f15885e;

    private final boolean f15886f;

    public static final class C0136a {
        public C0136a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0136a() {
        }
    }

    public a(int i10, View view, Subject subject, OperateItem operateItem, int i11, boolean z10) {
        this.f15881a = i10;
        this.f15882b = view;
        this.f15883c = subject;
        this.f15884d = operateItem;
        this.f15885e = i11;
        this.f15886f = z10;
    }

    public final OperateItem a() {
        return this.f15884d;
    }

    public final Subject b() {
        return this.f15883c;
    }

    public final int c() {
        return this.f15885e;
    }

    public final int d() {
        return this.f15881a;
    }

    public final View e() {
        return this.f15882b;
    }

    public final boolean f() {
        return this.f15886f;
    }

    public a(int i10, View view, Subject subject, OperateItem operateItem, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i12 & 2) != 0 ? null : view, (i12 & 4) != 0 ? null : subject, (i12 & 8) == 0 ? operateItem : null, (i12 & 16) != 0 ? 0 : i11, (i12 & 32) == 0 ? z10 : false);
    }
}
