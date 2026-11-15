.class final Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lam/b;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lam/b;->d(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
