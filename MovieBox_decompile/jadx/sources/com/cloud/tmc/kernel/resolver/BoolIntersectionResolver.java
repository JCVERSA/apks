package com.cloud.tmc.kernel.resolver;

import java.util.List;

public class BoolIntersectionResolver implements ResultResolver<Boolean> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Boolean resolve(List<Boolean> list) {
        if (list == null) {
            return Boolean.FALSE;
        }
        for (Boolean bool : list) {
            if (bool == null) {
                return Boolean.FALSE;
            }
            if (!bool.booleanValue()) {
                return Boolean.FALSE;
            }
        }
        return Boolean.TRUE;
    }
}
