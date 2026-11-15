package au;

import androidx.p009lifecycle.b0;
import java.util.LinkedList;
import kotlin.Unit;

public final class b extends b0 {

    private final LinkedList f15443l = new LinkedList();

    @Override
    public void n(Object obj) {
        synchronized (this.f15443l) {
            try {
                this.f15443l.add(obj);
                if (this.f15443l.size() == 1) {
                    super.n(obj);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void q(Object obj) {
        super.q(obj);
        synchronized (this.f15443l) {
            this.f15443l.pollFirst();
            Object objPeekFirst = this.f15443l.peekFirst();
            if (objPeekFirst != null) {
                super.n(objPeekFirst);
                Unit unit = Unit.f64096a;
            }
        }
    }
}
