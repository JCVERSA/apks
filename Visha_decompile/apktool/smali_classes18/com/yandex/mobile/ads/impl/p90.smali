.class public final Lcom/yandex/mobile/ads/impl/p90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:Lcom/yandex/mobile/ads/impl/st;

.field private final c:Lcom/yandex/mobile/ads/impl/qe2;

.field private final d:Lcom/yandex/mobile/ads/impl/i90;

.field private e:Lcom/yandex/mobile/ads/impl/mj;

.field private final f:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/qe2;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/i90;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/i90;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/p90;-><init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/i90;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/i90;)V
    .locals 1

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adEventListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoEventController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contentControllerCreator"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p90;->a:Landroid/view/ViewGroup;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p90;->b:Lcom/yandex/mobile/ads/impl/st;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p90;->c:Lcom/yandex/mobile/ads/impl/qe2;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/p90;->d:Lcom/yandex/mobile/ads/impl/i90;

    .line 9
    new-instance p1, Lbqd;

    invoke-direct {p1}, Lbqd;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p90;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method private static final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic c()Z
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/p90;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/b02;Ljava/util/List;)V
    .locals 10

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdPrivate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadedDivKitDesigns"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p90;->d:Lcom/yandex/mobile/ads/impl/i90;

    .line 4
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/p90;->a:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/p90;->b:Lcom/yandex/mobile/ads/impl/st;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/p90;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/p90;->c:Lcom/yandex/mobile/ads/impl/qe2;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 5
    invoke-virtual/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/i90;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/b02;Ljava/util/List;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/st;Landroid/view/ViewTreeObserver$OnPreDrawListener;Lcom/yandex/mobile/ads/impl/qe2;)Lcom/yandex/mobile/ads/impl/mj;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p90;->e:Lcom/yandex/mobile/ads/impl/mj;

    .line 6
    new-instance p0, Lcom/yandex/mobile/ads/impl/o90;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/o90;-><init>()V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/mj;->a(Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/dj;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p90;->e:Lcom/yandex/mobile/ads/impl/mj;

    if-nez p0, :cond_0

    const-string p0, "contentController"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/mj;->a()V

    return-void
.end method
