package com.hunantv.imgo.log.c;

import com.hunantv.media.drm.IDrmManager;

public class a extends com.hunantv.imgo.log.c.b {

    public static class C0130a {
    }

    public static final class b extends C0130a {
        private static boolean a = true;

        public static void a(String str, String str2) {
            if (a) {
                com.hunantv.imgo.log.c.b.a("110", str, str2);
            }
        }
    }

    public static class c extends C0130a {
        private static boolean a = true;

        public static void a(String str, String str2) {
            if (a) {
                com.hunantv.imgo.log.c.b.a(IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES, str, str2);
            }
        }
    }
}
