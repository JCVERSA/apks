.class public final synthetic Lud1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/CompositionPlayer;

.field public final synthetic c:Landroidx/media3/common/VideoFrameProcessingException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud1;->b:Landroidx/media3/transformer/CompositionPlayer;

    iput-object p2, p0, Lud1;->c:Landroidx/media3/common/VideoFrameProcessingException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lud1;->b:Landroidx/media3/transformer/CompositionPlayer;

    iget-object p0, p0, Lud1;->c:Landroidx/media3/common/VideoFrameProcessingException;

    invoke-static {v0, p0}, Landroidx/media3/transformer/CompositionPlayer;->m0(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method
