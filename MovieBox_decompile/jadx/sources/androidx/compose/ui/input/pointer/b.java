package androidx.compose.ui.input.pointer;

import kotlin.coroutines.Continuation;

public abstract class b {
    public static Object a(c cVar, PointerEventPass pointerEventPass, Continuation continuation, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitPointerEvent");
        }
        if ((i10 & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return cVar.m0(pointerEventPass, continuation);
    }
}
