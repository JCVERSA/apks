.class public final Lcom/yandex/mobile/ads/impl/w90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w90;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w90;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w90;->c:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/z90;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ka0;)Lcom/yandex/mobile/ads/impl/v90;
    .locals 12

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/w90;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/w90;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/w90;->c:Lcom/yandex/mobile/ads/impl/o3;

    new-instance p0, Lcom/yandex/mobile/ads/impl/v90;

    new-instance v8, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-direct {v8, v4}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/t71;

    invoke-direct {v9, v4}, Lcom/yandex/mobile/ads/impl/t71;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/z91;

    new-instance v0, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    invoke-direct {v10, v2, v3, v4, v0}, Lcom/yandex/mobile/ads/impl/z91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/sg0;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/sg0;-><init>()V

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/v90;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z90;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ka0;Lcom/yandex/mobile/ads/impl/xt1;Lcom/yandex/mobile/ads/impl/t71;Lcom/yandex/mobile/ads/impl/z91;Lcom/yandex/mobile/ads/impl/sg0;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/v7;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/rb0;

    sget-object p2, Lcom/yandex/mobile/ads/impl/gz1$a;->d:Lcom/yandex/mobile/ads/impl/gz1$a;

    const/4 p3, -0x1

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0, p2}, Lcom/yandex/mobile/ads/impl/rb0;-><init>(IILcom/yandex/mobile/ads/impl/gz1$a;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/gz1;)V

    return-object p0
.end method
