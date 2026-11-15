.class public final Lo6/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/recyclerview/widget/DiffUtil$e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$e;)V
    .locals 1

    .line 1
    const-string v0, "backgroundThreadExecutor"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "diffCallback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lo6/d;->a:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iput-object p2, p0, Lo6/d;->b:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iput-object p3, p0, Lo6/d;->c:Landroidx/recyclerview/widget/DiffUtil$e;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/d;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroidx/recyclerview/widget/DiffUtil$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/d;->c:Landroidx/recyclerview/widget/DiffUtil$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/d;->a:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method
