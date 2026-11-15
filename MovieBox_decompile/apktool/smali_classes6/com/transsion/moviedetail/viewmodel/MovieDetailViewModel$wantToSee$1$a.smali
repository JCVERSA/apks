.class final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$wantToSee$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$wantToSee$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$wantToSee$1$a;->a:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/lib/net/bean/BaseDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "MovieDetailViewModel"

    .line 6
    .line 7
    const-string v2, "end"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$wantToSee$1$a;->a:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->p(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Landroidx/lifecycle/b0;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$wantToSee$1$a;->a(Lcom/tn/lib/net/bean/BaseDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
