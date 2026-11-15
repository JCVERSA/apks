.class final Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Landroid/graphics/drawable/PictureDrawable;",
        "<anonymous>",
        "(Lnk1;)Landroid/graphics/drawable/PictureDrawable;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.yandex.div.svg.SvgDivImageLoader$loadImage$2$1"
    f = "SvgDivImageLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $call:Lokhttp3/Call;

.field final synthetic $imageUrl:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/yandex/div/svg/SvgDivImageLoader;


# direct methods
.method public constructor <init>(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lokhttp3/Call;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/svg/SvgDivImageLoader;",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            "Lwh1<",
            "-",
            "Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->this$0:Lcom/yandex/div/svg/SvgDivImageLoader;

    iput-object p2, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->$call:Lokhttp3/Call;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 3
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

    new-instance v0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;

    iget-object v1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->this$0:Lcom/yandex/div/svg/SvgDivImageLoader;

    iget-object v2, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->$imageUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->$call:Lokhttp3/Call;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;-><init>(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lokhttp3/Call;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Landroid/graphics/drawable/PictureDrawable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object p1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->$call:Lokhttp3/Call;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, [B

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->this$0:Lcom/yandex/div/svg/SvgDivImageLoader;

    invoke-static {v1}, Lcom/yandex/div/svg/SvgDivImageLoader;->e(Lcom/yandex/div/svg/SvgDivImageLoader;)Lf7a;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lf7a;->a(Ljava/io/InputStream;)Landroid/graphics/drawable/PictureDrawable;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->this$0:Lcom/yandex/div/svg/SvgDivImageLoader;

    invoke-static {v0}, Lcom/yandex/div/svg/SvgDivImageLoader;->d(Lcom/yandex/div/svg/SvgDivImageLoader;)Le7a;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2$1;->$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Le7a;->b(Ljava/lang/String;Landroid/graphics/drawable/PictureDrawable;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
