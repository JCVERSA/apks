package com.transsion.aicore.nexusflow.client;

import android.os.Bundle;
import android.util.Log;
import com.transsion.aicore.nexusflow.SmartAnswerCallback;

public abstract class AutoAnswerManager {

    public class AnonymousClass1 extends SmartAnswerCallback.Stub {
        final AutoAnswerManager this$0;

        public AnonymousClass1(AutoAnswerManager autoAnswerManager) {
        }

        @Override
        public void onCallback(Bundle bundle) {
            AutoAnswerManager.a(null);
            Log.w("NexusFlow.AutoAnswer", "client_api onCallback is null.");
        }

        @Override
        public void onError(int i, String str) {
            AutoAnswerManager.a(null);
        }
    }

    public interface a {
    }

    public static a a(AutoAnswerManager autoAnswerManager) {
        throw null;
    }
}
