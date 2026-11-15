.class public final Lcom/yandex/mobile/ads/impl/pe1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/pe1$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/re1;

.field private final c:Lcom/yandex/mobile/ads/impl/gq1;

.field private final d:Lcom/yandex/mobile/ads/impl/pw1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pe1;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/se1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/re1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pe1;->b:Lcom/yandex/mobile/ads/impl/re1;

    sget p1, Lcom/yandex/mobile/ads/impl/gq1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq1$a;->a()Lcom/yandex/mobile/ads/impl/gq1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pe1;->c:Lcom/yandex/mobile/ads/impl/gq1;

    sget p1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pe1;->d:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/pe1;)Lcom/yandex/mobile/ads/impl/re1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pe1;->b:Lcom/yandex/mobile/ads/impl/re1;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pe1;->c:Lcom/yandex/mobile/ads/impl/gq1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pe1;->a:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "om_sdk_js_request_tag"

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/gq1;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/cb2;)V
    .locals 3

    .line 3
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pe1;->d:Lcom/yandex/mobile/ads/impl/pw1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pe1;->a:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pe1;->b:Lcom/yandex/mobile/ads/impl/re1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/re1;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/yandex/mobile/ads/impl/pe1$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/yandex/mobile/ads/impl/pe1$a;-><init>(Lcom/yandex/mobile/ads/impl/pe1;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cb2;)V

    .line 8
    new-instance p1, Lcom/yandex/mobile/ads/impl/e32;

    invoke-direct {p1, v0, v1, v1}, Lcom/yandex/mobile/ads/impl/e32;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xq1$b;Lcom/yandex/mobile/ads/impl/xq1$a;)V

    .line 9
    const-string v0, "om_sdk_js_request_tag"

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/up1;->b(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pe1;->c:Lcom/yandex/mobile/ads/impl/gq1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pe1;->a:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 11
    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "request"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hd1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq1;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    throw p0

    .line 15
    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/qe1$b;

    .line 16
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/qe1$b;->a:Lcom/yandex/mobile/ads/impl/qe1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qe1;->a(Lcom/yandex/mobile/ads/impl/qe1;)V

    :goto_1
    return-void
.end method
