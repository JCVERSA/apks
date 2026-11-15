package net.grandcentrix.tray.core;

import androidx.annotation.NonNull;
import defpackage.le8;
import defpackage.pf7;

public abstract class TrayStorage implements le8 {
    public String a;
    public Type b;

    public enum Type {
        UNDEFINED,
        USER,
        DEVICE
    }

    public TrayStorage(String str, Type type) {
        this.a = str;
        this.b = type;
    }

    public String a() {
        return this.a;
    }

    public Type b() {
        return this.b;
    }

    public abstract void registerOnTrayPreferenceChangeListener(@NonNull pf7 pf7Var);

    public abstract void unregisterOnTrayPreferenceChangeListener(@NonNull pf7 pf7Var);
}
