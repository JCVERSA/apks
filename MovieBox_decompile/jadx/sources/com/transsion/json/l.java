package com.transsion.json;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class l {

    private int f44725a;

    private final Reader f44726b;

    private char f44727c;

    private boolean f44728d;

    public l(Reader reader) {
        this.f44726b = reader.markSupported() ? reader : new BufferedReader(reader);
        this.f44728d = false;
        this.f44725a = 0;
    }

    private void e(Map map, String str, Object obj) {
        if (str != null) {
            if (!map.containsKey(str)) {
                map.put(str, obj);
                return;
            }
            throw new k("Duplicate key \"" + str + "\"");
        }
    }

    private boolean g(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (!Character.isDigit(cCharAt) && cCharAt != '-' && cCharAt != '.' && cCharAt != '+' && cCharAt != 'e' && cCharAt != 'E') {
                return false;
            }
        }
        return true;
    }

    private Object i(String str) {
        if (str.equals("")) {
            return str;
        }
        if (str.equalsIgnoreCase("true")) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("false")) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("null")) {
            return null;
        }
        return g(str) ? new n(str) : str;
    }

    private Map l() {
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

    public k a(String str) {
        return new k(str + toString());
    }

    public String b(char c10) {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            char cF = f();
            if (cF == 0 || cF == '\n' || cF == '\r') {
                break;
            }
            if (cF == '\\') {
                char cF2 = f();
                if (cF2 == 'b') {
                    sb2.append('\b');
                } else if (cF2 == 'f') {
                    sb2.append('\f');
                } else if (cF2 == 'n') {
                    sb2.append('\n');
                } else if (cF2 == 'r') {
                    sb2.append('\r');
                } else if (cF2 == 'x') {
                    sb2.append((char) Integer.parseInt(c(2), 16));
                } else if (cF2 == 't') {
                    sb2.append('\t');
                } else if (cF2 != 'u') {
                    sb2.append(cF2);
                } else {
                    sb2.append((char) Integer.parseInt(c(4), 16));
                }
            } else {
                if (cF == c10) {
                    return sb2.toString();
                }
                sb2.append(cF);
            }
        }
        throw a("Unterminated string");
    }

    public String c(int i10) {
        if (i10 == 0) {
            return "";
        }
        char[] cArr = new char[i10];
        int i11 = 0;
        if (this.f44728d) {
            this.f44728d = false;
            cArr[0] = this.f44727c;
            i11 = 1;
        }
        while (i11 < i10) {
            try {
                int i12 = this.f44726b.read(cArr, i11, i10 - i11);
                if (i12 == -1) {
                    break;
                }
                i11 += i12;
            } catch (IOException e10) {
                throw new k(e10);
            }
        }
        this.f44725a += i11;
        if (i11 < i10) {
            throw a("Substring bounds error");
        }
        this.f44727c = cArr[i10 - 1];
        return new String(cArr);
    }

    public void d() {
        int i10;
        if (this.f44728d || (i10 = this.f44725a) <= 0) {
            throw new k("Stepping back two steps is not supported");
        }
        this.f44725a = i10 - 1;
        this.f44728d = true;
    }

    public char f() {
        if (this.f44728d) {
            this.f44728d = false;
            char c10 = this.f44727c;
            if (c10 != 0) {
                this.f44725a++;
            }
            return c10;
        }
        try {
            int i10 = this.f44726b.read();
            if (i10 <= 0) {
                this.f44727c = (char) 0;
                return (char) 0;
            }
            this.f44725a++;
            char c11 = (char) i10;
            this.f44727c = c11;
            return c11;
        } catch (IOException e10) {
            throw new k(e10);
        }
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
                        StringBuilder sb2 = new StringBuilder();
                        while (cH >= ' ' && ",:]}/\\\"[{;=#".indexOf(cH) < 0) {
                            sb2.append(cH);
                            cH = f();
                        }
                        d();
                        String strTrim = sb2.toString().trim();
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
        char c10;
        char cH;
        ArrayList arrayList = new ArrayList();
        char cH2 = h();
        if (cH2 == '[') {
            c10 = ']';
        } else {
            if (cH2 != '(') {
                throw a("A JSONArray text must start with '['");
            }
            c10 = ')';
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
        if (c10 == cH) {
            return arrayList;
        }
        throw a("Expected a '" + c10 + "'");
    }

    public String toString() {
        return " at character " + this.f44725a;
    }

    public l(String str) {
        this(new StringReader(str));
    }
}
