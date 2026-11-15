package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicBoolean;

class b0 implements Thread.UncaughtExceptionHandler {

    private final a f30323a;

    private final yb.b f30324b;

    private final Thread.UncaughtExceptionHandler f30325c;

    private final qb.a f30326d;

    private final AtomicBoolean f30327e = new AtomicBoolean(false);

    interface a {
        void a(yb.b bVar, Thread thread, Throwable th2);
    }

    public b0(a aVar, yb.b bVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, qb.a aVar2) {
        this.f30323a = aVar;
        this.f30324b = bVar;
        this.f30325c = uncaughtExceptionHandler;
        this.f30326d = aVar2;
    }

    private boolean b(Thread thread, Throwable th2) {
        if (thread == null) {
            qb.g.f().d("Crashlytics will not record uncaught exception; null thread");
            return false;
        }
        if (th2 == null) {
            qb.g.f().d("Crashlytics will not record uncaught exception; null throwable");
            return false;
        }
        if (!this.f30326d.b()) {
            return true;
        }
        qb.g.f().b("Crashlytics will not record uncaught exception; native crash exists for session.");
        return false;
    }

    boolean a() {
        return this.f30327e.get();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0037  */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    @Override
    public void uncaughtException(Thread thread, Throwable th2) {
        this.f30327e.set(true);
        try {
            try {
                if (b(thread, th2)) {
                    this.f30323a.a(this.f30324b, thread, th2);
                } else {
                    qb.g.f().b("Uncaught exception will not be recorded by Crashlytics.");
                }
                if (this.f30325c != null) {
                    qb.g.f().b("Completed exception processing. Invoking default exception handler.");
                    this.f30325c.uncaughtException(thread, th2);
                } else {
                    qb.g.f().b("Completed exception processing, but no default exception handler.");
                    System.exit(1);
                }
            } catch (Exception e10) {
                qb.g.f().e("An error occurred in the uncaught exception handler", e10);
                if (this.f30325c == null) {
                    qb.g.f().b("Completed exception processing, but no default exception handler.");
                    System.exit(1);
                }
            }
            this.f30327e.set(false);
        } catch (Throwable th3) {
            if (this.f30325c != null) {
                qb.g.f().b("Completed exception processing. Invoking default exception handler.");
                this.f30325c.uncaughtException(thread, th2);
            } else {
                qb.g.f().b("Completed exception processing, but no default exception handler.");
                System.exit(1);
            }
            this.f30327e.set(false);
            throw th3;
        }
    }
}
