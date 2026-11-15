.class public final Lcom/cloud/tmc/fps/record/RecordImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/fps/record/IRecord;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\nH\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/fps/record/RecordImp;",
        "Lcom/cloud/tmc/fps/record/IRecord;",
        "()V",
        "frameCallback",
        "com/cloud/tmc/fps/record/RecordImp$frameCallback$1",
        "Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;",
        "frameListeners",
        "",
        "Lcom/cloud/tmc/fps/record/IRecord$FrameListener;",
        "isStart",
        "",
        "mLastFrameTimeNanos",
        "",
        "addFrameListener",
        "",
        "frameListener",
        "recordFps",
        "start",
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


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/fps/record/RecordImp;

.field private static final frameCallback:Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;

.field private static final frameListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/fps/record/IRecord$FrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private static isStart:Z

.field private static mLastFrameTimeNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/fps/record/RecordImp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/fps/record/RecordImp;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/fps/record/RecordImp;->INSTANCE:Lcom/cloud/tmc/fps/record/RecordImp;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/fps/record/RecordImp;->frameListeners:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/fps/record/RecordImp;->frameCallback:Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getFrameListeners$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/fps/record/RecordImp;->frameListeners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMLastFrameTimeNanos$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/tmc/fps/record/RecordImp;->mLastFrameTimeNanos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$setMLastFrameTimeNanos$p(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/cloud/tmc/fps/record/RecordImp;->mLastFrameTimeNanos:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/cloud/tmc/fps/record/IRecord$FrameListener;)V
    .locals 2

    .line 1
    const-string v0, "frameListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/fps/record/RecordImp;->frameListeners:Ljava/util/List;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw p1
.end method

.method public recordFps(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/fps/record/RecordImp;->isStart:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/cloud/tmc/fps/record/RecordImp;->frameListeners:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/cloud/tmc/fps/record/IRecord$FrameListener;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lcom/cloud/tmc/fps/record/IRecord$FrameListener;->onRecord(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lcom/cloud/tmc/fps/record/RecordImp;->frameCallback:Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lcom/cloud/tmc/fps/record/RecordImp;->frameCallback:Lcom/cloud/tmc/fps/record/RecordImp$frameCallback$1;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    sput-boolean p1, Lcom/cloud/tmc/fps/record/RecordImp;->isStart:Z

    .line 52
    .line 53
    return-void
.end method
