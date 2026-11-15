.class public final Lcom/yandex/mobile/ads/impl/eo1;
.super Lcom/yandex/mobile/ads/impl/zq1;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/BufferedSource;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/zq1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eo1;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/eo1;->b:J

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/eo1;->c:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/eo1;->b:J

    return-wide v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/cx0;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo1;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget v0, Lcom/yandex/mobile/ads/impl/cx0;->d:I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/cx0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/cx0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo1;->c:Lokio/BufferedSource;

    return-object p0
.end method
