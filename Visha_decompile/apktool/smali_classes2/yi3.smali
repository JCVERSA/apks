.class public final synthetic Lyi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/ExperimentalFrameExtractor;

.field public final synthetic c:Lcom/google/common/util/concurrent/g;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/ExperimentalFrameExtractor;Lcom/google/common/util/concurrent/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyi3;->b:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iput-object p2, p0, Lyi3;->c:Lcom/google/common/util/concurrent/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lyi3;->b:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iget-object p0, p0, Lyi3;->c:Lcom/google/common/util/concurrent/g;

    invoke-static {v0, p0}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->c(Landroidx/media3/transformer/ExperimentalFrameExtractor;Lcom/google/common/util/concurrent/g;)V

    return-void
.end method
