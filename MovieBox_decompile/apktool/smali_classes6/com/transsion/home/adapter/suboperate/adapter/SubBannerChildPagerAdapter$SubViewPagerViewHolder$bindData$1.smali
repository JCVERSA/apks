.class final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->g(Lcom/transsion/home/bean/BannerData;I)V
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
    c = "com.transsion.home.adapter.suboperate.adapter.SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1"
    f = "SubBannerChildPagerAdapter.kt"
    l = {
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $coverUrl:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->$coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->this$0:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

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
    .locals 3
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
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->$coverUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->this$0:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;-><init>(Ljava/lang/String;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->$coverUrl:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->this$0:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    .line 38
    .line 39
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->getImageView()Landroid/widget/ImageView;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object p1, v4

    .line 64
    :goto_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v5, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1$1$1$1;

    .line 78
    .line 79
    invoke-direct {v5, v1, v3, v4}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1$1$1$1;-><init>(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    .line 80
    .line 81
    .line 82
    iput v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;->label:I

    .line 83
    .line 84
    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v0, :cond_4

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p1
.end method
