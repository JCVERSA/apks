package defpackage;

import java.util.Iterator;
import java.util.List;

public interface qj3 extends tr8 {
    default void addSubscription(qc2 qc2Var) {
        if (qc2Var == null || qc2Var == qc2.A1) {
            return;
        }
        getSubscriptions().add(qc2Var);
    }

    default void closeAllSubscription() {
        Iterator it = getSubscriptions().iterator();
        while (it.hasNext()) {
            ((qc2) it.next()).close();
        }
        getSubscriptions().clear();
    }

    List getSubscriptions();

    @Override
    default void release() {
        closeAllSubscription();
    }
}
