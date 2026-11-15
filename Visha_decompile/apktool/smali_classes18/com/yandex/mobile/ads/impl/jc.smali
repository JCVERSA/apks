.class public final Lcom/yandex/mobile/ads/impl/jc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/lc;

.field private b:Lcom/yandex/mobile/ads/impl/lc;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/lc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jc;->a:Lcom/yandex/mobile/ads/impl/lc;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lc;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jc;->a:Lcom/yandex/mobile/ads/impl/lc;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/jc;->c:Z

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/lc;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jc;->b:Lcom/yandex/mobile/ads/impl/lc;

    return-void
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/jc;->c:Z

    return p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/lc;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jc;->b:Lcom/yandex/mobile/ads/impl/lc;

    return-object p0
.end method
