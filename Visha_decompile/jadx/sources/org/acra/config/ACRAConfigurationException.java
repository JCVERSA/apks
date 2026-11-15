package org.acra.config;

import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0005\u0018\u0000 \u000b2\u00060\u0001j\u0002`\u0002:\u0001\fB\u0013\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001d\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0005\u0010\n¨\u0006\r"}, d2 = {"Lorg/acra/config/ACRAConfigurationException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", NotificationCompat.CATEGORY_MESSAGE, MethodDecl.initName, "(Ljava/lang/String;)V", "detailMessage", "", "throwable", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ACRAConfigurationException extends Exception {
    private static final long serialVersionUID = -7355339673505996110L;

    public ACRAConfigurationException(String str) {
        super(str);
    }

    public ACRAConfigurationException(String str, Throwable th) {
        super(str, th);
    }
}
