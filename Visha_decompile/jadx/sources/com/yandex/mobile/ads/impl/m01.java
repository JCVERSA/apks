package com.yandex.mobile.ads.impl;

import androidx.media3.common.MimeTypes;

public interface m01 {
    public static final m01 a = new a();

    public class a implements m01 {
        @Override
        public final boolean a(jc0 jc0Var) {
            String str = jc0Var.m;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || MimeTypes.APPLICATION_ICY.equals(str) || MimeTypes.APPLICATION_AIT.equals(str);
        }

        @Override
        public final sy1 b(jc0 jc0Var) {
            String str = jc0Var.m;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new se();
                    case "application/x-icy":
                        return new pi0();
                    case "application/id3":
                        return new si0(null);
                    case "application/x-emsg":
                        return new z50();
                    case "application/x-scte35":
                        return new s12();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(jc0 jc0Var);

    sy1 b(jc0 jc0Var);
}
