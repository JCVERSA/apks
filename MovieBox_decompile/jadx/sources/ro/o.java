package ro;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

public class o {

    private int f71305a = 0;

    private boolean f71306b = false;

    private boolean f71307c = false;

    private int f71308d = 0;

    private boolean f71309e = false;

    public static void a(View view) {
        InputMethodManager inputMethodManager;
        if (view == null || (inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
