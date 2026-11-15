.class public final Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1$2;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/b;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1
.end method
