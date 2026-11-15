.class public final Lcom/yandex/mobile/ads/impl/j20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jz1;

.field private final b:Lcom/yandex/mobile/ads/impl/ht0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/id1;->c:Lcom/yandex/mobile/ads/impl/id1$a;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/id1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/id1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/id1;->b()Lcom/yandex/mobile/ads/impl/jz1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j20;->a:Lcom/yandex/mobile/ads/impl/jz1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j20;->b:Lcom/yandex/mobile/ads/impl/ht0;

    return-void
.end method

.method private final a(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 3

    .line 8
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j20;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v2, Lwjd;

    invoke-direct {v2, v0, p0, p1, p2}, Lwjd;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Lrk2;)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    .line 10
    new-instance p1, Lxjd;

    invoke-direct {p1, p0, v0}, Lxjd;-><init>(Lcom/yandex/mobile/ads/impl/j20;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-object p1
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/j20;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 16
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageContainer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j20;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v0, Lyjd;

    invoke-direct {v0, p1}, Lyjd;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 6
    const-string v0, "$imageContainer"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/yandex/mobile/ads/impl/oj0$c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oj0$c;->a()V

    :cond_0
    return-void
.end method

.method private static final a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    const-string v0, "$imageContainer"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageUrl"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageView"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/j20;->a:Lcom/yandex/mobile/ads/impl/jz1;

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/j20$a;

    invoke-direct {v0, p3}, Lcom/yandex/mobile/ads/impl/j20$a;-><init>(Landroid/widget/ImageView;)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, p3, p3}, Lcom/yandex/mobile/ads/impl/oj0;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/oj0$d;II)Lcom/yandex/mobile/ads/impl/oj0$c;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static final a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Lrk2;)V
    .locals 1

    .line 11
    const-string v0, "$imageContainer"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageUrl"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/j20;->a:Lcom/yandex/mobile/ads/impl/jz1;

    .line 13
    new-instance v0, Lcom/yandex/mobile/ads/impl/j20$b;

    invoke-direct {v0, p2, p3}, Lcom/yandex/mobile/ads/impl/j20$b;-><init>(Ljava/lang/String;Lrk2;)V

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p1, p2, v0, p3, p3}, Lcom/yandex/mobile/ads/impl/oj0;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/oj0$d;II)Lcom/yandex/mobile/ads/impl/oj0$c;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static final b(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 2
    const-string v0, "$imageContainer"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/yandex/mobile/ads/impl/oj0$c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oj0$c;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Lrk2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/j20;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Lrk2;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/j20;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/j20;->a(Lcom/yandex/mobile/ads/impl/j20;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/j20;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j20;->a(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j20;->b(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic hasSvgSupport()Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0}, Lwk2;->hasSvgSupport()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final loadImage(Ljava/lang/String;Landroid/widget/ImageView;)Ljn5;
    .locals 3

    .line 2
    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j20;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v2, Lzjd;

    invoke-direct {v2, v0, p0, p1, p2}, Lzjd;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    .line 5
    new-instance p0, Lakd;

    invoke-direct {p0, v0}, Lakd;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-object p0
.end method

.method public final loadImage(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 1

    .line 6
    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/j20;->a(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadImage(Ljava/lang/String;Lrk2;I)Ljn5;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrk2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lwk2;->loadImage(Ljava/lang/String;Lrk2;I)Ljn5;

    move-result-object p0

    return-object p0
.end method

.method public final loadImageBytes(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 1

    .line 2
    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/j20;->a(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadImageBytes(Ljava/lang/String;Lrk2;I)Ljn5;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrk2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lwk2;->loadImageBytes(Ljava/lang/String;Lrk2;I)Ljn5;

    move-result-object p0

    return-object p0
.end method
