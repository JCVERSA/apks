.class final Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/svg/SvgDivImageLoader;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.yandex.div.svg.SvgDivImageLoader$loadImage$2"
    f = "SvgDivImageLoader.kt"
    l = {
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $call:Lokhttp3/Call;

.field final synthetic $callback:Lrk2;

.field final synthetic $imageUrl:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/yandex/div/svg/SvgDivImageLoader;


# direct methods
.method public constructor <init>(Lrk2;Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lokhttp3/Call;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrk2;",
            "Lcom/yandex/div/svg/SvgDivImageLoader;",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            "Lwh1<",
            "-",
            "Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$callback:Lrk2;

    iput-object p2, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->this$0:Lcom/yandex/div/svg/SvgDivImageLoader;

    iput-object p3, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$call:Lokhttp3/Call;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;

    iget-object v1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$callback:Lrk2;

    iget-object v2, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->this$0:Lcom/yandex/div/svg/SvgDivImageLoader;

    iget-object v3, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$imageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$call:Lokhttp3/Call;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;-><init>(Lrk2;Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lokhttp3/Call;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object p1

    new-instance v1, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;

    iget-object v4, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->this$0:Lcom/yandex/div/svg/SvgDivImageLoader;

    iget-object v5, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$imageUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$call:Lokhttp3/Call;

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;-><init>(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lokhttp3/Call;Lwh1;)V

    iput v3, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/drawable/PictureDrawable;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$callback:Lrk2;

    invoke-virtual {v0, p1}, Lrk2;->c(Landroid/graphics/drawable/PictureDrawable;)V

    sget-object v2, Lzfb;->a:Lzfb;

    :cond_3
    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->$callback:Lrk2;

    invoke-virtual {p0}, Lrk2;->a()V

    :cond_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
