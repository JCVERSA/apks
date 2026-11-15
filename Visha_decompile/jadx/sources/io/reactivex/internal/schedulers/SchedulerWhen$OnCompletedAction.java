package io.reactivex.internal.schedulers;

import defpackage.qb1;

class SchedulerWhen$OnCompletedAction implements Runnable {
    final Runnable action;
    final qb1 actionCompletable;

    public SchedulerWhen$OnCompletedAction(Runnable runnable, qb1 qb1Var) {
        this.action = runnable;
        this.actionCompletable = qb1Var;
    }

    @Override
    public void run() {
        try {
            this.action.run();
        } finally {
            this.actionCompletable.onComplete();
        }
    }
}
