package androidx.datastore.core;

import defpackage.ib1;
import defpackage.s74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002\b\tB\u0007\b\u0004¢\u0006\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Landroidx/datastore/core/Message;", "T", "", "()V", "lastState", "Landroidx/datastore/core/State;", "getLastState", "()Landroidx/datastore/core/State;", "Read", "Update", "Landroidx/datastore/core/Message$Read;", "Landroidx/datastore/core/Message$Update;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class Message<T> {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/datastore/core/Message$Read;", "T", "Landroidx/datastore/core/Message;", "lastState", "Landroidx/datastore/core/State;", "(Landroidx/datastore/core/State;)V", "getLastState", "()Landroidx/datastore/core/State;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Read<T> extends Message<T> {
        private final State<T> lastState;

        public Read(State<T> state) {
            super(null);
            this.lastState = state;
        }

        @Override
        public State<T> getLastState() {
            return this.lastState;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002BQ\u0012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eR3\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00038\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Landroidx/datastore/core/Message$Update;", "T", "Landroidx/datastore/core/Message;", "Lkotlin/Function2;", "Lwh1;", "", "transform", "Lib1;", "ack", "Landroidx/datastore/core/State;", "lastState", "Lkotlin/coroutines/d;", "callerContext", MethodDecl.initName, "(Ls74;Lib1;Landroidx/datastore/core/State;Lkotlin/coroutines/d;)V", "Ls74;", "getTransform", "()Ls74;", "Lib1;", "getAck", "()Lib1;", "Landroidx/datastore/core/State;", "getLastState", "()Landroidx/datastore/core/State;", "Lkotlin/coroutines/d;", "getCallerContext", "()Lkotlin/coroutines/d;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Update<T> extends Message<T> {
        private final ib1 ack;
        private final d callerContext;
        private final State<T> lastState;
        private final s74 transform;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Update(s74 s74Var, ib1 ib1Var, State<T> state, d dVar) {
            super(null);
            y45.j(s74Var, "transform");
            y45.j(ib1Var, "ack");
            y45.j(dVar, "callerContext");
            this.transform = s74Var;
            this.ack = ib1Var;
            this.lastState = state;
            this.callerContext = dVar;
        }

        public final ib1 getAck() {
            return this.ack;
        }

        public final d getCallerContext() {
            return this.callerContext;
        }

        @Override
        public State<T> getLastState() {
            return this.lastState;
        }

        public final s74 getTransform() {
            return this.transform;
        }
    }

    public Message(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract State<T> getLastState();

    private Message() {
    }
}
