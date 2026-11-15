package com.cloud.tmc.miniapp.defaultimpl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.cloud.tmc.integration.proxy.IKeyboardProxy;
import com.cloud.tmc.integration.proxy.OnKeyboardListener;
import kotlin.jvm.internal.Intrinsics;

public final class KeyboardImpl implements IKeyboardProxy {
    public static final OooO00o Companion = new OooO00o();
    public OnKeyboardListener OooO00o;
    public int OooO0O0;
    public boolean OooO0OO;
    public final Handler OooO0Oo;

    public static final class OooO00o {
    }

    public static final class OooO0O0 implements OnKeyboardListener {
        public OooO0O0() {
        }

        @Override
        public void onKeyBoardAnimEnd() {
            if (KeyboardImpl.this.OooO0OO) {
                KeyboardImpl.this.OooO0OO = false;
                KeyboardImpl.this.OooO0Oo.sendEmptyMessage(3);
            }
        }

        @Override
        public void onKeyBoardAnimStart() {
            if (KeyboardImpl.this.OooO0OO) {
                return;
            }
            KeyboardImpl.this.OooO0OO = true;
            KeyboardImpl.this.OooO0Oo.sendEmptyMessage(1);
        }

        @Override
        public void onKeyBoardHeightChange(int i10) {
            if (i10 != KeyboardImpl.this.OooO0O0) {
                KeyboardImpl.this.OooO0O0 = i10;
                Handler handler = KeyboardImpl.this.OooO0Oo;
                handler.sendMessage(handler.obtainMessage(2, Integer.valueOf(i10)));
            }
        }
    }

    public KeyboardImpl() {
        Looper looperMyLooper = Looper.myLooper();
        this.OooO0Oo = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return KeyboardImpl.OooO00o(this.f22866a, message);
            }
        });
    }

    public static final boolean OooO00o(KeyboardImpl this$0, Message it) {
        OnKeyboardListener onKeyboardListener;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(it, "it");
        int i10 = it.what;
        if (i10 == 1) {
            OnKeyboardListener onKeyboardListener2 = this$0.OooO00o;
            if (onKeyboardListener2 != null) {
                onKeyboardListener2.onKeyBoardAnimStart();
            }
        } else if (i10 == 2) {
            OnKeyboardListener onKeyboardListener3 = this$0.OooO00o;
            if (onKeyboardListener3 != null) {
                Object obj = it.obj;
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
                onKeyboardListener3.onKeyBoardHeightChange(((Integer) obj).intValue());
            }
        } else if (i10 == 3 && (onKeyboardListener = this$0.OooO00o) != null) {
            onKeyboardListener.onKeyBoardAnimEnd();
        }
        return true;
    }

    public static final void OooO0O0(View view) {
        Object systemService = view.getContext().getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(view, 2);
        }
    }

    public static final void OooO0OO(View view) {
        Object systemService = view.getContext().getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager != null) {
            inputMethodManager.toggleSoftInput(0, 0);
        }
    }

    @Override
    public void hideKeyboard(final View view) {
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    KeyboardImpl.OooO00o(view);
                }
            });
        }
    }

    @Override
    public void initKeyBoardChange(View view) {
        if (view != null) {
            ViewCompat.setWindowInsetsAnimationCallback(view, new OooO(WindowInsetsCompat.Type.systemBars(), WindowInsetsCompat.Type.ime(), new OooO0O0()));
        }
    }

    @Override
    public void releaseKeyBoardChange(View view) {
        if (view != null) {
            ViewCompat.setWindowInsetsAnimationCallback(view, null);
        }
        this.OooO0Oo.removeCallbacksAndMessages(null);
    }

    @Override
    public void setKeyBoardListener(OnKeyboardListener onKeyboardListener) {
        this.OooO00o = onKeyboardListener;
    }

    @Override
    public void showKeyboard(final View view) {
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    KeyboardImpl.OooO0O0(view);
                }
            });
        }
    }

    @Override
    public void toggleSoftInput(final View view) {
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    KeyboardImpl.OooO0OO(view);
                }
            });
        }
    }

    public static final void OooO00o(View view) {
        Object systemService = view.getContext().getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 2);
        }
    }
}
