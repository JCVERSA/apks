package com.transsion.dbdata.source.data.ktx;

import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;", "", "filtered", "", "needFilter", "excludeConvertOutFolder", MethodDecl.initName, "(ZZZ)V", "getFiltered", "()Z", "getNeedFilter", "getExcludeConvertOutFolder", "isSimpleMode", "isExcludeOnlyMode", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioFilterParams {
    private final boolean excludeConvertOutFolder;
    private final boolean filtered;
    private final boolean isExcludeOnlyMode;
    private final boolean isSimpleMode;
    private final boolean needFilter;

    public AudioFilterParams() {
        this(false, false, false, 7, null);
    }

    public static AudioFilterParams copy$default(AudioFilterParams audioFilterParams, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = audioFilterParams.filtered;
        }
        if ((i & 2) != 0) {
            z2 = audioFilterParams.needFilter;
        }
        if ((i & 4) != 0) {
            z3 = audioFilterParams.excludeConvertOutFolder;
        }
        return audioFilterParams.copy(z, z2, z3);
    }

    public final boolean getFiltered() {
        return this.filtered;
    }

    public final boolean getNeedFilter() {
        return this.needFilter;
    }

    public final boolean getExcludeConvertOutFolder() {
        return this.excludeConvertOutFolder;
    }

    public final AudioFilterParams copy(boolean filtered, boolean needFilter, boolean excludeConvertOutFolder) {
        return new AudioFilterParams(filtered, needFilter, excludeConvertOutFolder);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioFilterParams)) {
            return false;
        }
        AudioFilterParams audioFilterParams = (AudioFilterParams) other;
        return this.filtered == audioFilterParams.filtered && this.needFilter == audioFilterParams.needFilter && this.excludeConvertOutFolder == audioFilterParams.excludeConvertOutFolder;
    }

    public final boolean getExcludeConvertOutFolder() {
        return this.excludeConvertOutFolder;
    }

    public final boolean getFiltered() {
        return this.filtered;
    }

    public final boolean getNeedFilter() {
        return this.needFilter;
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.filtered) * 31) + Boolean.hashCode(this.needFilter)) * 31) + Boolean.hashCode(this.excludeConvertOutFolder);
    }

    public final boolean getIsExcludeOnlyMode() {
        return this.isExcludeOnlyMode;
    }

    public final boolean getIsSimpleMode() {
        return this.isSimpleMode;
    }

    public String toString() {
        return "AudioFilterParams(filtered=" + this.filtered + ", needFilter=" + this.needFilter + ", excludeConvertOutFolder=" + this.excludeConvertOutFolder + ")";
    }

    public AudioFilterParams(boolean z, boolean z2, boolean z3) {
        this.filtered = z;
        this.needFilter = z2;
        this.excludeConvertOutFolder = z3;
        boolean z4 = false;
        this.isSimpleMode = (z2 || z3) ? false : true;
        if (!z2 && z3) {
            z4 = true;
        }
        this.isExcludeOnlyMode = z4;
    }

    public AudioFilterParams(boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? true : z3);
    }
}
