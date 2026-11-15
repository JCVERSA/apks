.class public final Lcom/yandex/mobile/ads/impl/lh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/u82;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/lh1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/z62;

.field private final b:Lcom/yandex/mobile/ads/impl/u62;

.field private final c:Lcom/yandex/mobile/ads/impl/gq1;

.field private final d:Lcom/yandex/mobile/ads/impl/s82;

.field private final e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z62;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/u62;

    invoke-direct {v4, p1, p2}, Lcom/yandex/mobile/ads/impl/u62;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 2
    sget v0, Lcom/yandex/mobile/ads/impl/gq1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq1$a;->a()Lcom/yandex/mobile/ads/impl/gq1;

    move-result-object v5

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/s82;

    invoke-direct {v6, p1}, Lcom/yandex/mobile/ads/impl/s82;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/lh1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z62;Lcom/yandex/mobile/ads/impl/u62;Lcom/yandex/mobile/ads/impl/gq1;Lcom/yandex/mobile/ads/impl/s82;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z62;Lcom/yandex/mobile/ads/impl/u62;Lcom/yandex/mobile/ads/impl/gq1;Lcom/yandex/mobile/ads/impl/s82;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "trackingUrlType"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "trackingReporter"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "requestManager"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "urlModifier"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lh1;->a:Lcom/yandex/mobile/ads/impl/z62;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/lh1;->b:Lcom/yandex/mobile/ads/impl/u62;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/lh1;->c:Lcom/yandex/mobile/ads/impl/gq1;

    .line 10
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/lh1;->d:Lcom/yandex/mobile/ads/impl/s82;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lh1;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh1;->d:Lcom/yandex/mobile/ads/impl/s82;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/s82;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lh1;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/kh1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lh1;->e:Landroid/content/Context;

    new-instance v4, Lcom/yandex/mobile/ads/impl/lh1$a;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lh1;->b:Lcom/yandex/mobile/ads/impl/u62;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/lh1;->a:Lcom/yandex/mobile/ads/impl/z62;

    invoke-direct {v4, p1, v1, v5, v6}, Lcom/yandex/mobile/ads/impl/lh1$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/u62;Lcom/yandex/mobile/ads/impl/z62;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/yandex/mobile/ads/impl/kh1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/lh1;->c:Lcom/yandex/mobile/ads/impl/gq1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lh1;->e:Landroid/content/Context;

    monitor-enter p1

    :try_start_0
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hd1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq1;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
