package com.tn.tranpay.helper;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

public final class IPHelper {

    private static String f40631b;

    private static long f40632c;

    public static final IPHelper f40630a = new IPHelper();

    private static final List f40633d = CollectionsKt.o("https://api.ipify.org", "https://ifconfig.me/ip", "https://icanhazip.com", "https://ipinfo.io/ip");

    private IPHelper() {
    }

    public final Object h(String str, Continuation continuation) {
        return i.g(y0.b(), new IPHelper$fetchIPFromService$2(str, null), continuation);
    }

    public static Object j(IPHelper iPHelper, boolean z10, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return iPHelper.i(z10, continuation);
    }

    public final boolean k(String str) {
        List listS0 = StringsKt.S0(str, new String[]{"."}, false, 0, 6, null);
        if (listS0.size() != 4) {
            return false;
        }
        List list = listS0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                try {
                    int i10 = Integer.parseInt((String) it.next());
                    if (i10 < 0 || i10 >= 256) {
                        return false;
                    }
                } catch (NumberFormatException unused) {
                    return false;
                }
            }
        }
        return true;
    }

    public final Object i(boolean z10, Continuation continuation) {
        return i.g(y0.b(), new IPHelper$getCurrentIP$2(z10, null), continuation);
    }
}
