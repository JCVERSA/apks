.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;->b:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;->b:Z

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->c1(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->Y()Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->H()Landroidx/lifecycle/b0;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1$a;->a(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
