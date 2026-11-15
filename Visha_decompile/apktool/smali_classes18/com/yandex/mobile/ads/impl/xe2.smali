.class public final Lcom/yandex/mobile/ads/impl/xe2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yf2;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yf2;ZZLjava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xe2;->a:Lcom/yandex/mobile/ads/impl/yf2;

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/xe2;->b:Z

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/xe2;->c:Z

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/xe2;->d:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xe2;->d:Ljava/lang/Double;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/xe2;->c:Z

    return p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/yf2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xe2;->a:Lcom/yandex/mobile/ads/impl/yf2;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/xe2;->b:Z

    return p0
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xe2;->d:Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ly45;->a(Ljava/lang/Double;D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xe2;->d:Ljava/lang/Double;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
