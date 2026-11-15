.class public interface abstract Lorg/schabi/newpipe/extractor/playlist/b;
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

.method public abstract d()J
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0
.end method

.method public o()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0
.end method
