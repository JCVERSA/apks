package com.transsion.livecaption.client.callback;

import android.os.Bundle;

public interface Callback {
    void onData(Bundle bundle);

    void onError(int i, String str);

    void onEvent(int i);
}
