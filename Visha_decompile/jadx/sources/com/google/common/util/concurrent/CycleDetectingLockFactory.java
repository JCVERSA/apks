package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import defpackage.kj5;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;

public abstract class CycleDetectingLockFactory {
    public static final ConcurrentMap a = new MapMaker().l().i();
    public static final kj5 b = new kj5(CycleDetectingLockFactory.class);
    public static final ThreadLocal c = new a();

    public static class ExampleStackTrace extends IllegalStateException {
        static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        static final ImmutableSet<String> EXCLUDED_CLASS_NAMES = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), b.class.getName());

        public ExampleStackTrace(b bVar, b bVar2) {
            throw null;
        }
    }

    public enum Policies {
        THROW {
            @Override
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        },
        WARN {
            @Override
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.b.a().log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        },
        DISABLED {
            @Override
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }
        };

        public abstract void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);

        Policies(a aVar) {
            this();
        }
    }

    public static final class PotentialDeadlockException extends ExampleStackTrace {
        private final ExampleStackTrace conflictingStackTrace;

        public PotentialDeadlockException(b bVar, b bVar2, ExampleStackTrace exampleStackTrace, a aVar) {
            this(bVar, bVar2, exampleStackTrace);
        }

        public ExampleStackTrace getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override
        public String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb = new StringBuilder(message);
            for (Throwable cause = this.conflictingStackTrace; cause != null; cause = cause.getCause()) {
                sb.append(", ");
                sb.append(cause.getMessage());
            }
            return sb.toString();
        }

        private PotentialDeadlockException(b bVar, b bVar2, ExampleStackTrace exampleStackTrace) {
            super(bVar, bVar2);
            this.conflictingStackTrace = exampleStackTrace;
            initCause(exampleStackTrace);
        }
    }

    public class a extends ThreadLocal {
        @Override
        public ArrayList initialValue() {
            return Lists.m(3);
        }
    }

    public static class b {
    }
}
