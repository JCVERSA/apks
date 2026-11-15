package com.transsion.aicore.nexusflow.client;

import android.util.Log;
import com.transsion.aicore.nexusflow.LLMAnswerCallback;

public abstract class LLMAnswerManager {

    public class LLMAnswerCallbackImpl extends LLMAnswerCallback.Stub {
        private final a mAnswerCallback;
        final LLMAnswerManager this$0;

        public LLMAnswerCallbackImpl(LLMAnswerManager lLMAnswerManager, a aVar) {
        }

        @Override
        public void onCallback(String str) {
            Log.d("LLMAnswerCallbackImpl", "onCallback  result = " + str);
            try {
            } catch (Exception e) {
                Log.d("NexusFlow.GsonUtils", "GsonStringToNotification: " + e.toString());
            }
            throw null;
        }

        @Override
        public void onError(int i, String str) {
            if (i != -1) {
                throw null;
            }
            Log.d("LLMAnswerCallbackImpl", "LLM_SERVICE_SEIZE_ERROR");
            throw null;
        }
    }

    public interface a {
    }
}
