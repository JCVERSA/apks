package com.mgtv.irouting;

import com.mgtv.irouting.utils.b;
import com.mgtv.irouting.utils.c;
import com.mgtv.irouting.utils.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class a {
    private static ArrayList<String> c = new ArrayList<>();
    private static Lock d = new ReentrantLock();
    private static Lock e = new ReentrantLock();
    private static HashMap<String, ArrayList<c>> f = new HashMap<>();
    private static HashMap<String, ArrayList<b>> g = new HashMap<>();
    private static a h = null;
    public static boolean a = false;
    public static int b = 0;

    public static boolean a(String str) {
        if (b == 2) {
            return true;
        }
        e.a("[httpdns-v1.0.7]", "add domain : " + str);
        if (c.contains(str) || c.size() >= com.mgtv.irouting.utils.a.a) {
            return false;
        }
        d.lock();
        c.add(str);
        d.unlock();
        return true;
    }
}
