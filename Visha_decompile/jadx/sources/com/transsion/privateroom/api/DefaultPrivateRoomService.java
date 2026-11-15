package com.transsion.privateroom.api;

import android.os.Handler;
import android.os.Looper;
import com.transsion.privateroom.api.DefaultPrivateRoomService;
import com.transsion.privateroom.api.beans.FeedbackBean;
import com.transsion.privateroom.api.beans.PrivateFile;
import defpackage.sv4;
import defpackage.tv4;
import defpackage.uv4;
import defpackage.vv4;
import java.util.Collections;
import java.util.List;

public enum DefaultPrivateRoomService implements vv4 {
    INSTANCE;

    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    DefaultPrivateRoomService() {
    }

    public static void lambda$hideFiles$0(List list, tv4 tv4Var) {
        if (list == null || list.isEmpty()) {
            tv4Var.j();
        } else {
            tv4Var.i((PrivateFile) list.get(0));
        }
    }

    private void postMain(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.mainHandler.post(runnable);
        }
    }

    public void deleteFile(PrivateFile privateFile, tv4 tv4Var) {
        deleteFiles(privateFile == null ? Collections.emptyList() : Collections.singletonList(privateFile), tv4Var);
    }

    @Override
    public void deleteFiles(List<PrivateFile> list, final tv4 tv4Var) {
        if (tv4Var == null) {
            return;
        }
        postMain(new Runnable() {
            @Override
            public final void run() {
                tv4Var.h();
            }
        });
    }

    @Override
    public List<PrivateFile> getAllPrivateFiles() {
        return Collections.emptyList();
    }

    @Override
    public String getEmail() {
        return "";
    }

    @Override
    public String getPassword() {
        return "";
    }

    public void hideFile(PrivateFile privateFile, tv4 tv4Var) {
        hideFiles(privateFile == null ? Collections.emptyList() : Collections.singletonList(privateFile), tv4Var);
    }

    @Override
    public void hideFiles(final List<PrivateFile> list, final tv4 tv4Var) {
        if (tv4Var == null) {
            return;
        }
        postMain(new Runnable() {
            @Override
            public final void run() {
                DefaultPrivateRoomService.lambda$hideFiles$0(list, tv4Var);
            }
        });
    }

    @Override
    public void init(final uv4 uv4Var) {
        if (uv4Var == null) {
            return;
        }
        postMain(new Runnable() {
            @Override
            public final void run() {
                uv4Var.onInitSuccess();
            }
        });
    }

    public void restoreFile(PrivateFile privateFile, tv4 tv4Var) {
        restoreFiles(privateFile == null ? Collections.emptyList() : Collections.singletonList(privateFile), tv4Var);
    }

    @Override
    public void restoreFiles(List<PrivateFile> list, final tv4 tv4Var) {
        if (tv4Var == null) {
            return;
        }
        postMain(new Runnable() {
            @Override
            public final void run() {
                tv4Var.c();
            }
        });
    }

    @Override
    public void saveEmail(String str) {
    }

    @Override
    public void savePassword(String str) {
    }

    @Override
    public void sendVerificationCode(String str, final sv4 sv4Var) {
        if (sv4Var == null) {
            return;
        }
        postMain(new Runnable() {
            @Override
            public final void run() {
                sv4Var.d();
            }
        });
    }

    @Override
    public void submitPrivacyFeedback(FeedbackBean feedbackBean) {
    }

    @Override
    public void verifyVerificationCode(String str, String str2, final sv4 sv4Var) {
        if (sv4Var == null) {
            return;
        }
        postMain(new Runnable() {
            @Override
            public final void run() {
                sv4Var.a(-1);
            }
        });
    }
}
