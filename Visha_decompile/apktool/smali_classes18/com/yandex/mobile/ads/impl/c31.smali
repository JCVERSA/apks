.class public final Lcom/yandex/mobile/ads/impl/c31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/c31$a;,
        Lcom/yandex/mobile/ads/impl/c31$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ht1;

.field private final b:Lcom/yandex/mobile/ads/impl/ht0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ht1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ht1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/c31;-><init>(Lcom/yandex/mobile/ads/impl/ht1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ht1;)V
    .locals 1

    .line 3
    const-string v0, "safeMraidWebViewFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c31;->a:Lcom/yandex/mobile/ads/impl/ht1;

    .line 6
    new-instance p1, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c31;->b:Lcom/yandex/mobile/ads/impl/ht0;

    return-void
.end method

.method private static final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/c31;)V
    .locals 3

    .line 3
    const-string v0, "$context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$media"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/yandex/mobile/ads/impl/d31;->c:Lcom/yandex/mobile/ads/impl/d31$a;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/d31$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/d31;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wu0;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/d31;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/d31;->a(Lcom/yandex/mobile/ads/impl/wu0;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object p3, p3, Lcom/yandex/mobile/ads/impl/c31;->a:Lcom/yandex/mobile/ads/impl/ht1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p3, "context"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    new-instance p3, Lcom/yandex/mobile/ads/impl/w21;

    invoke-direct {p3, p0}, Lcom/yandex/mobile/ads/impl/w21;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 10
    new-instance p0, Lcom/yandex/mobile/ads/impl/c31$b;

    invoke-direct {p0, v0, p2, p1}, Lcom/yandex/mobile/ads/impl/c31$b;-><init>(Lcom/yandex/mobile/ads/impl/d31;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/wu0;)V

    .line 11
    invoke-virtual {p3, p0}, Lcom/yandex/mobile/ads/impl/w21;->setPreloadListener(Lcom/yandex/mobile/ads/impl/w21$a;)V

    .line 12
    invoke-virtual {v0, p3, p1}, Lcom/yandex/mobile/ads/impl/d31;->a(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/wu0;)V

    .line 13
    invoke-virtual {p3, v1}, Lcom/yandex/mobile/ads/impl/w21;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_1
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/c31$a;->a()V

    goto :goto_2

    .line 15
    :cond_2
    :goto_1
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/c31$a;->a()V

    :goto_2
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/c31;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/c31;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/c31;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c31;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lh8d;

    invoke-direct {v1, p1, p2, p3, p0}, Lh8d;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/c31;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
