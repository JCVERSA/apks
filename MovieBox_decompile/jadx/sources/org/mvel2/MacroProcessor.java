package org.mvel2;

import java.util.Map;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.util.m;
import org.mvel2.util.s;

public class MacroProcessor extends AbstractParser {
    private Map<String, Object> macros;

    public MacroProcessor() {
    }

    public void captureToWhitespace() {
        while (true) {
            int i10 = this.cursor;
            if (i10 >= this.length || m.q0(this.expr[i10])) {
                return;
            } else {
                this.cursor++;
            }
        }
    }

    public Map<String, Object> getMacros() {
        return this.macros;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:72:0x0108  */
    /* JADX WARN: Code duplicated, block: B:73:0x010a  */
    public char[] parse(char[] cArr) {
        char c10;
        int i10;
        setExpression(cArr);
        s sVar = new s();
        boolean z10 = true;
        while (true) {
            int i11 = this.cursor;
            if (i11 >= this.length) {
                return sVar.h();
            }
            while (true) {
                int i12 = this.cursor;
                if (i12 >= this.length || !m.c0(this.expr[i12])) {
                    break;
                }
                this.cursor++;
            }
            int i13 = this.cursor;
            if (i13 > i11) {
                Map<String, Object> map = this.macros;
                String str = new String(this.expr, i11, i13 - i11);
                if (map.containsKey(str) && z10) {
                    android.support.v4.media.session.c.a(this.macros.get(str));
                    throw null;
                }
                sVar.d(str);
            }
            int i14 = this.cursor;
            int i15 = this.length;
            if (i14 < i15) {
                char[] cArr2 = this.expr;
                char c11 = cArr2[i14];
                if (c11 == '\"' || c11 == '\'') {
                    int iH = m.h(c11, cArr2, i14, i15);
                    this.cursor = iH;
                    sVar.d(new String(cArr2, i14, iH - i14));
                    int i16 = this.cursor;
                    if (i16 < this.length) {
                        if (m.c0(this.expr[i16])) {
                            this.cursor--;
                        }
                        c10 = this.expr[this.cursor];
                        if (c10 == '(') {
                            z10 = true;
                        } else if (c10 != '.') {
                            z10 = false;
                        } else if (c10 != ';' || c10 == '{') {
                            z10 = true;
                        }
                        sVar.a(c10);
                    }
                } else if (c11 == '/') {
                    if (i14 + 1 != i15) {
                        char c12 = cArr2[i14 + 1];
                        if (c12 == '*') {
                            int i17 = i15 - 1;
                            while (true) {
                                i10 = this.cursor;
                                if (i10 == i17) {
                                    break;
                                }
                                char[] cArr3 = this.expr;
                                if (cArr3[i10] == '*' && cArr3[i10 + 1] == '/') {
                                    break;
                                }
                                this.cursor = i10 + 1;
                            }
                            this.cursor = i10 + 2;
                        } else if (c12 == '/') {
                            while (true) {
                                int i18 = this.cursor;
                                if (i18 == this.length || this.expr[i18] == '\n') {
                                    break;
                                }
                                this.cursor = i18 + 1;
                            }
                        }
                    }
                    int i19 = this.cursor;
                    if (i19 < this.length) {
                        this.cursor = i19 + 1;
                    }
                    sVar.d(new String(this.expr, i14, this.cursor - i14));
                    int i20 = this.cursor;
                    if (i20 < this.length) {
                        this.cursor = i20 - 1;
                    }
                } else if (c11 != '\\') {
                    c10 = this.expr[this.cursor];
                    if (c10 == '(') {
                        z10 = true;
                    } else if (c10 != '.') {
                        z10 = false;
                    } else if (c10 != ';') {
                        z10 = true;
                    } else {
                        z10 = true;
                    }
                    sVar.a(c10);
                } else {
                    this.cursor = i14 + 1;
                }
            }
            this.cursor++;
        }
    }

    public void setMacros(Map<String, Object> map) {
        this.macros = map;
    }

    public MacroProcessor(Map<String, Object> map) {
        this.macros = map;
    }

    public String parse(String str) {
        return new String(parse(str.toCharArray()));
    }
}
