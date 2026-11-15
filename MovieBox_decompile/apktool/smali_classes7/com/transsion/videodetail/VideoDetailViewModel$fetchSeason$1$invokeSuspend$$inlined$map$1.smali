.class public final Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/a;

.field final synthetic b:Lcom/transsion/videodetail/VideoDetailViewModel;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/a;Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;->b:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1$2;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;->b:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v1, p1, v2, v3}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/b;Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1
.end method
