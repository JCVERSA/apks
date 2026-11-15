package kotlinx.coroutines;

import com.transsion.livecaption.constant.ICode;
import defpackage.c74;
import defpackage.cr0;
import defpackage.e5;
import defpackage.e74;
import defpackage.er0;
import defpackage.fr0;
import defpackage.hb0;
import defpackage.jgc;
import defpackage.jr0;
import defpackage.k17;
import defpackage.kc2;
import defpackage.kk1;
import defpackage.oa9;
import defpackage.ok1;
import defpackage.qt1;
import defpackage.tb1;
import defpackage.u3;
import defpackage.u74;
import defpackage.uc2;
import defpackage.uv0;
import defpackage.vb1;
import defpackage.w17;
import defpackage.wb1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y7a;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javassist.compiler.ast.MethodDecl;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\u0017\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0082\b¢\u0006\u0004\b\u0017\u0010\u0018J%\u0010\u001b\u001a\u00020\u00152\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u00192\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001d\u0010\u000fJ\u000f\u0010\u001e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001e\u0010\u000fJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J!\u0010'\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\tH\u0002¢\u0006\u0004\b*\u0010+J[\u00103\u001a\u0004\u0018\u00010\"\"\u0004\b\u0001\u0010,2\u0006\u0010&\u001a\u00020-2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2 \u00101\u001a\u001c\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0015\u0018\u00010/2\b\u00102\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b3\u00104JK\u00106\u001a\u0004\u0018\u000105\"\u0004\b\u0001\u0010,2\u0006\u0010.\u001a\u00028\u00012\b\u00102\u001a\u0004\u0018\u00010\"2 \u00101\u001a\u001c\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0002¢\u0006\u0004\b6\u00107J\u0019\u00109\u001a\u0002082\b\u0010.\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0015H\u0002¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0015H\u0016¢\u0006\u0004\b=\u0010<J\u000f\u0010>\u001a\u00020\rH\u0001¢\u0006\u0004\b>\u0010\u000fJ\u0017\u0010A\u001a\n\u0018\u00010?j\u0004\u0018\u0001`@H\u0016¢\u0006\u0004\bA\u0010BJ\u0011\u0010E\u001a\u0004\u0018\u00010\"H\u0010¢\u0006\u0004\bC\u0010DJ!\u0010I\u001a\u00020\u00152\b\u0010F\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0011\u001a\u00020\u0010H\u0010¢\u0006\u0004\bG\u0010HJ\u0019\u0010J\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\bJ\u0010\u0013J\u0017\u0010M\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\bK\u0010LJ\u001f\u0010O\u001a\u00020\u00152\u0006\u0010#\u001a\u00020N2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\bO\u0010PJC\u0010R\u001a\u00020\u0015\"\u0004\b\u0001\u0010,2\u001e\u00101\u001a\u001a\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u00150/2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010Q\u001a\u00028\u0001¢\u0006\u0004\bR\u0010SJ\u0017\u0010V\u001a\u00020\u00102\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bV\u0010WJ\u0011\u0010X\u001a\u0004\u0018\u00010\"H\u0001¢\u0006\u0004\bX\u0010DJ\u000f\u0010Z\u001a\u00020\u0015H\u0000¢\u0006\u0004\bY\u0010<J\u001d\u0010]\u001a\u00020\u00152\f\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000[H\u0016¢\u0006\u0004\b]\u0010%J-\u0010_\u001a\u00020\u00152\u0006\u0010Q\u001a\u00028\u00002\u0014\u00101\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0015\u0018\u00010^H\u0016¢\u0006\u0004\b_\u0010`JC\u0010_\u001a\u00020\u0015\"\b\b\u0001\u0010,*\u00028\u00002\u0006\u0010Q\u001a\u00028\u00012 \u00101\u001a\u001c\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0016¢\u0006\u0004\b_\u0010aJ#\u0010c\u001a\u00020\u00152\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u00192\u0006\u0010b\u001a\u00020\tH\u0016¢\u0006\u0004\bc\u0010dJ)\u0010c\u001a\u00020\u00152\u0018\u0010#\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u00150^j\u0002`eH\u0016¢\u0006\u0004\bc\u0010fJ\u0017\u0010i\u001a\u00020\u00152\u0006\u0010#\u001a\u00020NH\u0000¢\u0006\u0004\bg\u0010hJI\u0010l\u001a\u00020\u0015\"\u0004\b\u0001\u0010,2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2\"\b\u0002\u00101\u001a\u001c\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0000¢\u0006\u0004\bj\u0010kJ\u000f\u0010n\u001a\u00020\u0015H\u0000¢\u0006\u0004\bm\u0010<J#\u0010\u001e\u001a\u0004\u0018\u00010\"2\u0006\u0010Q\u001a\u00028\u00002\b\u00102\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b\u001e\u0010oJO\u0010\u001e\u001a\u0004\u0018\u00010\"\"\b\b\u0001\u0010,*\u00028\u00002\u0006\u0010Q\u001a\u00028\u00012\b\u00102\u001a\u0004\u0018\u00010\"2 \u00101\u001a\u001c\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0016¢\u0006\u0004\b\u001e\u0010pJ\u0019\u0010r\u001a\u0004\u0018\u00010\"2\u0006\u0010q\u001a\u00020\u0010H\u0016¢\u0006\u0004\br\u0010sJ\u0017\u0010u\u001a\u00020\u00152\u0006\u0010t\u001a\u00020\"H\u0016¢\u0006\u0004\bu\u0010%J\u001b\u0010w\u001a\u00020\u0015*\u00020v2\u0006\u0010Q\u001a\u00028\u0000H\u0016¢\u0006\u0004\bw\u0010xJ\u001b\u0010y\u001a\u00020\u0015*\u00020v2\u0006\u0010q\u001a\u00020\u0010H\u0016¢\u0006\u0004\by\u0010zJ\u001f\u0010}\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010&\u001a\u0004\u0018\u00010\"H\u0010¢\u0006\u0004\b{\u0010|J\u001c\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00102\b\u0010&\u001a\u0004\u0018\u00010\"H\u0010¢\u0006\u0004\b~\u0010\u007fJ\u0013\u0010\u0082\u0001\u001a\u00030\u0081\u0001H\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0013\u0010\u0084\u0001\u001a\u00030\u0081\u0001H\u0014¢\u0006\u0006\b\u0084\u0001\u0010\u0083\u0001R#\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0000X\u0080\u0004¢\u0006\u000f\n\u0005\b\b\u0010\u0085\u0001\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001f\u0010\u0088\u0001\u001a\u0002008\u0016X\u0096\u0004¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R\u0018\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u008c\u0001\u0010!R\u0018\u0010\u008f\u0001\u001a\u00030\u0081\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008e\u0001\u0010\u0083\u0001R\u0017\u0010&\u001a\u0004\u0018\u00010\"8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0090\u0001\u0010DR\u0016\u0010\u0091\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0091\u0001\u0010\u000fR\u0016\u0010\u0092\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0092\u0001\u0010\u000fR\u0016\u0010\u0093\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0093\u0001\u0010\u000fR\u001f\u0010\u0096\u0001\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R\r\u0010\u0098\u0001\u001a\u00030\u0097\u00018\u0002X\u0082\u0004R\u0015\u0010\u009a\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\"0\u0099\u00018\u0002X\u0082\u0004R\u0015\u0010\u009b\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u0099\u00018\u0002X\u0082\u0004¨\u0006\u009c\u0001"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lcr0;", "Lok1;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Ljgc;", "Lwh1;", "delegate", "", "resumeMode", MethodDecl.initName, "(Lwh1;I)V", "", "isReusable", "()Z", "", "cause", "cancelLater", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function0;", "Lzfb;", "block", "callCancelHandlerSafely", "(Lc74;)V", "Loa9;", "segment", "callSegmentOnCancellation", "(Loa9;Ljava/lang/Throwable;)V", "trySuspend", "tryResume", "Luc2;", "installParentHandle", "()Luc2;", "", "handler", "invokeOnCancellationImpl", "(Ljava/lang/Object;)V", ICode.CALL.CALL_KEY_STATE, "multipleHandlersError", "(Ljava/lang/Object;Ljava/lang/Object;)V", hb0.KEY_NAME_MODE, "dispatchResume", "(I)V", "R", "Lw17;", "proposedUpdate", "Lkotlin/Function3;", "Lkotlin/coroutines/d;", "onCancellation", "idempotent", "resumedState", "(Lw17;Ljava/lang/Object;ILu74;Ljava/lang/Object;)Ljava/lang/Object;", "Ly7a;", "tryResumeImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lu74;)Ly7a;", "", "alreadyResumedError", "(Ljava/lang/Object;)Ljava/lang/Void;", "detachChildIfNonResuable", "()V", "initCancellability", "resetStateReusable", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "takenState", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "cancel", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "Lkotlinx/coroutines/b;", "callCancelHandler", "(Lkotlinx/coroutines/b;Ljava/lang/Throwable;)V", ES6Iterator.VALUE_PROPERTY, "callOnCancellation", "(Lu74;Ljava/lang/Throwable;Ljava/lang/Object;)V", "Lkotlinx/coroutines/j;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/j;)Ljava/lang/Throwable;", "getResult", "releaseClaimedReusableContinuation$kotlinx_coroutines_core", "releaseClaimedReusableContinuation", "Lkotlin/Result;", "result", "resumeWith", "Lkotlin/Function1;", "resume", "(Ljava/lang/Object;Le74;)V", "(Ljava/lang/Object;Lu74;)V", "index", "invokeOnCancellation", "(Loa9;I)V", "Lkotlinx/coroutines/CompletionHandler;", "(Le74;)V", "invokeOnCancellationInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/b;)V", "invokeOnCancellationInternal", "resumeImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;ILu74;)V", "resumeImpl", "detachChild$kotlinx_coroutines_core", "detachChild", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;Lu74;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "token", "completeResume", "Lkotlinx/coroutines/c;", "resumeUndispatched", "(Lkotlinx/coroutines/c;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/c;Ljava/lang/Throwable;)V", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "", "toString", "()Ljava/lang/String;", "nameString", "Lwh1;", "getDelegate$kotlinx_coroutines_core", "()Lwh1;", "context", "Lkotlin/coroutines/d;", "getContext", "()Lkotlin/coroutines/d;", "getParentHandle", "parentHandle", "getStateDebugRepresentation", "stateDebugRepresentation", "getState$kotlinx_coroutines_core", "isActive", "isCompleted", "isCancelled", "getCallerFrame", "()Lok1;", "callerFrame", "Lkotlinx/atomicfu/AtomicInt;", "_decisionAndIndex", "Lkotlinx/atomicfu/AtomicRef;", "_state", "_parentHandle", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements cr0, ok1, jgc {
    private volatile int _decisionAndIndex$volatile;
    private volatile Object _parentHandle$volatile;
    private volatile Object _state$volatile;
    private final kotlin.coroutines.d context;
    private final wh1<T> delegate;
    private static final AtomicIntegerFieldUpdater _decisionAndIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex$volatile");
    private static final AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state$volatile");
    private static final AtomicReferenceFieldUpdater _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle$volatile");

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(wh1<? super T> wh1Var, int i) {
        super(i);
        this.delegate = wh1Var;
        this.context = wh1Var.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = e5.b;
    }

    private final Void alreadyResumedError(Object proposedUpdate) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + proposedUpdate).toString());
    }

    private final void callCancelHandlerSafely(c74 block) {
        try {
            block.invoke();
        } catch (Throwable th) {
            kk1.a(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    private final void callSegmentOnCancellation(oa9 segment, Throwable cause) {
        int i = _decisionAndIndex$volatile$FU.get(this) & 536870911;
        if (i == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            segment.s(i, cause, getContext());
        } catch (Throwable th) {
            kk1.a(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    private final boolean cancelLater(Throwable cause) {
        if (!isReusable()) {
            return false;
        }
        wh1<T> wh1Var = this.delegate;
        y45.h(wh1Var, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((DispatchedContinuation) wh1Var).postponeCancellation$kotlinx_coroutines_core(cause);
    }

    private final void detachChildIfNonResuable() {
        if (isReusable()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    private final void dispatchResume(int mode) {
        if (tryResume()) {
            return;
        }
        kc2.a(this, mode);
    }

    private final uc2 getParentHandle() {
        return (uc2) _parentHandle$volatile$FU.get(this);
    }

    private final String getStateDebugRepresentation() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof w17) {
            return "Active";
        }
        return state$kotlinx_coroutines_core instanceof jr0 ? "Cancelled" : "Completed";
    }

    private final int get_decisionAndIndex$volatile() {
        return this._decisionAndIndex$volatile;
    }

    private final Object get_parentHandle$volatile() {
        return this._parentHandle$volatile;
    }

    private final Object get_state$volatile() {
        return this._state$volatile;
    }

    private final uc2 installParentHandle() {
        j jVar = (j) getContext().get(j.B6);
        if (jVar == null) {
            return null;
        }
        uc2 uc2VarK = JobKt__JobKt.k(jVar, false, new uv0(this), 1, null);
        u3.a(_parentHandle$volatile$FU, this, null, uc2VarK);
        return uc2VarK;
    }

    private final void invokeOnCancellationImpl(Object handler) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof e5) {
                if (u3.a(_state$volatile$FU, this, obj, handler)) {
                    return;
                }
            } else if ((obj instanceof b) || (obj instanceof oa9)) {
                multipleHandlersError(handler, obj);
            } else {
                if (obj instanceof vb1) {
                    vb1 vb1Var = (vb1) obj;
                    if (!vb1Var.c()) {
                        multipleHandlersError(handler, obj);
                    }
                    if (obj instanceof jr0) {
                        if (!(obj instanceof vb1)) {
                            vb1Var = null;
                        }
                        Throwable th = vb1Var != null ? vb1Var.a : null;
                        if (handler instanceof b) {
                            callCancelHandler((b) handler, th);
                            return;
                        } else {
                            y45.h(handler, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                            callSegmentOnCancellation((oa9) handler, th);
                            return;
                        }
                    }
                    return;
                }
                if (obj instanceof tb1) {
                    tb1 tb1Var = (tb1) obj;
                    if (tb1Var.b != null) {
                        multipleHandlersError(handler, obj);
                    }
                    if (handler instanceof oa9) {
                        return;
                    }
                    y45.h(handler, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    b bVar = (b) handler;
                    if (tb1Var.c()) {
                        callCancelHandler(bVar, tb1Var.e);
                        return;
                    } else {
                        if (u3.a(_state$volatile$FU, this, obj, tb1.b(tb1Var, null, bVar, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (handler instanceof oa9) {
                        return;
                    }
                    y45.h(handler, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    if (u3.a(_state$volatile$FU, this, obj, new tb1(obj, (b) handler, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    private final boolean isReusable() {
        if (kc2.c(this.resumeMode)) {
            wh1<T> wh1Var = this.delegate;
            y45.h(wh1Var, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((DispatchedContinuation) wh1Var).isReusable$kotlinx_coroutines_core()) {
                return true;
            }
        }
        return false;
    }

    private final void loop$atomicfu(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, e74 e74Var) {
        while (true) {
            e74Var.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    private final void multipleHandlersError(Object handler, Object state) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + handler + ", already has " + state).toString());
    }

    public static final zfb resume$lambda$13$lambda$12(e74 e74Var, Throwable th, Object obj, kotlin.coroutines.d dVar) {
        e74Var.invoke(th);
        return zfb.a;
    }

    public static void resumeImpl$kotlinx_coroutines_core$default(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i, u74 u74Var, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i2 & 4) != 0) {
            u74Var = null;
        }
        cancellableContinuationImpl.resumeImpl$kotlinx_coroutines_core(obj, i, u74Var);
    }

    private final <R> Object resumedState(w17 state, R proposedUpdate, int resumeMode, u74 onCancellation, Object idempotent) {
        if (proposedUpdate instanceof vb1) {
            return proposedUpdate;
        }
        if (!kc2.b(resumeMode) && idempotent == null) {
            return proposedUpdate;
        }
        if (onCancellation == null && !(state instanceof b) && idempotent == null) {
            return proposedUpdate;
        }
        return new tb1(proposedUpdate, state instanceof b ? (b) state : null, onCancellation, idempotent, null, 16, null);
    }

    private final void set_decisionAndIndex$volatile(int i) {
        this._decisionAndIndex$volatile = i;
    }

    private final void set_parentHandle$volatile(Object obj) {
        this._parentHandle$volatile = obj;
    }

    private final void set_state$volatile(Object obj) {
        this._state$volatile = obj;
    }

    private final boolean tryResume() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!_decisionAndIndex$volatile$FU.compareAndSet(this, i, 1073741824 + (536870911 & i)));
        return true;
    }

    private final <R> y7a tryResumeImpl(R proposedUpdate, Object idempotent, u74 onCancellation) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof w17)) {
                if ((obj instanceof tb1) && idempotent != null && ((tb1) obj).d == idempotent) {
                    return er0.a;
                }
                return null;
            }
        } while (!u3.a(_state$volatile$FU, this, obj, resumedState((w17) obj, proposedUpdate, this.resumeMode, onCancellation, idempotent)));
        detachChildIfNonResuable();
        return er0.a;
    }

    private final boolean trySuspend() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!_decisionAndIndex$volatile$FU.compareAndSet(this, i, 536870912 + (536870911 & i)));
        return true;
    }

    private final void update$atomicfu(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, e74 e74Var) {
        int i;
        do {
            i = atomicIntegerFieldUpdater.get(obj);
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i, ((Number) e74Var.invoke(Integer.valueOf(i))).intValue()));
    }

    public final void callCancelHandler(b handler, Throwable cause) {
        try {
            handler.a(cause);
        } catch (Throwable th) {
            kk1.a(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    public final <R> void callOnCancellation(u74 onCancellation, Throwable cause, R value) {
        try {
            onCancellation.invoke(cause, value, getContext());
        } catch (Throwable th) {
            kk1.a(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th));
        }
    }

    @Override
    public boolean cancel(Throwable cause) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof w17)) {
                return false;
            }
        } while (!u3.a(_state$volatile$FU, this, obj, new jr0(this, cause, (obj instanceof b) || (obj instanceof oa9))));
        w17 w17Var = (w17) obj;
        if (w17Var instanceof b) {
            callCancelHandler((b) obj, cause);
        } else if (w17Var instanceof oa9) {
            callSegmentOnCancellation((oa9) obj, cause);
        }
        detachChildIfNonResuable();
        dispatchResume(this.resumeMode);
        return true;
    }

    @Override
    public void cancelCompletedResult$kotlinx_coroutines_core(Object takenState, Throwable cause) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof w17) {
                throw new IllegalStateException("Not completed");
            }
            if (obj instanceof vb1) {
                return;
            }
            if (obj instanceof tb1) {
                tb1 tb1Var = (tb1) obj;
                if (tb1Var.c()) {
                    throw new IllegalStateException("Must be called at most once");
                }
                if (u3.a(_state$volatile$FU, this, obj, tb1.b(tb1Var, null, null, null, null, cause, 15, null))) {
                    tb1Var.d(this, cause);
                    return;
                }
            } else if (u3.a(_state$volatile$FU, this, obj, new tb1(obj, null, null, null, cause, 14, null))) {
                return;
            }
        }
    }

    @Override
    public void completeResume(Object token) {
        dispatchResume(this.resumeMode);
    }

    public final void detachChild$kotlinx_coroutines_core() {
        uc2 parentHandle = getParentHandle();
        if (parentHandle == null) {
            return;
        }
        parentHandle.dispose();
        _parentHandle$volatile$FU.set(this, k17.b);
    }

    @Override
    public ok1 getCallerFrame() {
        wh1<T> wh1Var = this.delegate;
        if (wh1Var instanceof ok1) {
            return (ok1) wh1Var;
        }
        return null;
    }

    @Override
    public kotlin.coroutines.d getContext() {
        return this.context;
    }

    public Throwable getContinuationCancellationCause(j parent) {
        return parent.getCancellationException();
    }

    @Override
    public final wh1<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    @Override
    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object state) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(state);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    public final Object getResult() {
        j jVar;
        boolean zIsReusable = isReusable();
        if (trySuspend()) {
            if (getParentHandle() == null) {
                installParentHandle();
            }
            if (zIsReusable) {
                releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            }
            return z45.f();
        }
        if (zIsReusable) {
            releaseClaimedReusableContinuation$kotlinx_coroutines_core();
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof vb1) {
            throw ((vb1) state$kotlinx_coroutines_core).a;
        }
        if (!kc2.b(this.resumeMode) || (jVar = (j) getContext().get(j.B6)) == null || jVar.isActive()) {
            return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        }
        CancellationException cancellationException = jVar.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
        throw cancellationException;
    }

    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$volatile$FU.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object state) {
        return state instanceof tb1 ? (T) ((tb1) state).a : state;
    }

    public void initCancellability() {
        uc2 uc2VarInstallParentHandle = installParentHandle();
        if (uc2VarInstallParentHandle != null && isCompleted()) {
            uc2VarInstallParentHandle.dispose();
            _parentHandle$volatile$FU.set(this, k17.b);
        }
    }

    @Override
    public void invokeOnCancellation(oa9 segment, int index) {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if ((i & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, ((i >> 29) << 29) + index));
        invokeOnCancellationImpl(segment);
    }

    public final void invokeOnCancellationInternal$kotlinx_coroutines_core(b handler) {
        invokeOnCancellationImpl(handler);
    }

    @Override
    public boolean isActive() {
        return getState$kotlinx_coroutines_core() instanceof w17;
    }

    public boolean isCancelled() {
        return getState$kotlinx_coroutines_core() instanceof jr0;
    }

    @Override
    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof w17);
    }

    public String nameString() {
        return "CancellableContinuation";
    }

    public final void parentCancelled$kotlinx_coroutines_core(Throwable cause) {
        if (cancelLater(cause)) {
            return;
        }
        cancel(cause);
        detachChildIfNonResuable();
    }

    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        Throwable thTryReleaseClaimedContinuation$kotlinx_coroutines_core;
        wh1<T> wh1Var = this.delegate;
        DispatchedContinuation dispatchedContinuation = wh1Var instanceof DispatchedContinuation ? (DispatchedContinuation) wh1Var : null;
        if (dispatchedContinuation == null || (thTryReleaseClaimedContinuation$kotlinx_coroutines_core = dispatchedContinuation.tryReleaseClaimedContinuation$kotlinx_coroutines_core(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(thTryReleaseClaimedContinuation$kotlinx_coroutines_core);
    }

    public final boolean resetStateReusable() {
        Object obj = _state$volatile$FU.get(this);
        if ((obj instanceof tb1) && ((tb1) obj).d != null) {
            detachChild$kotlinx_coroutines_core();
            return false;
        }
        _decisionAndIndex$volatile$FU.set(this, 536870911);
        _state$volatile$FU.set(this, e5.b);
        return true;
    }

    public void resume(T value, final e74 onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation != null ? new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return CancellableContinuationImpl.resume$lambda$13$lambda$12(onCancellation, (Throwable) obj, obj2, (d) obj3);
            }
        } : null);
    }

    public final <R> void resumeImpl$kotlinx_coroutines_core(R proposedUpdate, int resumeMode, u74 onCancellation) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof w17)) {
                if (obj instanceof jr0) {
                    jr0 jr0Var = (jr0) obj;
                    if (jr0Var.e()) {
                        if (onCancellation != null) {
                            callOnCancellation(onCancellation, jr0Var.a, proposedUpdate);
                            return;
                        }
                        return;
                    }
                }
                alreadyResumedError(proposedUpdate);
                throw new KotlinNothingValueException();
            }
        } while (!u3.a(_state$volatile$FU, this, obj, resumedState((w17) obj, proposedUpdate, resumeMode, onCancellation, null)));
        detachChildIfNonResuable();
        dispatchResume(resumeMode);
    }

    @Override
    public void resumeUndispatched(c cVar, T t) {
        wh1<T> wh1Var = this.delegate;
        DispatchedContinuation dispatchedContinuation = wh1Var instanceof DispatchedContinuation ? (DispatchedContinuation) wh1Var : null;
        resumeImpl$kotlinx_coroutines_core$default(this, t, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == cVar ? 4 : this.resumeMode, null, 4, null);
    }

    public void resumeUndispatchedWithException(c cVar, Throwable th) {
        wh1<T> wh1Var = this.delegate;
        DispatchedContinuation dispatchedContinuation = wh1Var instanceof DispatchedContinuation ? (DispatchedContinuation) wh1Var : null;
        resumeImpl$kotlinx_coroutines_core$default(this, new vb1(th, false, 2, null), (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == cVar ? 4 : this.resumeMode, null, 4, null);
    }

    @Override
    public void resumeWith(Object result) {
        resumeImpl$kotlinx_coroutines_core$default(this, wb1.c(result, this), this.resumeMode, null, 4, null);
    }

    @Override
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    public String toString() {
        return nameString() + '(' + qt1.c(this.delegate) + "){" + getStateDebugRepresentation() + "}@" + qt1.b(this);
    }

    @Override
    public Object tryResumeWithException(Throwable exception) {
        return tryResumeImpl(new vb1(exception, false, 2, null), null, null);
    }

    private final void loop$atomicfu(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, e74 e74Var) {
        while (true) {
            e74Var.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @Override
    public <R extends T> void resume(R value, u74 onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation);
    }

    @Override
    public void invokeOnCancellation(e74 handler) {
        fr0.c(this, new b.a(handler));
    }

    public Object tryResume(T value, Object idempotent) {
        return tryResumeImpl(value, idempotent, null);
    }

    @Override
    public <R extends T> Object tryResume(R value, Object idempotent, u74 onCancellation) {
        return tryResumeImpl(value, idempotent, onCancellation);
    }
}
