.class public final synthetic Landroidx/media3/exoplayer/source/preload/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe8;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->b(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;)Z

    move-result p0

    return p0
.end method
