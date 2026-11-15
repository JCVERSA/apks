.class public final synthetic Lw62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/DefaultVideoFrameProcessor;

.field public final synthetic c:Ljava/lang/InterruptedException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/lang/InterruptedException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw62;->b:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iput-object p2, p0, Lw62;->c:Ljava/lang/InterruptedException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw62;->b:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iget-object p0, p0, Lw62;->c:Ljava/lang/InterruptedException;

    invoke-static {v0, p0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->b(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/lang/InterruptedException;)V

    return-void
.end method
