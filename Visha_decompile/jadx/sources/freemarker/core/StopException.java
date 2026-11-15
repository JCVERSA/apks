package freemarker.core;

import freemarker.template.TemplateException;
import java.io.PrintStream;
import java.io.PrintWriter;

public class StopException extends TemplateException {
    public StopException(Environment environment) {
        super(environment);
    }

    @Override
    public void printStackTrace(PrintWriter printWriter) {
        synchronized (printWriter) {
            try {
                String message = getMessage();
                printWriter.print("Encountered stop instruction");
                if (message == null || message.equals("")) {
                    printWriter.println();
                } else {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("\nCause given: ");
                    stringBuffer.append(message);
                    printWriter.println(stringBuffer.toString());
                }
                super.printStackTrace(printWriter);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public StopException(Environment environment, String str) {
        super(str, environment);
    }

    @Override
    public void printStackTrace(PrintStream printStream) {
        synchronized (printStream) {
            try {
                String message = getMessage();
                printStream.print("Encountered stop instruction");
                if (message != null && !message.equals("")) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("\nCause given: ");
                    stringBuffer.append(message);
                    printStream.println(stringBuffer.toString());
                } else {
                    printStream.println();
                }
                super.printStackTrace(printStream);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
