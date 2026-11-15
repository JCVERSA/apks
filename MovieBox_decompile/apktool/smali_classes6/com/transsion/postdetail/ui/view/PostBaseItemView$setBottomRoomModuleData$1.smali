.class final Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomRoomModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.postdetail.ui.view.PostBaseItemView$setBottomRoomModuleData$1"
    f = "PostBaseItemView.kt"
    l = {
        0x2da
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/view/PostBaseItemView;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            "Lcom/transsion/postdetail/ui/view/PostBaseItemView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->$item:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->this$0:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->$item:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->this$0:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->$item:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_5

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->$item:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->this$0:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    move-object p1, v4

    .line 82
    :goto_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v5, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1$1$1;

    .line 91
    .line 92
    invoke-direct {v5, v1, p1, v4}, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1$1$1;-><init>(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    .line 93
    .line 94
    .line 95
    iput v2, p0, Lcom/transsion/postdetail/ui/view/PostBaseItemView$setBottomRoomModuleData$1;->label:I

    .line 96
    .line 97
    invoke-static {v3, v5, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v0, :cond_4

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p1
.end method
