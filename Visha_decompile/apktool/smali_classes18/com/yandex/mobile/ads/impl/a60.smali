.class public final Lcom/yandex/mobile/ads/impl/a60;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/a60;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/a60;->b:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/y50;)[B
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a60;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a60;->b:Ljava/io/DataOutputStream;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/y50;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/y50;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/a60;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a60;->b:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lcom/yandex/mobile/ads/impl/y50;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a60;->b:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lcom/yandex/mobile/ads/impl/y50;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a60;->b:Ljava/io/DataOutputStream;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/y50;->f:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/a60;->b:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a60;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
