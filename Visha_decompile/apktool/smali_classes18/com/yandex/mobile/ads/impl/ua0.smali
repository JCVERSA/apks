.class public final Lcom/yandex/mobile/ads/impl/ua0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fn0;


# static fields
.field private static final f:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/mg;

.field private final c:Lcom/yandex/mobile/ads/impl/mg2;

.field private final d:Lcom/yandex/mobile/ads/impl/yb;

.field private final e:Lcom/yandex/mobile/ads/impl/r20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_internal_instream_adtune_control_v2:I

    sput v0, Lcom/yandex/mobile/ads/impl/ua0;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yb;Lcom/yandex/mobile/ads/impl/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/mg;",
            "Lcom/yandex/mobile/ads/impl/mg2;",
            "Lcom/yandex/mobile/ads/impl/yb;",
            "Lcom/yandex/mobile/ads/impl/r20;",
            ")V"
        }
    .end annotation

    const-string v0, "assetClickConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adtuneRenderer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitAdtuneRenderer"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ua0;->a:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ua0;->b:Lcom/yandex/mobile/ads/impl/mg;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ua0;->c:Lcom/yandex/mobile/ads/impl/mg2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ua0;->d:Lcom/yandex/mobile/ads/impl/yb;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ua0;->e:Lcom/yandex/mobile/ads/impl/r20;

    return-void
.end method

.method private final a()Lcom/yandex/mobile/ads/impl/gk;
    .locals 5

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua0;->a:Lcom/yandex/mobile/ads/impl/ig;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ig;->a()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vr0;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/x;

    .line 14
    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/x;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adtune"

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/x;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "divkit_adtune"

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 15
    :cond_2
    :goto_0
    check-cast v1, Lcom/yandex/mobile/ads/impl/x;

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    instance-of p0, v1, Lcom/yandex/mobile/ads/impl/gk;

    if-eqz p0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/yandex/mobile/ads/impl/gk;

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;)V
    .locals 7

    .line 1
    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->h()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/impl/ua0;->f:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ua0;->a()Lcom/yandex/mobile/ads/impl/gk;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ua0;->a()Lcom/yandex/mobile/ads/impl/gk;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    new-instance v6, Lcom/yandex/mobile/ads/impl/re2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/yandex/mobile/ads/impl/re2;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/ta0;

    .line 9
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ua0;->d:Lcom/yandex/mobile/ads/impl/yb;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ua0;->e:Lcom/yandex/mobile/ads/impl/r20;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ua0;->c:Lcom/yandex/mobile/ads/impl/mg2;

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/ta0;-><init>(Lcom/yandex/mobile/ads/impl/gk;Lcom/yandex/mobile/ads/impl/yb;Lcom/yandex/mobile/ads/impl/r20;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/re2;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ua0;->b:Lcom/yandex/mobile/ads/impl/mg;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua0;->a:Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/mg;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V

    :cond_3
    :goto_1
    return-void
.end method
