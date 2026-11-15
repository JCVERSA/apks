package com.hunantv.media.player.a;

import com.hunantv.media.player.utils.SocketUtil;
import java.net.UnknownHostException;
import java.security.InvalidParameterException;

public class c extends b {
    @Override
    public int b() {
        return 200000;
    }

    @Override
    public String[] b(String str) {
        int i;
        try {
            return SocketUtil.getAllAddressThrowable(str);
        } catch (SecurityException e) {
            e = e;
            c(e.getMessage());
            i = 106;
            a(i);
            e.printStackTrace();
            return null;
        } catch (UnknownHostException e2) {
            e = e2;
            c(e.getMessage());
            i = 105;
            a(i);
            e.printStackTrace();
            return null;
        } catch (InvalidParameterException e3) {
            e = e3;
            c(e.getMessage());
            i = 104;
            a(i);
            e.printStackTrace();
            return null;
        } catch (Exception e4) {
            e = e4;
            c(e.getMessage());
            i = 100;
            a(i);
            e.printStackTrace();
            return null;
        }
    }
}
