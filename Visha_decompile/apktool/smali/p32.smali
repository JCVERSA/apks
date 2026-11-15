.class public final synthetic Lp32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/MediaSource$Factory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp32;->b:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp32;->b:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Builder;->c(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method
