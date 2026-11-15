package cn.com.custommma.mobile.tracking.util;

import java.util.Comparator;

final class CommonUtil$1 implements Comparator<String> {
    @Override
    public int compare(String str, String str2) {
        return str.length() > str2.length() ? -1 : 1;
    }
}
