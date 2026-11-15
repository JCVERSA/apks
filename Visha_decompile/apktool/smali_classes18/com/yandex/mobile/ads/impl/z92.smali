.class public final Lcom/yandex/mobile/ads/impl/z92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/u92;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/u92;Ljava/lang/String;)V
    .locals 1

    const-string v0, "vast"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z92;->a:Lcom/yandex/mobile/ads/impl/u92;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/z92;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z92;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/u92;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z92;->a:Lcom/yandex/mobile/ads/impl/u92;

    return-object p0
.end method
