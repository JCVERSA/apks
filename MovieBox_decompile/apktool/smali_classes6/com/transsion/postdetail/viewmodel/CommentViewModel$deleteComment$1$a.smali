.class final Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/viewmodel/CommentViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$a;->a:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

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
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$a;->a:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->j()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$a;->a(Lcom/tn/lib/net/bean/BaseDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
