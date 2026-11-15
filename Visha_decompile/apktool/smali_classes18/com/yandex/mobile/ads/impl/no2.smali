.class public final Lcom/yandex/mobile/ads/impl/no2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zn2;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/impl/uc0;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/uc0;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/zn2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/zn2;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/no2;->a:Lcom/yandex/mobile/ads/impl/zn2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/no2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/no2;->c:Lcom/yandex/mobile/ads/impl/uc0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/no2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/zn2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/no2;->a:Lcom/yandex/mobile/ads/impl/zn2;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/no2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/uc0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/no2;->c:Lcom/yandex/mobile/ads/impl/uc0;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/no2;->d:Ljava/lang/String;

    return-object p0
.end method
