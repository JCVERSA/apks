package defpackage;

import java.util.List;
import java.util.Map;
import kotlin.reflect.KVisibility;

public interface be5 extends zd5 {
    Object call(Object... objArr);

    Object callBy(Map map);

    String getName();

    List getParameters();

    ff5 getReturnType();

    List getTypeParameters();

    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
