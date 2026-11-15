.class public final Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/fps/record/RecordImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cloud/tmc/fps/record/RecordImp$frameCallback$1",
        "Landroid/view/Choreographer$FrameCallback;",
        "doFrame",
        "",
        "frameTimeNanos",
        "",
        "com.cloud.tmc.minifps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/tmc/fps/record/RecordImp;->access$getMLastFrameTimeNanos$p()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/fps/record/RecordImp;->access$getMLastFrameTimeNanos$p()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sub-long v0, p1, v0

    .line 16
    .line 17
    const v2, 0xf4240

    .line 18
    .line 19
    .line 20
    int-to-long v2, v2

    .line 21
    div-long/2addr v0, v2

    .line 22
    invoke-static {}, Lcom/cloud/tmc/fps/record/RecordImp;->access$getFrameListeners$p()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/cloud/tmc/fps/record/IRecord$FrameListener;

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-interface {v3, v4, v5, v0, v1}, Lcom/cloud/tmc/fps/record/IRecord$FrameListener;->onFrame(JJ)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/fps/record/RecordImp;->access$setMLastFrameTimeNanos$p(J)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
