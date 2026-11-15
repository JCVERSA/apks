package com.yandex.mobile.ads.impl;

import defpackage.g1a;
import defpackage.y45;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.ByteString;

public final class xh0 {
    private static final ByteString a;
    private static final ByteString b;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        a = companion.encodeUtf8("\"\\");
        b = companion.encodeUtf8("\t ,=");
    }

    public static final ArrayList a(qf0 qf0Var, String str) {
        y45.j(qf0Var, "<this>");
        y45.j(str, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = qf0Var.size();
        for (int i = 0; i < size; i++) {
            if (g1a.E(str, qf0Var.a(i), true)) {
                try {
                    a(new Buffer().writeUtf8(qf0Var.b(i)), arrayList);
                } catch (EOFException e) {
                    rh1.a.getClass();
                    rh1.a(5, "Unable to parse challenge", e);
                }
            }
        }
        return arrayList;
    }

    private static final boolean b(Buffer buffer) throws EOFException {
        boolean z = false;
        while (!buffer.exhausted()) {
            byte b2 = buffer.getByte(0L);
            if (b2 == 44) {
                buffer.readByte();
                z = true;
            } else {
                if (b2 != 32 && b2 != 9) {
                    break;
                }
                buffer.readByte();
            }
        }
        return z;
    }

    public static final boolean a(vq1 vq1Var) {
        y45.j(vq1Var, "<this>");
        if (y45.e(vq1Var.o().f(), "HEAD")) {
            return false;
        }
        int iD = vq1Var.d();
        return (((iD >= 100 && iD < 200) || iD == 204 || iD == 304) && g92.a(vq1Var) == -1 && !g1a.E("chunked", vq1.a(vq1Var, "Transfer-Encoding"), true)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:76:0x010a A[EDGE_INSN: B:76:0x010a->B:64:0x010a BREAK  A[LOOP:2: B:22:0x0073->B:63:0x0107], SYNTHETIC] */
    private static final void a(Buffer buffer, ArrayList arrayList) throws EOFException {
        String strA;
        while (true) {
            String strA2 = null;
            while (true) {
                if (strA2 == null) {
                    b(buffer);
                    strA2 = a(buffer);
                    if (strA2 == null) {
                        return;
                    }
                }
                boolean zB = b(buffer);
                String strA3 = a(buffer);
                if (strA3 == null) {
                    if (buffer.exhausted()) {
                        arrayList.add(new go(strA2, kotlin.collections.a.l()));
                        return;
                    }
                    return;
                }
                int iA = g92.a(buffer);
                boolean zB2 = b(buffer);
                if (!zB && (zB2 || buffer.exhausted())) {
                    Map mapSingletonMap = Collections.singletonMap(null, strA3 + g1a.J("=", iA));
                    y45.i(mapSingletonMap, "singletonMap(...)");
                    arrayList.add(new go(strA2, mapSingletonMap));
                } else {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int iA2 = g92.a(buffer) + iA;
                    while (true) {
                        if (strA3 != null) {
                            if (iA2 != 0) {
                                break;
                                break;
                            }
                            if (iA2 <= 1) {
                                return;
                            }
                            if (buffer.exhausted()) {
                                strA = a(buffer);
                            } else {
                                strA = a(buffer);
                            }
                            if (strA != null) {
                                return;
                            }
                            if (b(buffer)) {
                            }
                            strA3 = null;
                        } else {
                            strA3 = a(buffer);
                            if (!b(buffer)) {
                                iA2 = g92.a(buffer);
                                if (iA2 != 0) {
                                    break;
                                }
                                if (iA2 <= 1 || b(buffer)) {
                                    return;
                                }
                                if (buffer.exhausted() && buffer.getByte(0L) == 34) {
                                    if (buffer.readByte() == 34) {
                                        Buffer buffer2 = new Buffer();
                                        while (true) {
                                            long jIndexOfElement = buffer.indexOfElement(a);
                                            if (jIndexOfElement != -1) {
                                                if (buffer.getByte(jIndexOfElement) == 34) {
                                                    buffer2.write(buffer, jIndexOfElement);
                                                    buffer.readByte();
                                                    strA = buffer2.readUtf8();
                                                    break;
                                                } else if (buffer.size() != jIndexOfElement + 1) {
                                                    buffer2.write(buffer, jIndexOfElement);
                                                    buffer.readByte();
                                                    buffer2.write(buffer, 1L);
                                                }
                                            }
                                            strA = null;
                                            break;
                                        }
                                    } else {
                                        throw new IllegalArgumentException("Failed requirement.");
                                    }
                                } else {
                                    strA = a(buffer);
                                }
                                if (strA != null || ((String) linkedHashMap.put(strA3, strA)) != null) {
                                    return;
                                }
                                if (b(buffer) && !buffer.exhausted()) {
                                    return;
                                } else {
                                    strA3 = null;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    arrayList.add(new go(strA2, linkedHashMap));
                    strA2 = strA3;
                }
            }
        }
    }

    private static final String a(Buffer buffer) {
        long jIndexOfElement = buffer.indexOfElement(b);
        if (jIndexOfElement == -1) {
            jIndexOfElement = buffer.size();
        }
        if (jIndexOfElement != 0) {
            return buffer.readUtf8(jIndexOfElement);
        }
        return null;
    }

    public static final void a(qs qsVar, gi0 gi0Var, qf0 qf0Var) {
        y45.j(qsVar, "<this>");
        y45.j(gi0Var, "url");
        y45.j(qf0Var, "headers");
        if (qsVar == qs.a) {
            return;
        }
        int i = os.n;
        List<os> listA = os.a.a(gi0Var, qf0Var);
        if (listA.isEmpty()) {
            return;
        }
        qsVar.a(gi0Var, listA);
    }
}
