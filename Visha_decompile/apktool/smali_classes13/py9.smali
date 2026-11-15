.class public interface abstract Lpy9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxz4;


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method

.method public e()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
.end method

.method public abstract getDuration()J
.end method

.method public abstract s()Z
.end method

.method public t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract u()Lorg/schabi/newpipe/extractor/stream/StreamType;
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract w()J
.end method
