.class public final Lcom/yandex/mobile/ads/impl/xn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/rc2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ht;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ht;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "adBreakPosition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xn0;->a:Lcom/yandex/mobile/ads/impl/ht;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xn0;->b:Ljava/lang/String;

    iput p3, p0, Lcom/yandex/mobile/ads/impl/xn0;->c:I

    iput p4, p0, Lcom/yandex/mobile/ads/impl/xn0;->d:I

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/xn0;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/xn0;->f:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/xn0;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ht;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xn0;->a:Lcom/yandex/mobile/ads/impl/ht;

    return-object p0
.end method

.method public final getAdHeight()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/xn0;->d:I

    return p0
.end method

.method public final getAdWidth()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/xn0;->c:I

    return p0
.end method

.method public final getApiFramework()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xn0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getBitrate()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xn0;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xn0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xn0;->b:Ljava/lang/String;

    return-object p0
.end method
