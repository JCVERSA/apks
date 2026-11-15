.class interface abstract Lcom/yandex/mobile/ads/impl/hz$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/iz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/iz$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/iz$a;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/iz;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/iz;-><init>(Lcom/yandex/mobile/ads/impl/iz$a;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/hz$d;->a:Lcom/yandex/mobile/ads/impl/iz;

    return-void
.end method
