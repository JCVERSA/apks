package defpackage;

import java.util.Collection;
import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

public abstract class ufc {
    public static final CallableMemberDescriptor a(Collection collection) {
        Integer numD;
        y45.j(collection, "descriptors");
        collection.isEmpty();
        Iterator it = collection.iterator();
        CallableMemberDescriptor callableMemberDescriptor = null;
        while (it.hasNext()) {
            CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) it.next();
            if (callableMemberDescriptor == null || ((numD = b92.d(callableMemberDescriptor.getVisibility(), callableMemberDescriptor2.getVisibility())) != null && numD.intValue() < 0)) {
                callableMemberDescriptor = callableMemberDescriptor2;
            }
        }
        y45.g(callableMemberDescriptor);
        return callableMemberDescriptor;
    }
}
