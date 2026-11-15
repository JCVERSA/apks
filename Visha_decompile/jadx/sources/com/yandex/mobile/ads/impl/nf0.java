package com.yandex.mobile.ads.impl;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Result;
import kotlin.text.Regex;

public final class nf0 {
    private static final Charset a = defpackage.qv0.g;
    public static final int b = 0;

    public interface a<T> {
        T a(String str);
    }

    public static final boolean a(Map<String, String> map, vh0 vh0Var, boolean z) {
        y45.j(map, "responseHeaders");
        y45.j(vh0Var, "httpHeader");
        String strA = a(map, vh0Var);
        return strA == null ? z : Boolean.parseBoolean(strA);
    }

    public static int b(Map map, vh0 vh0Var) {
        y45.j(vh0Var, "httpHeader");
        String strA = a(map, vh0Var);
        int i = oa.b;
        if (strA != null) {
            try {
                return Integer.parseInt(strA);
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static final ArrayList c(Map map, vh0 vh0Var) {
        y45.j(map, "responseHeaders");
        y45.j(vh0Var, "header");
        return a(map, vh0Var, new of0());
    }

    public static final String a(Map<String, String> map, vh0 vh0Var) {
        y45.j(vh0Var, "httpHeader");
        if (map != null) {
            return map.get(vh0Var.a());
        }
        return null;
    }

    public static final ArrayList a(Map map, vh0 vh0Var, a aVar) {
        List listK;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var, "header");
        y45.j(aVar, "parser");
        ArrayList arrayList = new ArrayList();
        String strA = a(map, vh0Var);
        if (strA != null && strA.length() != 0) {
            List<String> listSplit = new Regex(StringUtils.COMMA).split(strA, 0);
            if (!listSplit.isEmpty()) {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        if (listIterator.previous().length() != 0) {
                            listK = defpackage.i81.U0(listSplit, listIterator.nextIndex() + 1);
                            break;
                        }
                    } else {
                        listK = defpackage.y71.k();
                        break;
                    }
                }
            } else {
                listK = defpackage.y71.k();
                break;
            }
            for (String str : (String[]) listK.toArray(new String[0])) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    int length = str.length() - 1;
                    int i = 0;
                    boolean z = false;
                    while (i <= length) {
                        boolean z2 = y45.l(str.charAt(!z ? i : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            }
                            length--;
                        } else if (z2) {
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    String strDecode = URLDecoder.decode(str.subSequence(i, length + 1).toString(), "UTF-8");
                    y45.g(strDecode);
                    Object objA = aVar.a(strDecode);
                    if (objA != null) {
                        arrayList.add(objA);
                    } else {
                        objA = null;
                    }
                    Result.m279constructorimpl(objA);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m279constructorimpl(kotlin.c.a(th));
                }
            }
        }
        return arrayList;
    }

    public static final Charset a(Map<String, String> map) {
        List listK;
        List listK2;
        if (map == null) {
            return a;
        }
        String str = map.get("Content-Type");
        if (str != null) {
            List<String> listSplit = new Regex(ProcessInfo.SPLIT_NEW_VERSION).split(str, 0);
            if (!listSplit.isEmpty()) {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        if (listIterator.previous().length() != 0) {
                            listK = defpackage.i81.U0(listSplit, listIterator.nextIndex() + 1);
                            break;
                        }
                    } else {
                        listK = defpackage.y71.k();
                        break;
                    }
                }
            } else {
                listK = defpackage.y71.k();
                break;
            }
            String[] strArr = (String[]) listK.toArray(new String[0]);
            int length = strArr.length;
            for (int i = 1; i < length; i++) {
                String str2 = strArr[i];
                int length2 = str2.length() - 1;
                int i2 = 0;
                boolean z = false;
                while (i2 <= length2) {
                    boolean z2 = y45.l(str2.charAt(!z ? i2 : length2), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length2--;
                    } else if (z2) {
                        i2++;
                    } else {
                        z = true;
                    }
                }
                List<String> listSplit2 = new Regex("=").split(str2.subSequence(i2, length2 + 1).toString(), 0);
                if (!listSplit2.isEmpty()) {
                    ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                    while (true) {
                        if (listIterator2.hasPrevious()) {
                            if (listIterator2.previous().length() != 0) {
                                listK2 = defpackage.i81.U0(listSplit2, listIterator2.nextIndex() + 1);
                                break;
                            }
                        } else {
                            listK2 = defpackage.y71.k();
                            break;
                        }
                    }
                } else {
                    listK2 = defpackage.y71.k();
                    break;
                }
                String[] strArr2 = (String[]) listK2.toArray(new String[0]);
                if (strArr2.length == 2 && y45.e(strArr2[0], "charset")) {
                    Charset charsetForName = Charset.forName(strArr2[1]);
                    y45.i(charsetForName, "forName(...)");
                    return charsetForName;
                }
            }
        }
        return a;
    }
}
