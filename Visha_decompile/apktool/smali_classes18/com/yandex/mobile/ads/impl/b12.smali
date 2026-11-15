.class public final Lcom/yandex/mobile/ads/impl/b12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xj0;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xj0;Ljava/lang/String;)V
    .locals 1

    const-string v0, "imageValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b12;->a:Lcom/yandex/mobile/ads/impl/xj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/b12;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/xj0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b12;->a:Lcom/yandex/mobile/ads/impl/xj0;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b12;->b:Ljava/lang/String;

    return-object p0
.end method
