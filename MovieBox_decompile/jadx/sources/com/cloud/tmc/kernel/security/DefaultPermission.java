package com.cloud.tmc.kernel.security;

import com.cloud.tmc.integration.constants.IntegrationConstants;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public class DefaultPermission implements Permission {
    private String authority;
    private String description;
    public static final DefaultPermission ALL = new AnonymousClass1("ALL", 0, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, "");
    private static final DefaultPermission[] $VALUES = $values();

    final enum AnonymousClass1 extends DefaultPermission {
        private AnonymousClass1(String str, int i10, String str2, String str3) {
            super(str, i10, str2, str3);
        }
    }

    private static DefaultPermission[] $values() {
        return new DefaultPermission[]{ALL};
    }

    public static DefaultPermission valueOf(String str) {
        return (DefaultPermission) Enum.valueOf(DefaultPermission.class, str);
    }

    public static DefaultPermission[] values() {
        return (DefaultPermission[]) $VALUES.clone();
    }

    @Override
    public String authority() {
        return this.authority;
    }

    @Override
    public String description() {
        return this.description;
    }

    private DefaultPermission(String str, int i10, String str2, String str3) {
        super(str, i10);
        this.authority = str2;
        this.description = str3;
    }
}
