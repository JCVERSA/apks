.class public final Lcom/yandex/mobile/ads/impl/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/gn$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vp1;

.field private final b:Lcom/yandex/mobile/ads/impl/vq1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vp1;Lcom/yandex/mobile/ads/impl/vq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gn;->a:Lcom/yandex/mobile/ads/impl/vp1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gn;->b:Lcom/yandex/mobile/ads/impl/vq1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/vq1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gn;->b:Lcom/yandex/mobile/ads/impl/vq1;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/vp1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gn;->a:Lcom/yandex/mobile/ads/impl/vp1;

    return-object p0
.end method
