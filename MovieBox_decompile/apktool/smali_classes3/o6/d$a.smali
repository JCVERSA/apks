.class public final Lo6/d$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/d$a$a;
    }
.end annotation


# static fields
.field public static final d:Lo6/d$a$a;

.field private static final e:Ljava/lang/Object;

.field private static f:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroidx/recyclerview/widget/DiffUtil$e;

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6/d$a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo6/d$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo6/d$a;->d:Lo6/d$a$a;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lo6/d$a;->e:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$e;)V
    .locals 1

    .line 1
    const-string v0, "mDiffCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lo6/d$a;->a:Landroidx/recyclerview/widget/DiffUtil$e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lo6/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lo6/d$a;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lo6/d$a;->e:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lo6/d$a;->f:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lo6/d$a;->f:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    sget-object v0, Lo6/d$a;->f:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    iput-object v0, p0, Lo6/d$a;->c:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    throw v1

    .line 32
    :cond_1
    :goto_2
    new-instance v0, Lo6/d;

    .line 33
    .line 34
    iget-object v1, p0, Lo6/d$a;->b:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    iget-object v2, p0, Lo6/d$a;->c:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lo6/d$a;->a:Landroidx/recyclerview/widget/DiffUtil$e;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, v3}, Lo6/d;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
