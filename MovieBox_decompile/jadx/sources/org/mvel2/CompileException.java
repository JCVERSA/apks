package org.mvel2;

import java.util.Collections;
import java.util.List;
import org.mvel2.util.m;
import org.mvel2.util.s;

public class CompileException extends RuntimeException {
    private int column;
    private int cursor;
    private List<c> errors;
    private Object evaluationContext;
    private char[] expr;
    private int lastLineStart;
    private int lineNumber;
    private int msgOffset;

    public CompileException(String str, List<c> list, char[] cArr, int i10, ParserContext parserContext) {
        super(str);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i10;
        if (!list.isEmpty()) {
            c next = list.iterator().next();
            this.cursor = next.c();
            this.lineNumber = next.e();
            this.column = next.b();
        }
        this.errors = list;
    }

    private void calcRowAndColumn() {
        int i10;
        char[] cArr;
        int i11 = this.lineNumber;
        if (i11 > 1 || (i10 = this.column) > 1) {
            return;
        }
        if ((i11 != 0 && i10 != 0) || (cArr = this.expr) == null || cArr.length == 0) {
            return;
        }
        int i12 = 1;
        int i13 = 1;
        for (int i14 = 0; i14 < this.cursor; i14++) {
            char[] cArr2 = this.expr;
            if (i14 >= cArr2.length) {
                break;
            }
            char c10 = cArr2[i14];
            if (c10 == '\n') {
                i12++;
                i13 = 1;
            } else if (c10 != '\r') {
                i13++;
            }
        }
        this.lineNumber = i12;
        this.column = i13;
    }

    private String generateErrorMessage() {
        s sVarD = new s().d("[Error: " + super.getMessage() + "]\n");
        int length = sVarD.length();
        sVarD.d("[Near : {... ");
        sVarD.b(showCodeNearError(this.expr, this.cursor)).d(" ....}]\n").d(m.A0(' ', sVarD.length() - length));
        if (this.msgOffset < 0) {
            this.msgOffset = 0;
        }
        sVarD.d(m.A0(' ', this.msgOffset)).a('^');
        calcRowAndColumn();
        if (this.evaluationContext != null) {
            sVarD.d("\n").d("In ").c(this.evaluationContext);
        } else if (this.lineNumber != -1) {
            sVarD.d("\n").d("[Line: " + this.lineNumber + ", Column: " + this.column + "]");
        }
        return sVarD.toString();
    }

    private CharSequence showCodeNearError(char[] cArr, int i10) {
        String str;
        int i11;
        String strSubstring;
        if (cArr == null) {
            return "Unknown";
        }
        int i12 = i10 - 20;
        int length = i10 + 30;
        if (length > cArr.length) {
            length = cArr.length;
            i12 = i10 - 50;
        }
        if (i12 < 0) {
            i12 = 0;
        }
        String strTrim = String.copyValueOf(cArr, i12, length - i12).trim();
        if (i10 < length) {
            int i13 = i10;
            if (i10 > 0) {
                while (i13 > 0 && !m.q0(cArr[i13 - 1])) {
                    i13--;
                }
            }
            i11 = i10 - i13;
            str = new String(cArr, i13, cArr.length - i13);
            for (int i14 = 0; i14 < str.length(); i14++) {
                char cCharAt = str.charAt(i14);
                if (cCharAt == '\n' || cCharAt == ')') {
                    str = str.substring(0, i14);
                    break;
                }
            }
            if (str.length() >= 30) {
                str = str.substring(0, 30);
            }
        } else {
            str = null;
            i11 = 0;
        }
        while (true) {
            int iIndexOf = strTrim.indexOf(10);
            int iLastIndexOf = strTrim.lastIndexOf(10);
            if (iIndexOf == -1) {
                break;
            }
            int iIndexOf2 = str == null ? 0 : strTrim.indexOf(str);
            if (iIndexOf == -1 || iIndexOf != iLastIndexOf) {
                strSubstring = iIndexOf < iIndexOf2 ? strTrim.substring(iIndexOf + 1, iLastIndexOf) : strTrim.substring(0, iIndexOf);
                strTrim = strSubstring;
            } else {
                if (iIndexOf > iIndexOf2) {
                    strSubstring = strTrim.substring(0, iIndexOf);
                } else if (iIndexOf < iIndexOf2) {
                    strSubstring = strTrim.substring(iIndexOf + 1, strTrim.length());
                }
                strTrim = strSubstring;
            }
        }
        String strTrim2 = strTrim.trim();
        if (str != null) {
            this.msgOffset = strTrim2.indexOf(str) + i11;
        } else {
            this.msgOffset = strTrim.length() - (strTrim.length() - strTrim2.length());
        }
        if (this.msgOffset == 0 && i11 == 0) {
            this.msgOffset = i10;
        }
        return strTrim2;
    }

    public CharSequence getCodeNearError() {
        return showCodeNearError(this.expr, this.cursor);
    }

    public int getColumn() {
        return this.column;
    }

    public int getCursor() {
        return this.cursor;
    }

    public int getCursorOffet() {
        return this.msgOffset;
    }

    public List<c> getErrors() {
        List<c> list = this.errors;
        return list != null ? list : Collections.emptyList();
    }

    public char[] getExpr() {
        return this.expr;
    }

    public int getLastLineStart() {
        return this.lastLineStart;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    @Override
    public String getMessage() {
        return generateErrorMessage();
    }

    public void setColumn(int i10) {
        this.column = i10;
    }

    public void setCursor(int i10) {
        this.cursor = i10;
    }

    public void setErrors(List<c> list) {
        this.errors = list;
    }

    public void setEvaluationContext(Object obj) {
        this.evaluationContext = obj;
    }

    public void setExpr(char[] cArr) {
        this.expr = cArr;
    }

    public void setLastLineStart(int i10) {
        this.lastLineStart = i10;
    }

    public void setLineNumber(int i10) {
        this.lineNumber = i10;
    }

    @Override
    public String toString() {
        return generateErrorMessage();
    }

    public CompileException(String str, char[] cArr, int i10, Throwable th2) {
        super(str, th2);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i10;
    }

    public CompileException(String str, char[] cArr, int i10) {
        super(str);
        this.msgOffset = 0;
        this.lineNumber = 1;
        this.column = 0;
        this.lastLineStart = 0;
        this.expr = cArr;
        this.cursor = i10;
    }
}
