package com.transsion.xuanniao.account.comm.mvpbase;

import defpackage.jk7;

public abstract class BasePresenter {
    public jk7 a;

    public static class MvpViewNotAttachedException extends RuntimeException {
        private static final long serialVersionUID = -2135659522815788547L;

        public MvpViewNotAttachedException() {
            super("Please call Presenter.attachView(MvpView) before requesting data to the Presenter");
        }
    }

    public boolean a() {
        return this.a != null;
    }
}
