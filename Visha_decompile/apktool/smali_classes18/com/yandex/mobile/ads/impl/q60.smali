.class public final Lcom/yandex/mobile/ads/impl/q60;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/q60;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/q60;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q60;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/i70;
    .locals 11

    new-instance v0, Lcom/yandex/mobile/ads/impl/n60$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q60;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/n60$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/n60$b;->a()Lcom/yandex/mobile/ads/impl/n60;

    move-result-object v3

    new-instance v4, Lcom/yandex/mobile/ads/impl/ax0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q60;->c:Landroid/content/Context;

    new-instance v1, Lcom/yandex/mobile/ads/impl/zw0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/zw0;-><init>()V

    invoke-direct {v4, v0, v1}, Lcom/yandex/mobile/ads/impl/ax0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zw0;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/mf2;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/q60;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/q60;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/q60;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object p0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v1

    invoke-static {v6, p0, v1}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v9

    new-instance v10, Lcom/yandex/mobile/ads/impl/uc2;

    invoke-direct {v10, v7, v8}, Lcom/yandex/mobile/ads/impl/uc2;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/mf2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/uc2;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/ra1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/ra1;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/wf2;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/wf2;-><init>()V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/i70;-><init>(Lcom/yandex/mobile/ads/impl/n60;Lcom/yandex/mobile/ads/impl/ax0;Lcom/yandex/mobile/ads/impl/mf2;Lcom/yandex/mobile/ads/impl/ra1;Lcom/yandex/mobile/ads/impl/wf2;)V

    return-object p0
.end method
