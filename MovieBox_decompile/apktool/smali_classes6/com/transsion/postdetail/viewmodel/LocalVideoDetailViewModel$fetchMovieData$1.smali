.class public final Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->g()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->c(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "message:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->e(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1$onSuccess$1;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;->d:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1$onSuccess$1;-><init>(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ldg/a;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
