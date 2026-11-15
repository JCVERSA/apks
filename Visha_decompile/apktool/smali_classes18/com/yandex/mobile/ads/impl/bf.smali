.class public final Lcom/yandex/mobile/ads/impl/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/cf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/cf;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/cf;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/bf;->a:Lcom/yandex/mobile/ads/impl/cf;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 5
    const-string v0, "Connection timeout"

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal state wasn\'t completely configured. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "Incorrect integration"

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/mf;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "reason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bf;->a:Lcom/yandex/mobile/ads/impl/cf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/cf;->a(Lcom/yandex/mobile/ads/impl/mf;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
