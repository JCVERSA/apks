package com.google.firebase.sessions;

import android.os.Message;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.google.firebase.sessions.SessionLifecycleClient$sendLifecycleEvents$1", f = "SessionLifecycleClient.kt", l = {151}, m = "invokeSuspend")
@SourceDebugExtension
final class SessionLifecycleClient$sendLifecycleEvents$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final List<Message> $messages;
    int label;
    final SessionLifecycleClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SessionLifecycleClient$sendLifecycleEvents$1(SessionLifecycleClient sessionLifecycleClient, List<Message> list, Continuation<? super SessionLifecycleClient$sendLifecycleEvents$1> continuation) {
        super(2, continuation);
        this.this$0 = sessionLifecycleClient;
        this.$messages = list;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SessionLifecycleClient$sendLifecycleEvents$1(this.this$0, this.$messages, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.f31807a;
            this.label = 1;
            obj = firebaseSessionsDependencies.c(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        Map map = (Map) obj;
        if (!map.isEmpty()) {
            Collection collectionValues = map.values();
            if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                Iterator it = collectionValues.iterator();
                while (it.hasNext()) {
                    if (((SessionSubscriber) it.next()).a()) {
                        List listI0 = CollectionsKt.I0(CollectionsKt.f0(CollectionsKt.q(this.this$0.l(this.$messages, 2), this.this$0.l(this.$messages, 1))), new Comparator() {
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override
                            public final int compare(T t10, T t11) {
                                return ComparisonsKt.d(Long.valueOf(((Message) t10).getWhen()), Long.valueOf(((Message) t11).getWhen()));
                            }
                        });
                        SessionLifecycleClient sessionLifecycleClient = this.this$0;
                        Iterator it2 = listI0.iterator();
                        while (it2.hasNext()) {
                            sessionLifecycleClient.p((Message) it2.next());
                        }
                        break;
                    }
                }
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SessionLifecycleClient$sendLifecycleEvents$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
