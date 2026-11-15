.class public final Lcom/yandex/mobile/ads/impl/i9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/zs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/rb0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/gz1$a;->c:Lcom/yandex/mobile/ads/impl/gz1$a;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/rb0;-><init>(IILcom/yandex/mobile/ads/impl/gz1$a;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/zs;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/zs;-><init>(Lcom/yandex/mobile/ads/impl/gz1;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/i9;->a:Lcom/yandex/mobile/ads/impl/zs;

    return-void
.end method
