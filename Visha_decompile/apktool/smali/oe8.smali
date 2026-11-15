.class public final synthetic Loe8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe8;->b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Loe8;->b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->b(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    return-void
.end method
