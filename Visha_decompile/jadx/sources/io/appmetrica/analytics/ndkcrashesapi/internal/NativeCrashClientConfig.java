package io.appmetrica.analytics.ndkcrashesapi.internal;

import androidx.media3.exoplayer.upstream.CmcdData;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, d2 = {"Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientConfig;", "", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getNativeCrashFolder", "()Ljava/lang/String;", "nativeCrashFolder", "b", "getNativeCrashMetadata", "nativeCrashMetadata", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;)V", "ndkcrashes-api_release"}, k = 1, mv = {1, 6, 0})
public final class NativeCrashClientConfig {

    private final String nativeCrashFolder;

    private final String nativeCrashMetadata;

    public NativeCrashClientConfig(String str, String str2) {
        this.nativeCrashFolder = str;
        this.nativeCrashMetadata = str2;
    }

    public final String getNativeCrashFolder() {
        return this.nativeCrashFolder;
    }

    public final String getNativeCrashMetadata() {
        return this.nativeCrashMetadata;
    }
}
