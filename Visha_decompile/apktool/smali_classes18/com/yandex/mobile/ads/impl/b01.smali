.class public final Lcom/yandex/mobile/ads/impl/b01;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a01;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/a01;)V
    .locals 1

    const-string v0, "networksDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b01;->a:Lcom/yandex/mobile/ads/impl/a01;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/mz0;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/mz0$a;->a()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b01;->a:Lcom/yandex/mobile/ads/impl/a01;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/a01;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
