package io.reactivex.internal.util;

import defpackage.ac7;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.pd7;
import defpackage.rc2;
import java.io.Serializable;

public enum NotificationLite {
    COMPLETE;

    public static final class DisposableNotification implements Serializable {
        private static final long serialVersionUID = -7482590109178395495L;
        final rc2 upstream;

        public DisposableNotification(rc2 rc2Var) {
            this.upstream = rc2Var;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.upstream + "]";
        }
    }

    public static final class ErrorNotification implements Serializable {
        private static final long serialVersionUID = -8759979445933046293L;
        final Throwable e;

        public ErrorNotification(Throwable th) {
            this.e = th;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ErrorNotification) {
                return ac7.c(this.e, ((ErrorNotification) obj).e);
            }
            return false;
        }

        public int hashCode() {
            return this.e.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.e + "]";
        }
    }

    public static final class SubscriptionNotification implements Serializable {
        private static final long serialVersionUID = -1322257508628817540L;
        final f2a upstream;

        public SubscriptionNotification(f2a f2aVar) {
            this.upstream = f2aVar;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.upstream + "]";
        }
    }

    public static <T> boolean accept(Object obj, d2a d2aVar) {
        if (obj == COMPLETE) {
            d2aVar.onComplete();
            return true;
        }
        if (obj instanceof ErrorNotification) {
            d2aVar.onError(((ErrorNotification) obj).e);
            return true;
        }
        d2aVar.onNext(obj);
        return false;
    }

    public static <T> boolean acceptFull(Object obj, d2a d2aVar) {
        if (obj == COMPLETE) {
            d2aVar.onComplete();
            return true;
        }
        if (obj instanceof ErrorNotification) {
            d2aVar.onError(((ErrorNotification) obj).e);
            return true;
        }
        if (obj instanceof SubscriptionNotification) {
            d2aVar.onSubscribe(((SubscriptionNotification) obj).upstream);
            return false;
        }
        d2aVar.onNext(obj);
        return false;
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(rc2 rc2Var) {
        return new DisposableNotification(rc2Var);
    }

    public static Object error(Throwable th) {
        return new ErrorNotification(th);
    }

    public static rc2 getDisposable(Object obj) {
        return ((DisposableNotification) obj).upstream;
    }

    public static Throwable getError(Object obj) {
        return ((ErrorNotification) obj).e;
    }

    public static f2a getSubscription(Object obj) {
        return ((SubscriptionNotification) obj).upstream;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(Object obj) {
        return obj;
    }

    public static boolean isComplete(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean isDisposable(Object obj) {
        return obj instanceof DisposableNotification;
    }

    public static boolean isError(Object obj) {
        return obj instanceof ErrorNotification;
    }

    public static boolean isSubscription(Object obj) {
        return obj instanceof SubscriptionNotification;
    }

    public static <T> Object next(T t) {
        return t;
    }

    public static Object subscription(f2a f2aVar) {
        return new SubscriptionNotification(f2aVar);
    }

    @Override
    public String toString() {
        return "NotificationLite.Complete";
    }

    public static <T> boolean accept(Object obj, pd7 pd7Var) {
        if (obj == COMPLETE) {
            pd7Var.onComplete();
            return true;
        }
        if (obj instanceof ErrorNotification) {
            pd7Var.onError(((ErrorNotification) obj).e);
            return true;
        }
        pd7Var.onNext(obj);
        return false;
    }

    public static <T> boolean acceptFull(Object obj, pd7 pd7Var) {
        if (obj == COMPLETE) {
            pd7Var.onComplete();
            return true;
        }
        if (obj instanceof ErrorNotification) {
            pd7Var.onError(((ErrorNotification) obj).e);
            return true;
        }
        if (obj instanceof DisposableNotification) {
            pd7Var.onSubscribe(((DisposableNotification) obj).upstream);
            return false;
        }
        pd7Var.onNext(obj);
        return false;
    }
}
