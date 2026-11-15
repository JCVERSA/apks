package com.transsion.aicore.nexusflow.client;

import android.os.Bundle;
import com.transsion.aicore.nexusflow.IAapCallback;
import com.transsion.aicore.nexusflow.constant.State;
import defpackage.sq0;

public abstract class TTSPlayManager {

    public class AnonymousClass2 extends IAapCallback.Stub {
        final TTSPlayManager this$0;

        public AnonymousClass2(TTSPlayManager tTSPlayManager) {
        }

        @Override
        public void onData(Bundle bundle) {
            TTSPlayManager.a(null);
        }

        @Override
        public void onError(int i, String str) {
            TTSPlayManager.a(null);
        }

        @Override
        public void onEvent(int i) {
            if (i == 1015) {
                State stateB = TTSPlayManager.b(null);
                State state = State.DISCONNECTED;
                if (stateB == state) {
                    return;
                } else {
                    TTSPlayManager.c(null, state);
                }
            }
            TTSPlayManager.a(null);
        }
    }

    public static sq0 a(TTSPlayManager tTSPlayManager) {
        throw null;
    }

    public static State b(TTSPlayManager tTSPlayManager) {
        throw null;
    }

    public static void c(TTSPlayManager tTSPlayManager, State state) {
        throw null;
    }
}
