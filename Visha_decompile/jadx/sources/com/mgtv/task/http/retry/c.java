package com.mgtv.task.http.retry;

import androidx.annotation.Nullable;
import java.io.IOException;

public interface c {

    public interface a {
        void a(int i) throws IOException;
    }

    int a(String str, String str2);

    @Nullable
    String a(String str, String str2, Exception exc) throws Exception;

    int b(String str, String str2);

    a b();

    int c(String str, String str2);

    int d(String str, String str2);
}
