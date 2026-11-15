.class final Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadTargetQueue"
.end annotation


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/ListPreloader$PreloadTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 14
    .line 15
    new-instance v2, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/bumptech/glide/ListPreloader$PreloadTarget;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iput p1, v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    .line 15
    .line 16
    iput p2, v0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    .line 17
    .line 18
    return-object v0
.end method
