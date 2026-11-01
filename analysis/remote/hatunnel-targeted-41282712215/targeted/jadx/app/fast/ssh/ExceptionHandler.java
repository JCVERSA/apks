package app.fast.ssh;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Process;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import java.io.PrintWriter;
import java.io.StringWriter;

public class ExceptionHandler implements Thread.UncaughtExceptionHandler {
    private final String LINE_SEPARATOR = ProtectedFastSSH.s("⸼");
    private final Activity myContext;

    public ExceptionHandler(Activity activity) {
        this.myContext = activity;
    }

    @Override
    public void uncaughtException(Thread thread, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        try {
            Intent intent = new Intent(this.myContext, (Class<?>) ExceptionActivity.class);
            intent.putExtra(ProtectedFastSSH.s("⹇"), ProtectedFastSSH.s("⸽") + stringWriter.toString() + ProtectedFastSSH.s("⸾") + Build.BRAND + ProtectedFastSSH.s("⸿") + Build.DEVICE + ProtectedFastSSH.s("⹀") + Build.MODEL + ProtectedFastSSH.s("⹁") + Build.ID + ProtectedFastSSH.s("⹂") + Build.PRODUCT + ProtectedFastSSH.s("⹃") + Build.VERSION.SDK + ProtectedFastSSH.s("⹄") + Build.VERSION.RELEASE + ProtectedFastSSH.s("⹅") + Build.VERSION.INCREMENTAL + ProtectedFastSSH.s("⹆"));
            intent.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
            this.myContext.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (Throwable th2) {
            throw new NoClassDefFoundError(th2.getMessage());
        }
    }
}
