package com.transsion.search_pugc.speech;

import android.speech.SpeechRecognizer;
import com.blankj.utilcode.util.Utils;

public final class g {

    public static final g f50517a = new g();

    private g() {
    }

    public final boolean a() {
        return SpeechRecognizer.isRecognitionAvailable(Utils.a());
    }
}
