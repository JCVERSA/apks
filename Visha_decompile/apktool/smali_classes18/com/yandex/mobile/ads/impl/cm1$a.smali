.class final Lcom/yandex/mobile/ads/impl/cm1$a;
.super Lcom/yandex/mobile/ads/impl/at1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/cm1;->a(Lcom/yandex/mobile/ads/impl/b40$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/at1<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic h:Lcom/yandex/mobile/ads/impl/cm1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cm1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cm1$a;->h:Lcom/yandex/mobile/ads/impl/cm1;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/at1;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1$a;->h:Lcom/yandex/mobile/ads/impl/cm1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/cm1;->b(Lcom/yandex/mobile/ads/impl/cm1;)Lcom/yandex/mobile/ads/impl/hn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hn;->b()V

    return-void
.end method

.method public final c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1$a;->h:Lcom/yandex/mobile/ads/impl/cm1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/cm1;->b(Lcom/yandex/mobile/ads/impl/cm1;)Lcom/yandex/mobile/ads/impl/hn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hn;->a()V

    return-void
.end method
