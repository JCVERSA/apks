.class public final synthetic Lx62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/VideoFrameProcessor$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/VideoFrameProcessor$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx62;->b:Landroidx/media3/common/VideoFrameProcessor$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lx62;->b:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-interface {p0}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onEnded()V

    return-void
.end method
