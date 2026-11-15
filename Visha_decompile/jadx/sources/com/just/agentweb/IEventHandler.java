package com.just.agentweb;

import android.view.KeyEvent;

public interface IEventHandler {
    boolean back();

    boolean onKeyDown(int i, KeyEvent keyEvent);
}
