.class final Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1$job$1"
    f = "RoomDatabaseExt.kt"
    l = {
        0xe6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lgh8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgh8;"
        }
    .end annotation
.end field

.field final synthetic $emitInitialState:Z

.field final synthetic $ignoreInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $observer:Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;

.field final synthetic $tables:[Ljava/lang/String;

.field final synthetic $this_invalidationTrackerFlow:Landroidx/room/RoomDatabase;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;ZLgh8;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;",
            "Z",
            "Lgh8;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lwh1<",
            "-",
            "Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$this_invalidationTrackerFlow:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$observer:Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;

    iput-boolean p3, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$emitInitialState:Z

    iput-object p4, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$$this$callbackFlow:Lgh8;

    iput-object p5, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$tables:[Ljava/lang/String;

    iput-object p6, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$ignoreInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$this_invalidationTrackerFlow:Landroidx/room/RoomDatabase;

    iget-object v2, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$observer:Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;

    iget-boolean v3, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$emitInitialState:Z

    iget-object v4, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$$this$callbackFlow:Lgh8;

    iget-object v5, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$tables:[Ljava/lang/String;

    iget-object v6, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$ignoreInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;ZLgh8;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$this_invalidationTrackerFlow:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$observer:Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;

    invoke-virtual {p1, v1}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    :try_start_1
    iget-boolean p1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$emitInitialState:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$$this$callbackFlow:Lgh8;

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$tables:[Ljava/lang/String;

    invoke-static {v1}, Lhi;->p1([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Lbc9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$ignoreInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v2, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->label:I

    invoke-static {p0}, Lkotlinx/coroutines/DelayKt;->a(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$this_invalidationTrackerFlow:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$job$1;->$observer:Landroidx/room/RoomDatabaseKt$invalidationTrackerFlow$1$observer$1;

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    throw p1
.end method
