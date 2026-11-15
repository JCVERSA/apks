package org.proninyaroslav.libretorrent.core.model.session;

import androidx.annotation.NonNull;
import org.proninyaroslav.libretorrent.core.exception.IPFilterException;

interface IPFilter {
    void addRange(@NonNull String str, @NonNull String str2) throws IPFilterException;
}
