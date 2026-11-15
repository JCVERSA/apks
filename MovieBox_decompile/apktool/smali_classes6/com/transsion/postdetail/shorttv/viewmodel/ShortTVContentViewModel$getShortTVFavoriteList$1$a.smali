.class final Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$a;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$a;->b:Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/ShortTVRespData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p2, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$a;->a:Z

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/transsion/moviedetailapi/bean/ShortTVRespData;->setRefresh(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$a;->b:Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->h()Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/ShortTVRespData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1$a;->a(Lcom/transsion/moviedetailapi/bean/ShortTVRespData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
