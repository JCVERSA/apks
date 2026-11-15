package org.mozilla.javascript.tools.idswitch;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

public class FileBody {
    private char[] buffer = new char[16384];
    private int bufferEnd;
    a firstReplace;
    a lastReplace;
    private int lineBegin;
    private int lineEnd;
    private int lineNumber;
    private int nextLineStart;

    public static class a {
        public a a;
        public int b;
        public int c;
        public String d;

        public a(int i, int i2, String str) {
            this.b = i;
            this.c = i2;
            this.d = str;
        }
    }

    private static boolean equals(String str, char[] cArr, int i, int i2) {
        if (str.length() != i2 - i) {
            return false;
        }
        int i3 = 0;
        while (i != i2) {
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i++;
            i3++;
        }
        return true;
    }

    public char[] getBuffer() {
        return this.buffer;
    }

    public int getLineBegin() {
        return this.lineBegin;
    }

    public int getLineEnd() {
        return this.lineEnd;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public boolean nextLine() {
        int i;
        int i2;
        int i3 = this.nextLineStart;
        char c = 0;
        if (i3 == this.bufferEnd) {
            this.lineNumber = 0;
            return false;
        }
        while (true) {
            i = this.bufferEnd;
            if (i3 == i || (c = this.buffer[i3]) == '\n' || c == '\r') {
                break;
            }
            i3++;
        }
        this.lineBegin = this.nextLineStart;
        this.lineEnd = i3;
        if (i3 == i) {
            this.nextLineStart = i3;
        } else if (c == '\r' && (i2 = i3 + 1) != i && this.buffer[i2] == '\n') {
            this.nextLineStart = i3 + 2;
        } else {
            this.nextLineStart = i3 + 1;
        }
        this.lineNumber++;
        return true;
    }

    public void readData(Reader reader) throws IOException {
        int length = this.buffer.length;
        int i = 0;
        while (true) {
            int i2 = reader.read(this.buffer, i, length - i);
            if (i2 < 0) {
                this.bufferEnd = i;
                return;
            }
            i += i2;
            if (length == i) {
                length *= 2;
                char[] cArr = new char[length];
                System.arraycopy(this.buffer, 0, cArr, 0, i);
                this.buffer = cArr;
            }
        }
    }

    public boolean setReplacement(int i, int i2, String str) {
        if (equals(str, this.buffer, i, i2)) {
            return false;
        }
        a aVar = new a(i, i2, str);
        a aVar2 = this.firstReplace;
        if (aVar2 == null) {
            this.lastReplace = aVar;
            this.firstReplace = aVar;
            return true;
        }
        if (i < aVar2.b) {
            aVar.a = aVar2;
            this.firstReplace = aVar;
            return true;
        }
        a aVar3 = aVar2.a;
        while (true) {
            a aVar4 = aVar3;
            a aVar5 = aVar2;
            aVar2 = aVar4;
            if (aVar2 == null) {
                break;
            }
            if (i < aVar2.b) {
                aVar.a = aVar2;
                aVar5.a = aVar;
                break;
            }
            aVar3 = aVar2.a;
        }
        if (aVar2 != null) {
            return true;
        }
        this.lastReplace.a = aVar;
        return true;
    }

    public void startLineLoop() {
        this.lineNumber = 0;
        this.nextLineStart = 0;
        this.lineEnd = 0;
        this.lineBegin = 0;
    }

    public boolean wasModified() {
        return this.firstReplace != null;
    }

    public void writeData(Writer writer) throws IOException {
        int i = 0;
        for (a aVar = this.firstReplace; aVar != null; aVar = aVar.a) {
            int i2 = aVar.b - i;
            if (i2 > 0) {
                writer.write(this.buffer, i, i2);
            }
            writer.write(aVar.d);
            i = aVar.c;
        }
        int i3 = this.bufferEnd - i;
        if (i3 != 0) {
            writer.write(this.buffer, i, i3);
        }
    }

    public void writeInitialData(Writer writer) throws IOException {
        writer.write(this.buffer, 0, this.bufferEnd);
    }
}
