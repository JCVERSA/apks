.class public interface abstract Lcom/yandex/mobile/ads/impl/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/bi;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/bi;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ci;->a:Lcom/yandex/mobile/ads/impl/ci;

    new-instance v0, Lcom/yandex/mobile/ads/impl/nq0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/q30;->a:Lcom/yandex/mobile/ads/impl/q30;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/nq0;-><init>(Lcom/yandex/mobile/ads/impl/q30;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/yandex/mobile/ads/impl/vs1;Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vp1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
