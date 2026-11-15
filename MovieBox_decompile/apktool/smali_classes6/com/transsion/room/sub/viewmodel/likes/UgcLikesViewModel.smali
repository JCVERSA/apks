.class public final Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$a;

.field private static j:I


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Lop/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->i:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->j:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/lifecycle/b0;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->b:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/b0;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->c:Landroidx/lifecycle/b0;

    .line 22
    .line 23
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 24
    .line 25
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-class v0, Lop/a;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lop/a;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->d:Lop/a;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d(Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;)Lop/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->d:Lop/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "userId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->g:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v2, "UgcLikesViewModel"

    .line 20
    .line 21
    const-string v3, "Likes getUgcVideoLikesBean"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    new-instance v10, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$getUgcVideoLikesBean$1;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {v10, p1, p2, p0, v0}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$getUgcVideoLikesBean$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    const/4 v11, 0x2

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->h:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const-string v1, "UgcLikesViewModel"

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "loadMore: load nextPage="

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v1, v3, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->g:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :goto_0
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 53
    .line 54
    const-string v2, "loadMore: nextPage is null or empty, cannot load more"

    .line 55
    .line 56
    invoke-virtual {p1, v1, v2, v0}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->c:Landroidx/lifecycle/b0;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final j(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "ugcVideoId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->e:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v4, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p1, p2, p0, v0}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;-><init>(Ljava/lang/String;ZLcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "UgcLikesViewModel"

    .line 4
    .line 5
    const-string v2, "refresh: reset page to 1 and load first page"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "1"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean v3, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->h:Z

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
