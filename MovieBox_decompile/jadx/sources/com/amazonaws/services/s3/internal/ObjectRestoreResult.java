package com.amazonaws.services.s3.internal;

import java.util.Date;

public interface ObjectRestoreResult {
    void setOngoingRestore(boolean z10);

    void setRestoreExpirationTime(Date date);
}
