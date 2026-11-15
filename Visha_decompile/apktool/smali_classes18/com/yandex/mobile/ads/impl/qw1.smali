.class public final Lcom/yandex/mobile/ads/impl/qw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mt0;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lcom/yandex/mobile/ads/impl/u80;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/it0;Lcom/yandex/mobile/ads/impl/mt0;Lcom/yandex/mobile/ads/impl/en2;)V
    .locals 1

    const-string v0, "mainThreadHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestAnalyzer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qw1;->a:Lcom/yandex/mobile/ads/impl/mt0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qw1;->b:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/u80;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/u80;-><init>(Lcom/yandex/mobile/ads/impl/it0;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qw1;->c:Lcom/yandex/mobile/ads/impl/u80;

    return-void
.end method

.method private static final a()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/qw1;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/qw1;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qw1;->a()V

    return-void
.end method

.method private final b(Landroid/content/Context;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qw1;->a:Lcom/yandex/mobile/ads/impl/mt0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mt0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qw1;->b:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v0, Lhrd;

    invoke-direct {v0}, Lhrd;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/q11;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/dt;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qw1;->c:Lcom/yandex/mobile/ads/impl/u80;

    new-instance v1, Lcom/yandex/mobile/ads/impl/qw1$a;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/qw1$a;-><init>(Lcom/yandex/mobile/ads/impl/qw1;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/u80;->a(Lc74;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/qw1;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
