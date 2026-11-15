.class public final Lcom/yandex/mobile/ads/impl/rf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lokio/BufferedSource;

.field private b:J


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rf0;->a:Lokio/BufferedSource;

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/rf0;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/qf0;
    .locals 8

    new-instance v0, Lcom/yandex/mobile/ads/impl/qf0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/qf0$a;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rf0;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qf0$a;->a()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "line"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x3a

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lj1a;->l0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "substring(...)"

    if-eq v1, v2, :cond_1

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    const-string v3, ""

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v7}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rf0;->a:Lokio/BufferedSource;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/rf0;->b:J

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/rf0;->b:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/yandex/mobile/ads/impl/rf0;->b:J

    return-object v0
.end method
