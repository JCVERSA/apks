package com.bykv.vk.openvk.preload.a;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public abstract class q {

    public static final q f19917a = new q("DEFAULT") {
        {
            byte b10 = 0;
        }
    };

    private static q f19918b = new q("STRING") {
        {
            int i10 = 1;
            byte b10 = 0;
        }
    };

    private q(String str, int i10) {
        super(str, i10);
    }

    q(String str, int i10, byte b10) {
        this(str, i10);
    }
}
