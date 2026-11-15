package com.cloud.tupdate.net.utils;

import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.ly0;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0011\u0010\u0010J\u001b\u0010\u0013\u001a\u0004\u0018\u00010\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\n\u001a\u00020\u00062\u0010\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\n\u0010\u0018R$\u0010\u001d\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u0010R$\u0010 \u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u001e\u0010\u001b\"\u0004\b\u001f\u0010\u0010R\"\u0010'\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010)\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010\b¨\u0006,"}, d2 = {"Lcom/cloud/tupdate/net/utils/LogUtil;", "", MethodDecl.initName, "()V", "", "loggable", "Lzfb;", "f", "(Z)V", "", "e", "d", "(Ljava/lang/Throwable;)V", "", "message", "c", "(Ljava/lang/String;)V", "b", "log", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;)Ljava/lang/String;", "", "Ljava/lang/StackTraceElement;", "sElements", "([Ljava/lang/StackTraceElement;)V", "Ljava/lang/String;", "getClassName", "()Ljava/lang/String;", "setClassName", TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME, "getMethodName", "setMethodName", "methodName", "", "I", "getLineNumber", "()I", "setLineNumber", "(I)V", "lineNumber", "Z", "isLoggable", "()Z", "setLoggable", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class LogUtil {
    public static final LogUtil a = new LogUtil();

    public static String className;

    public static String methodName;

    public static int lineNumber;

    public static boolean isLoggable;

    private LogUtil() {
    }

    public final String a(String log) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("================");
        stringBuffer.append(methodName);
        stringBuffer.append("(");
        stringBuffer.append(className);
        stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        stringBuffer.append(lineNumber);
        stringBuffer.append(")================:");
        stringBuffer.append(log);
        return stringBuffer.toString();
    }

    public final void b(String message) {
        if (isLoggable) {
            e(new Throwable().getStackTrace());
            String str = className;
            String strA = a(message);
            y45.g(strA);
            Log.d(str, strA);
        }
    }

    public final void c(String message) {
        if (isLoggable) {
            e(new Throwable().getStackTrace());
            String str = className;
            String strA = a(message);
            y45.g(strA);
            Log.e(str, strA);
        }
    }

    public final void d(Throwable e) {
        if (isLoggable) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            if (e != null) {
                try {
                    e.printStackTrace(printWriter);
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(printWriter, th);
                        throw th2;
                    }
                }
            }
            ly0.a(printWriter, null);
            String string = stringWriter.toString();
            y45.i(string, "sw.toString()");
            c(string);
        }
    }

    public final void e(StackTraceElement[] sElements) {
        StackTraceElement stackTraceElement;
        StackTraceElement stackTraceElement2;
        className = (sElements == null || (stackTraceElement = sElements[1]) == null) ? null : stackTraceElement.getFileName();
        methodName = (sElements == null || (stackTraceElement2 = sElements[1]) == null) ? null : stackTraceElement2.getMethodName();
        StackTraceElement stackTraceElement3 = sElements != null ? sElements[1] : null;
        y45.g(stackTraceElement3);
        lineNumber = stackTraceElement3.getLineNumber();
    }

    public final void f(boolean loggable) {
        isLoggable = loggable;
    }
}
