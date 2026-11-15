.class public final Lcom/yandex/mobile/ads/impl/ax0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zw0;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zw0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSourcePathProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ax0;->a:Lcom/yandex/mobile/ads/impl/zw0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ax0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/rc2;)Lcom/yandex/mobile/ads/impl/gm1;
    .locals 4

    const-string v0, "videoAdPlaybackInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/cv1;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/dt1;->a()Lcom/yandex/mobile/ads/impl/ft1;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/cv1;-><init>(Lcom/yandex/mobile/ads/impl/et1;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ax0;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/cv1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/dv1;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/oz$a;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ax0;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/yandex/mobile/ads/impl/oz$a;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tv$a;)V

    sget v1, Lcom/yandex/mobile/ads/impl/d70;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/d70$a;->a()Lcom/yandex/mobile/ads/impl/d70;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ax0;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/d70;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sm;

    move-result-object v1

    new-instance v3, Lcom/yandex/mobile/ads/impl/wm$a;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/wm$a;-><init>()V

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/wm$a;->a(Lcom/yandex/mobile/ads/impl/sm;)Lcom/yandex/mobile/ads/impl/wm$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/wm$a;->a(Lcom/yandex/mobile/ads/impl/oz$a;)Lcom/yandex/mobile/ads/impl/wm$a;

    move-result-object v1

    const-string v2, "setUpstreamDataSourceFactory(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/gm1$a;

    new-instance v3, Lcom/yandex/mobile/ads/impl/xz;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/xz;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/gm1$a;-><init>(Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/d80;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax0;->a:Lcom/yandex/mobile/ads/impl/zw0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/rc2;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/jw0;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jw0;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/yandex/mobile/ads/impl/gm1$a;->a(Lcom/yandex/mobile/ads/impl/jw0;)Lcom/yandex/mobile/ads/impl/gm1;

    move-result-object p0

    const-string p1, "createMediaSource(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
