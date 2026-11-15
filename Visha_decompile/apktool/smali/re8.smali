.class public final synthetic Lre8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lre8;->b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    iput-wide p2, p0, Lre8;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lre8;->b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    iget-wide v1, p0, Lre8;->c:J

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->e(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)V

    return-void
.end method
