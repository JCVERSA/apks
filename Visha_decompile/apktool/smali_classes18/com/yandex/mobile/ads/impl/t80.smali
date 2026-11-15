.class public final Lcom/yandex/mobile/ads/impl/t80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m80;

.field private final b:Lcom/yandex/mobile/ads/impl/v9;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/m80;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/v9;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/t80;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/m80;Lcom/yandex/mobile/ads/impl/v9;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/m80;Lcom/yandex/mobile/ads/impl/v9;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "falseClick"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adTracker"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/t80;->a:Lcom/yandex/mobile/ads/impl/m80;

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/t80;->b:Lcom/yandex/mobile/ads/impl/v9;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t80;->a:Lcom/yandex/mobile/ads/impl/m80;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m80;->c()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t80;->b:Lcom/yandex/mobile/ads/impl/v9;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t80;->a:Lcom/yandex/mobile/ads/impl/m80;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m80;->d()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/yandex/mobile/ads/impl/z62;->e:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V

    :cond_0
    return-void
.end method
