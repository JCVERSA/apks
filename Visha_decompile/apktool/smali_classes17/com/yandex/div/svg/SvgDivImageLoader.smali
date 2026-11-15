.class public final Lcom/yandex/div/svg/SvgDivImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk2;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:Lnk1;

.field public final c:Lf7a;

.field public final d:Le7a;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->a:Lokhttp3/OkHttpClient;

    invoke-static {}, Lkotlinx/coroutines/d;->b()Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->b:Lnk1;

    new-instance v0, Lf7a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lf7a;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->c:Lf7a;

    new-instance v0, Le7a;

    invoke-direct {v0}, Le7a;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->d:Le7a;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lrk2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/svg/SvgDivImageLoader;->i(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lrk2;)V

    return-void
.end method

.method public static synthetic b(Lokhttp3/Call;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/svg/SvgDivImageLoader;->h(Lokhttp3/Call;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/yandex/div/svg/SvgDivImageLoader;->g()V

    return-void
.end method

.method public static final synthetic d(Lcom/yandex/div/svg/SvgDivImageLoader;)Le7a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->d:Le7a;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/svg/SvgDivImageLoader;)Lf7a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->c:Lf7a;

    return-object p0
.end method

.method public static final g()V
    .locals 0

    return-void
.end method

.method public static final h(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "$call"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public static final i(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lrk2;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/svg/SvgDivImageLoader;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;)Lokhttp3/Call;
    .locals 1

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    return-object p0
.end method

.method public hasSvgSupport()Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 9

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/svg/SvgDivImageLoader;->f(Ljava/lang/String;)Lokhttp3/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->d:Le7a;

    invoke-virtual {v1, p1}, Le7a;->a(Ljava/lang/String;)Landroid/graphics/drawable/PictureDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lrk2;->c(Landroid/graphics/drawable/PictureDrawable;)V

    new-instance p0, Lh7a;

    invoke-direct {p0}, Lh7a;-><init>()V

    return-object p0

    :cond_0
    iget-object v7, p0, Lcom/yandex/div/svg/SvgDivImageLoader;->b:Lnk1;

    new-instance v8, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/svg/SvgDivImageLoader$loadImage$2;-><init>(Lrk2;Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lokhttp3/Call;Lwh1;)V

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    new-instance p0, Li7a;

    invoke-direct {p0, v0}, Li7a;-><init>(Lokhttp3/Call;)V

    return-object p0
.end method

.method public loadImageBytes(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj7a;

    invoke-direct {v0, p0, p1, p2}, Lj7a;-><init>(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lrk2;)V

    return-object v0
.end method
