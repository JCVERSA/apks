package com.hunantv.imgo.log;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class j {
    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str2.contains("timeout")) {
            sb.append("ping: cannot resolve " + str + ": Timeout");
        } else if (str2.contains("unknown")) {
            sb.append("ping: cannot resolve " + str + ": Unknown host");
        } else {
            a(str2, sb);
        }
        return sb.toString();
    }

    private static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<=\\D)([\\s0-9]+)(?=bytes)").matcher(str);
        while (matcher.find()) {
            String strTrim = matcher.group().toString().trim();
            if (matcher.group().toString().trim().matches("\\d+")) {
                arrayList.add(strTrim);
            }
        }
        return arrayList;
    }

    private static List<String> c(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<=ttl=)([0-9]+)(?=\\s)").matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group().toString().trim());
        }
        return arrayList;
    }

    private static String d(String str) {
        Matcher matcher = Pattern.compile("(?<=\\()([\\d]+\\.)+[\\d]+(?=\\))").matcher(str);
        String strTrim = null;
        while (matcher.find()) {
            strTrim = matcher.group().toString().trim();
        }
        return strTrim;
    }

    private static List<String> e(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<=icmp_seq=)([0-9]+)(?=\\s)").matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group().toString().trim());
        }
        return arrayList;
    }

    public static void a(String str, StringBuilder sb) {
        String strD = d(str);
        List<String> listB = b(str);
        List<String> listC = c(str);
        List<String> listA = a(str);
        List<String> listE = e(str);
        int size = listA.size();
        int i = 0;
        while (true) {
            int i2 = size - 1;
            if (i < i2) {
                sb.append(listB.get(i) + "bytes from " + strD + ": icmp_seq=#" + listE.get(i) + " ttl=" + listC.get(i) + " time=" + listA.get(i) + "ms\n");
                i++;
            } else {
                sb.append(listB.get(i2) + "bytes from " + strD + ": icmp_seq=#" + listE.get(i2) + " ttl=" + listC.get(i2) + " time=" + listA.get(i2) + "ms");
                return;
            }
        }
    }

    private static List<String> a(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<==)([\\.0-9\\s]+)(?=ms)").matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group().toString().trim());
        }
        return arrayList;
    }
}
