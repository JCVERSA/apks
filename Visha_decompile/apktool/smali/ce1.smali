.class public final synthetic Lce1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce1;->b:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lce1;->b:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->b(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
