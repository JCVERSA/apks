.class public final Lcom/yandex/mobile/ads/impl/nc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lc;

.field private final b:Lcom/yandex/mobile/ads/impl/lc;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lc;Lcom/yandex/mobile/ads/impl/lc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nc;->a:Lcom/yandex/mobile/ads/impl/lc;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nc;->b:Lcom/yandex/mobile/ads/impl/lc;

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/nc;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/lc;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nc;->a:Lcom/yandex/mobile/ads/impl/lc;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/nc;->c:Z

    return p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/lc;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nc;->b:Lcom/yandex/mobile/ads/impl/lc;

    return-object p0
.end method
