package com.facebook.biddingkit.logging;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

class EventLogUtils {
    private static final int DEFAULT_MAX_STACKTRACE_LINES = 100;

    public static class CollectorLineProcessor implements LineProcessor {
        final Collection<String> mOutput;

        private CollectorLineProcessor() {
            this.mOutput = new ArrayList();
        }

        @Override
        public void flush() {
        }

        @Override
        public void process(String str) {
            this.mOutput.add(str);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = this.mOutput.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    public static class LimitLineProcessor implements LineProcessor {
        final LineProcessor mOutput;
        int mRemaining;

        public LimitLineProcessor(LineProcessor lineProcessor, int i) {
            this.mOutput = lineProcessor;
            this.mRemaining = i;
        }

        @Override
        public void flush() {
            this.mOutput.flush();
        }

        @Override
        public void process(String str) {
            if (this.mRemaining > 0) {
                this.mOutput.process(str);
                this.mRemaining--;
            }
        }
    }

    public interface LineProcessor {
        void flush();

        void process(String str);
    }

    public static class LineProcessorWriter extends Writer {
        int mCurrentIdx;
        char[] mCurrentLine = new char[1024];
        final LineProcessor mOutput;

        public LineProcessorWriter(LineProcessor lineProcessor) {
            this.mOutput = lineProcessor;
        }

        private void flushCurrentLine() {
            this.mOutput.process(new String(this.mCurrentLine, 0, this.mCurrentIdx));
            this.mCurrentIdx = 0;
        }

        @Override
        public void close() {
            flush();
        }

        @Override
        public void flush() {
            if (this.mCurrentIdx > 0) {
                flushCurrentLine();
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001a  */
        @Override
        public void write(char[] cArr, int i, int i2) throws IOException {
            for (int i3 = i; i3 < i + i2; i3++) {
                char c = cArr[i3];
                if (c != '\n') {
                    int i4 = this.mCurrentIdx;
                    char[] cArr2 = this.mCurrentLine;
                    if (i4 == cArr2.length) {
                        flushCurrentLine();
                    } else {
                        cArr2[i4] = c;
                        this.mCurrentIdx = i4 + 1;
                    }
                } else {
                    flushCurrentLine();
                }
            }
        }
    }

    public static String throwableToString(Throwable th) {
        return throwableToString(th, 100);
    }

    public static String throwableToString(Throwable th, int i) {
        if (th == null) {
            return "";
        }
        try {
            CollectorLineProcessor collectorLineProcessor = new CollectorLineProcessor();
            LineProcessor limitLineProcessor = i >= 0 ? new LimitLineProcessor(collectorLineProcessor, i) : collectorLineProcessor;
            th.printStackTrace(new PrintWriter(new LineProcessorWriter(limitLineProcessor)));
            limitLineProcessor.flush();
            return collectorLineProcessor.toString();
        } catch (Exception unused) {
            return "";
        }
    }
}
