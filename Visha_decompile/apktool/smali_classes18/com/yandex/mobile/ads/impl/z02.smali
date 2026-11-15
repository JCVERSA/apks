.class public final Lcom/yandex/mobile/ads/impl/z02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vr0;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/impl/b12;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vr0;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/b12;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z02;->a:Lcom/yandex/mobile/ads/impl/vr0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/z02;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/z02;->c:Lcom/yandex/mobile/ads/impl/b12;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/vr0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z02;->a:Lcom/yandex/mobile/ads/impl/vr0;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z02;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/b12;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z02;->c:Lcom/yandex/mobile/ads/impl/b12;

    return-object p0
.end method
