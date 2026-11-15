.class public final Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/Mp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4AtFileParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;
    }
.end annotation


# instance fields
.field public final cacheFileProvider:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final shouldInterleaveSamples:Z


# direct methods
.method public constructor <init>(ZLandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;)V
    .locals 1
    .param p2    # Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;->shouldInterleaveSamples:Z

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;->cacheFileProvider:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;

    return-void
.end method
