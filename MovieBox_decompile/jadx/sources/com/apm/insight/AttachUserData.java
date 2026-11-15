package com.apm.insight;

import androidx.annotation.Nullable;
import java.util.Map;

public interface AttachUserData {
    @Nullable
    Map<? extends String, ? extends String> getUserData(CrashType crashType);
}
