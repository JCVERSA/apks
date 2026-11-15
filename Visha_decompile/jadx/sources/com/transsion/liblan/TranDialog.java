package com.transsion.liblan;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import com.transsion.liblan.interfaces.ITranLibLAN;

public abstract class TranDialog {
    public static final int TYPE_ERROR = 0;
    public static final int TYPE_LOGIN = 1;
    public static final int TYPE_PROGRESS = 3;
    public static final int TYPE_QUESTION = 2;
    private static Callbacks sCallbacks;
    private static Handler sHandler;
    private Object mContext;
    protected String mText;
    private final String mTitle;
    protected final int mType;

    public interface Callbacks {
        @MainThread
        void onCanceled(TranDialog tranDialog);

        @MainThread
        void onDisplay(ErrorMessage errorMessage);

        @MainThread
        void onDisplay(LoginTranDialog loginTranDialog);

        @MainThread
        void onDisplay(ProgressTranDialog progressTranDialog);

        @MainThread
        void onDisplay(QuestionTranDialog questionTranDialog);

        @MainThread
        void onProgressUpdate(ProgressTranDialog progressTranDialog);
    }

    public static class ErrorMessage extends TranDialog {
        private ErrorMessage(String str, String str2) {
            super(0, str, str2);
        }
    }

    public static abstract class IdTranDialog extends TranDialog {
        protected long mId;

        public IdTranDialog(long j, int i, String str, String str2) {
            super(i, str, str2);
            this.mId = j;
        }

        private native void nativeDismiss(long j);

        @Override
        @MainThread
        public void dismiss() {
            long j = this.mId;
            if (j != 0) {
                nativeDismiss(j);
                this.mId = 0L;
            }
        }
    }

    public static class LoginTranDialog extends IdTranDialog {
        private final boolean mAskStore;
        private final String mDefaultUsername;

        private native void nativePostLogin(long j, String str, String str2, boolean z);

        @MainThread
        public boolean asksStore() {
            return this.mAskStore;
        }

        @Override
        @MainThread
        public void dismiss() {
            super.dismiss();
        }

        @MainThread
        public String getDefaultUsername() {
            return this.mDefaultUsername;
        }

        @MainThread
        public void postLogin(String str, String str2, boolean z) {
            long j = this.mId;
            if (j != 0) {
                nativePostLogin(j, str, str2, z);
                this.mId = 0L;
            }
        }

        private LoginTranDialog(long j, String str, String str2, String str3, boolean z) {
            super(j, 1, str, str2);
            this.mDefaultUsername = str3;
            this.mAskStore = z;
        }
    }

    public static class ProgressTranDialog extends IdTranDialog {
        private final String mCancelText;
        private final boolean mIndeterminate;
        private float mPosition;

        public void update(float f, String str) {
            this.mPosition = f;
            this.mText = str;
        }

        @Override
        @MainThread
        public void dismiss() {
            super.dismiss();
        }

        @MainThread
        public String getCancelText() {
            return this.mCancelText;
        }

        @MainThread
        public float getPosition() {
            return this.mPosition;
        }

        @MainThread
        public boolean isCancelable() {
            return this.mCancelText != null;
        }

        @MainThread
        public boolean isIndeterminate() {
            return this.mIndeterminate;
        }

        private ProgressTranDialog(long j, String str, String str2, boolean z, float f, String str3) {
            super(j, 3, str, str2);
            this.mIndeterminate = z;
            this.mPosition = f;
            this.mCancelText = str3;
        }
    }

    public static class QuestionTranDialog extends IdTranDialog {
        public static final int TYPE_ERROR = 2;
        public static final int TYPE_NORMAL = 0;
        public static final int TYPE_WARNING = 1;
        private final String mAction1Text;
        private final String mAction2Text;
        private final String mCancelText;
        private final int mQuestionType;

        private native void nativePostAction(long j, int i);

        @Override
        @MainThread
        public void dismiss() {
            super.dismiss();
        }

        @MainThread
        public String getAction1Text() {
            return this.mAction1Text;
        }

        @MainThread
        public String getAction2Text() {
            return this.mAction2Text;
        }

        @MainThread
        public String getCancelText() {
            return this.mCancelText;
        }

        @MainThread
        public int getQuestionType() {
            return this.mQuestionType;
        }

        @MainThread
        public void postAction(int i) {
            long j = this.mId;
            if (j != 0) {
                nativePostAction(j, i);
                this.mId = 0L;
            }
        }

        private QuestionTranDialog(long j, String str, String str2, int i, String str3, String str4, String str5) {
            super(j, 2, str, str2);
            this.mQuestionType = i;
            this.mCancelText = str3;
            this.mAction1Text = str4;
            this.mAction2Text = str5;
        }
    }

    public TranDialog(int i, String str, String str2) {
        this.mType = i;
        this.mTitle = str;
        this.mText = str2;
    }

    private static void cancelDialogFromNative(TranDialog tranDialog) {
        sHandler.post(new Runnable() {
            @Override
            public void run() {
                TranDialog tranDialog2 = TranDialog.this;
                if (tranDialog2 instanceof IdTranDialog) {
                    ((IdTranDialog) tranDialog2).dismiss();
                }
                if (TranDialog.sCallbacks == null || TranDialog.this == null) {
                    return;
                }
                TranDialog.sCallbacks.onCanceled(TranDialog.this);
            }
        });
    }

    private static void displayErrorMessageFromNative(String str, String str2) {
        final ErrorMessage errorMessage = new ErrorMessage(str, str2);
        sHandler.post(new Runnable() {
            @Override
            public void run() {
                if (TranDialog.sCallbacks != null) {
                    TranDialog.sCallbacks.onDisplay(errorMessage);
                }
            }
        });
    }

    private static TranDialog displayLoginFromNative(long j, String str, String str2, String str3, boolean z) {
        final LoginTranDialog loginTranDialog = new LoginTranDialog(j, str, str2, str3, z);
        sHandler.post(new Runnable() {
            @Override
            public void run() {
                if (TranDialog.sCallbacks != null) {
                    TranDialog.sCallbacks.onDisplay(loginTranDialog);
                }
            }
        });
        return loginTranDialog;
    }

    private static TranDialog displayProgressFromNative(long j, String str, String str2, boolean z, float f, String str3) {
        final ProgressTranDialog progressTranDialog = new ProgressTranDialog(j, str, str2, z, f, str3);
        sHandler.post(new Runnable() {
            @Override
            public void run() {
                if (TranDialog.sCallbacks != null) {
                    TranDialog.sCallbacks.onDisplay(progressTranDialog);
                }
            }
        });
        return progressTranDialog;
    }

    private static TranDialog displayQuestionFromNative(long j, String str, String str2, int i, String str3, String str4, String str5) {
        final QuestionTranDialog questionTranDialog = new QuestionTranDialog(j, str, str2, i, str3, str4, str5);
        sHandler.post(new Runnable() {
            @Override
            public void run() {
                if (TranDialog.sCallbacks != null) {
                    TranDialog.sCallbacks.onDisplay(questionTranDialog);
                }
            }
        });
        return questionTranDialog;
    }

    private static native void nativeSetCallbacks(ITranLibLAN iTranLibLAN, boolean z);

    @MainThread
    public static void setCallbacks(ITranLibLAN iTranLibLAN, Callbacks callbacks) {
        if (callbacks != null && sHandler == null) {
            sHandler = new Handler(Looper.getMainLooper());
        }
        sCallbacks = callbacks;
        nativeSetCallbacks(iTranLibLAN, callbacks != null);
    }

    private static void updateProgressFromNative(TranDialog tranDialog, final float f, final String str) {
        sHandler.post(new Runnable() {
            @Override
            public void run() {
                if (TranDialog.this.getType() != 3) {
                    throw new IllegalArgumentException("dialog is not a progress dialog");
                }
                ProgressTranDialog progressTranDialog = (ProgressTranDialog) TranDialog.this;
                progressTranDialog.update(f, str);
                if (TranDialog.sCallbacks != null) {
                    TranDialog.sCallbacks.onProgressUpdate(progressTranDialog);
                }
            }
        });
    }

    @MainThread
    public void dismiss() {
    }

    @MainThread
    public Object getContext() {
        return this.mContext;
    }

    @MainThread
    public String getText() {
        return this.mText;
    }

    @MainThread
    public String getTitle() {
        return this.mTitle;
    }

    @MainThread
    public int getType() {
        return this.mType;
    }

    @MainThread
    public void setContext(Object obj) {
        this.mContext = obj;
    }
}
