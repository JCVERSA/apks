package com.yandex.varioqub.analyticadapter.data;

import androidx.media3.exoplayer.upstream.CmcdData;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/yandex/varioqub/analyticadapter/data/ConfigData;", "", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getOldConfigVersion", "()Ljava/lang/String;", "oldConfigVersion", "b", "getNewConfigVersion", "newConfigVersion", "", "c", "J", "getConfigLoadTimestamp", "()J", "configLoadTimestamp", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;J)V", "analytic-adapter_release"}, k = 1, mv = {1, 6, 0})
public final class ConfigData {

    private final String oldConfigVersion;

    private final String newConfigVersion;

    private final long configLoadTimestamp;

    public ConfigData(String str, String str2, long j) {
        this.oldConfigVersion = str;
        this.newConfigVersion = str2;
        this.configLoadTimestamp = j;
    }

    public final long getConfigLoadTimestamp() {
        return this.configLoadTimestamp;
    }

    public final String getNewConfigVersion() {
        return this.newConfigVersion;
    }

    public final String getOldConfigVersion() {
        return this.oldConfigVersion;
    }
}
