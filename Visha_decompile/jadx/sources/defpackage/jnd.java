package defpackage;

import com.transsion.json.k;
import com.transsion.json.n;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.CharUtils;

public class jnd {
    public int a;
    public final Reader b;
    public char c;
    public boolean d;

    public jnd(Reader reader) {
        this.b = reader.markSupported() ? reader : new BufferedReader(reader);
        this.d = false;
        this.a = 0;
    }

    public k a(String str) {
        return new k(str + toString());
    }

    public String b(char c) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            char cF = f();
            if (cF == 0 || cF == '\n' || cF == '\r') {
                break;
            }
            if (cF == '\\') {
                char cF2 = f();
                if (cF2 == 'b') {
                    sb.append('\b');
                } else if (cF2 == 'f') {
                    sb.append('\f');
                } else if (cF2 == 'n') {
                    sb.append('\n');
                } else if (cF2 == 'r') {
                    sb.append(CharUtils.CR);
                } else if (cF2 == 'x') {
                    sb.append((char) Integer.parseInt(c(2), 16));
                } else if (cF2 == 't') {
                    sb.append('\t');
                } else if (cF2 != 'u') {
                    sb.append(cF2);
                } else {
                    sb.append((char) Integer.parseInt(c(4), 16));
                }
            } else {
                if (cF == c) {
                    return sb.toString();
                }
                sb.append(cF);
            }
        }
        throw a("Unterminated string");
    }

    public String c(int i) {
        if (i == 0) {
            return "";
        }
        char[] cArr = new char[i];
        int i2 = 0;
        if (this.d) {
            this.d = false;
            cArr[0] = this.c;
            i2 = 1;
        }
        while (i2 < i) {
            try {
                int i3 = this.b.read(cArr, i2, i - i2);
                if (i3 == -1) {
                    break;
                }
                i2 += i3;
            } catch (IOException e) {
                throw new k(e);
            }
        }
        this.a += i2;
        if (i2 < i) {
            throw a("Substring bounds error");
        }
        this.c = cArr[i - 1];
        return new String(cArr);
    }

    public void d() {
        int i;
        if (this.d || (i = this.a) <= 0) {
            throw new k("Stepping back two steps is not supported");
        }
        this.a = i - 1;
        this.d = true;
    }

    public final void e(Map map, String str, Object obj) {
        if (str != null) {
            if (!map.containsKey(str)) {
                map.put(str, obj);
                return;
            }
            throw new k("Duplicate key \"" + str + "\"");
        }
    }

    public char f() {
        if (this.d) {
            this.d = false;
            char c = this.c;
            if (c != 0) {
                this.a++;
            }
            return c;
        }
        try {
            int i = this.b.read();
            if (i <= 0) {
                this.c = (char) 0;
                return (char) 0;
            }
            this.a++;
            char c2 = (char) i;
            this.c = c2;
            return c2;
        } catch (IOException e) {
            throw new k(e);
        }
    }

    public final boolean g(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != '-' && cCharAt != '.' && cCharAt != '+' && cCharAt != 'e' && cCharAt != 'E') {
                return false;
            }
        }
        return true;
    }

    public char h() {
        char cF;
        do {
            cF = f();
            if (cF == 0) {
                break;
            }
        } while (cF <= ' ');
        return cF;
    }

    public final Object i(String str) {
        if (str.equals("")) {
            return str;
        }
        if (str.equalsIgnoreCase(BooleanUtils.TRUE)) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase(BooleanUtils.FALSE)) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("null")) {
            return null;
        }
        return g(str) ? new n(str) : str;
    }

    public Object j() {
        char cH = h();
        if (cH != '\"') {
            if (cH != '[') {
                if (cH == '{') {
                    d();
                    return l();
                }
                if (cH != '\'') {
                    if (cH != '(') {
                        StringBuilder sb = new StringBuilder();
                        while (cH >= ' ' && ",:]}/\\\"[{;=#".indexOf(cH) < 0) {
                            sb.append(cH);
                            cH = f();
                        }
                        d();
                        String strTrim = sb.toString().trim();
                        if (strTrim.equals("")) {
                            throw a("Missing value");
                        }
                        return i(strTrim);
                    }
                }
            }
            d();
            return k();
        }
        return b(cH);
    }

    public List k() {
        char c;
        char cH;
        ArrayList arrayList = new ArrayList();
        char cH2 = h();
        if (cH2 == '[') {
            c = ']';
        } else {
            if (cH2 != '(') {
                throw a("A JSONArray text must start with '['");
            }
            c = ')';
        }
        if (h() == ']') {
            return arrayList;
        }
        d();
        while (true) {
            if (h() == ',') {
                d();
                arrayList.add(null);
            } else {
                d();
                arrayList.add(j());
            }
            cH = h();
            if (cH != ')') {
                if (cH != ',' && cH != ';') {
                    if (cH == ']') {
                        break;
                    }
                    throw a("Expected a ',' or ']'");
                }
                if (h() == ']') {
                    return arrayList;
                }
                d();
            } else {
                break;
            }
        }
        if (c == cH) {
            return arrayList;
        }
        throw a("Expected a '" + c + "'");
    }

    public final Map l() {
        HashMap map = new HashMap();
        if (h() != '{') {
            throw a("A JSONObject text must begin with '{'");
        }
        while (true) {
            char cH = h();
            if (cH == 0) {
                throw a("A JSONObject text must end with '}'");
            }
            if (cH == '}') {
                return map;
            }
            d();
            String string = j().toString();
            char cH2 = h();
            if (cH2 == '=') {
                if (f() != '>') {
                    d();
                }
            } else if (cH2 != ':') {
                throw a("Expected a ':' after a key");
            }
            e(map, string, j());
            char cH3 = h();
            if (cH3 != ',' && cH3 != ';') {
                if (cH3 == '}') {
                    return map;
                }
                throw a("Expected a ',' or '}'");
            }
            if (h() == '}') {
                return map;
            }
            d();
        }
    }

    public String toString() {
        return " at character " + this.a;
    }

    public jnd(String str) {
        this(new StringReader(str));
    }
}
