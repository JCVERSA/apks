package defpackage;

import android.content.Context;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

public abstract class kui {
    public static UserManager a;
    public static volatile boolean b = !b();

    /* JADX WARN: Code duplicated, block: B:33:0x0054 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:9:0x000f, B:11:0x0013, B:18:0x001d, B:20:0x0021, B:21:0x002b, B:35:0x0058, B:36:0x005a, B:24:0x0031, B:26:0x0037, B:33:0x0054, B:31:0x0046), top: B:42:0x000f, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0058 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:9:0x000f, B:11:0x0013, B:18:0x001d, B:20:0x0021, B:21:0x002b, B:35:0x0058, B:36:0x005a, B:24:0x0031, B:26:0x0037, B:33:0x0054, B:31:0x0046), top: B:42:0x000f, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x005d A[RETURN] */
    public static boolean a(Context context) {
        boolean z;
        if (b() && !b) {
            synchronized (kui.class) {
                try {
                    if (!b) {
                        int i = 1;
                        while (true) {
                            if (i <= 2) {
                                if (a == null) {
                                    a = (UserManager) context.getSystemService(UserManager.class);
                                }
                                UserManager userManager = a;
                                if (userManager == null) {
                                    z = true;
                                } else {
                                    try {
                                        if (userManager.isUserUnlocked() || !userManager.isUserRunning(Process.myUserHandle())) {
                                            z = true;
                                        }
                                        if (z) {
                                            a = null;
                                        }
                                    } catch (NullPointerException e) {
                                        Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                                        a = null;
                                        i++;
                                    }
                                }
                                if (z) {
                                    b = true;
                                }
                                if (!z) {
                                    return true;
                                }
                            }
                            z = false;
                            if (z) {
                                a = null;
                            }
                            if (z) {
                                b = true;
                            }
                            if (!z) {
                                return true;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return false;
    }

    public static boolean b() {
        return true;
    }
}
