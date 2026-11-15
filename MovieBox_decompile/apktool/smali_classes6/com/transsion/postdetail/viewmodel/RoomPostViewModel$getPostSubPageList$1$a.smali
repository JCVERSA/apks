.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1$a;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1$a;->a:Z

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->setRefresh(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->isRefresh()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p2, 0x0

    .line 22
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "getPostSubPageList net,isRefresh:"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v1, "RoomPostVM"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->q(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    sget-object p2, Lcom/transsion/postdetail/util/g;->a:Lcom/transsion/postdetail/util/g;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/util/g;->b(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
