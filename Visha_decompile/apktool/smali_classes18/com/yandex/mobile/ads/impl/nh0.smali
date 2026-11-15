.class public final Lcom/yandex/mobile/ads/impl/nh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/nh0$a;,
        Lcom/yandex/mobile/ads/impl/nh0$b;,
        Lcom/yandex/mobile/ads/impl/nh0$c;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/logging/Logger;

.field public static final synthetic f:I


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Z

.field private final c:Lcom/yandex/mobile/ads/impl/nh0$b;

.field private final d:Lcom/yandex/mobile/ads/impl/lg0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/yandex/mobile/ads/impl/gh0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/nh0;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/nh0;->b:Z

    new-instance p2, Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/nh0$b;-><init>(Lokio/BufferedSource;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    new-instance p1, Lcom/yandex/mobile/ads/impl/lg0$a;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/lg0$a;-><init>(Lcom/yandex/mobile/ads/impl/nh0$b;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nh0;->d:Lcom/yandex/mobile/ads/impl/lg0$a;

    return-void
.end method

.method public static final synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 73
    sget-object v0, Lcom/yandex/mobile/ads/impl/nh0;->e:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/nh0$c;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-lt p2, v0, :cond_3

    if-nez p3, :cond_2

    .line 57
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    .line 58
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    sub-int/2addr p2, v0

    .line 59
    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->c:Lcom/yandex/mobile/ads/impl/t50$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/t50$a;->a(I)Lcom/yandex/mobile/ads/impl/t50;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    .line 61
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {p0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    .line 62
    :cond_0
    invoke-interface {p1, p3, v0, v1}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(ILcom/yandex/mobile/ads/impl/t50;Lokio/ByteString;)V

    return-void

    .line 63
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TYPE_GOAWAY unexpected error code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_GOAWAY length < 8: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/nh0$c;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    if-nez p4, :cond_1

    .line 68
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    .line 69
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 70
    :goto_0
    invoke-interface {p1, p2, p0, p4}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(IIZ)V

    return-void

    .line 71
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_PING streamId != 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_PING length != 8: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Lcom/yandex/mobile/ads/impl/nh0$c;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 1
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    sget-object p0, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_PRIORITY streamId == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_PRIORITY length: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 5"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Lcom/yandex/mobile/ads/impl/nh0$c;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_e

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_d

    .line 9
    new-instance p3, Lcom/yandex/mobile/ads/impl/zx1;

    invoke-direct {p3}, Lcom/yandex/mobile/ads/impl/zx1;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-static {v0, p2}, Lwn8;->q(II)Lu15;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p2, v0}, Lwn8;->p(Ls15;I)Ls15;

    move-result-object p2

    invoke-virtual {p2}, Ls15;->b()I

    move-result v0

    invoke-virtual {p2}, Ls15;->c()I

    move-result v1

    invoke-virtual {p2}, Ls15;->f()I

    move-result p2

    if-lez p2, :cond_2

    if-le v0, v1, :cond_3

    :cond_2
    if-gez p2, :cond_c

    if-gt v1, v0, :cond_c

    .line 11
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    move-result v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/g92;->a(S)I

    move-result v2

    .line 12
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_9

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq v2, v4, :cond_8

    if-eq v2, v5, :cond_6

    const/4 v4, 0x5

    if-eq v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_5

    const v4, 0xffffff

    if-gt v3, v4, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-ltz v3, :cond_7

    const/4 v2, 0x7

    goto :goto_1

    .line 14
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    move v2, v5

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_b

    if-ne v3, p4, :cond_a

    goto :goto_1

    .line 15
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_b
    :goto_1
    invoke-virtual {p3, v2, v3}, Lcom/yandex/mobile/ads/impl/zx1;->a(II)V

    if-eq v0, v1, :cond_c

    add-int/2addr v0, p2

    goto :goto_0

    .line 17
    :cond_c
    invoke-interface {p1, p3}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(Lcom/yandex/mobile/ads/impl/zx1;)V

    return-void

    .line 18
    :cond_d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_SETTINGS length % 6 != 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_SETTINGS streamId != 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c(Lcom/yandex/mobile/ads/impl/nh0$c;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    sget-object p2, Lcom/yandex/mobile/ads/impl/t50;->c:Lcom/yandex/mobile/ads/impl/t50$a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/t50$a;->a(I)Lcom/yandex/mobile/ads/impl/t50;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p3, p2}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(ILcom/yandex/mobile/ads/impl/t50;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_RST_STREAM unexpected error code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_RST_STREAM length: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final d(Lcom/yandex/mobile/ads/impl/nh0$c;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-interface {p1, p3, v0, v1}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(IJ)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "windowSizeIncrement was 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/nh0$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const-string v0, "handler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/nh0;->a(ZLcom/yandex/mobile/ads/impl/nh0$c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Required SETTINGS preface not received"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    sget-object p1, Lcom/yandex/mobile/ads/impl/gh0;->b:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    .line 54
    sget-object v0, Lcom/yandex/mobile/ads/impl/nh0;->e:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< CONNECTION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    :cond_2
    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 56
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a connection header but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ZLcom/yandex/mobile/ads/impl/nh0$c;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "handler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/g92;->a(Lokio/BufferedSource;)I

    move-result v1

    const/16 v2, 0x4000

    if-gt v1, v2, :cond_d

    .line 4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/g92;->a(B)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/g92;->a(B)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 7
    sget-object v6, Lcom/yandex/mobile/ads/impl/nh0;->e:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    sget-object v7, Lcom/yandex/mobile/ads/impl/gh0;->a:Lcom/yandex/mobile/ads/impl/gh0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v4, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/gh0;->a(ZIIII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x4

    if-eqz p1, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/io/IOException;

    sget-object p1, Lcom/yandex/mobile/ads/impl/gh0;->a:Lcom/yandex/mobile/ads/impl/gh0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/gh0;->a(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected a SETTINGS frame but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    int-to-long p1, v1

    invoke-interface {p0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_3

    .line 10
    :pswitch_0
    invoke-direct {p0, p2, v1, v4}, Lcom/yandex/mobile/ads/impl/nh0;->d(Lcom/yandex/mobile/ads/impl/nh0$c;II)V

    goto/16 :goto_3

    .line 11
    :pswitch_1
    invoke-direct {p0, p2, v1, v4}, Lcom/yandex/mobile/ads/impl/nh0;->a(Lcom/yandex/mobile/ads/impl/nh0$c;II)V

    goto/16 :goto_3

    .line 12
    :pswitch_2
    invoke-direct {p0, p2, v1, v3, v4}, Lcom/yandex/mobile/ads/impl/nh0;->a(Lcom/yandex/mobile/ads/impl/nh0$c;III)V

    goto/16 :goto_3

    :pswitch_3
    if-eqz v4, :cond_4

    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    move-result p1

    and-int/lit16 v0, p1, 0xff

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    and-int/2addr p1, v5

    sub-int/2addr v1, v6

    .line 15
    invoke-static {v1, v3, v0}, Lcom/yandex/mobile/ads/impl/nh0$a;->a(III)I

    move-result v1

    .line 16
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/nh0$b;->b(I)V

    .line 17
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nh0$b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/nh0$b;->c(I)V

    .line 18
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/nh0$b;->d(I)V

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/nh0$b;->a(I)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/impl/nh0$b;->e(I)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->d:Lcom/yandex/mobile/ads/impl/lg0$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lg0$a;->c()V

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->d:Lcom/yandex/mobile/ads/impl/lg0$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->a()Ljava/util/List;

    move-result-object p0

    .line 23
    invoke-interface {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(ILjava/util/List;)V

    goto/16 :goto_3

    .line 24
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :pswitch_4
    invoke-direct {p0, p2, v1, v3, v4}, Lcom/yandex/mobile/ads/impl/nh0;->b(Lcom/yandex/mobile/ads/impl/nh0$c;III)V

    goto/16 :goto_3

    .line 26
    :pswitch_5
    invoke-direct {p0, p2, v1, v4}, Lcom/yandex/mobile/ads/impl/nh0;->c(Lcom/yandex/mobile/ads/impl/nh0$c;II)V

    goto/16 :goto_3

    .line 27
    :pswitch_6
    invoke-direct {p0, p2, v1, v4}, Lcom/yandex/mobile/ads/impl/nh0;->b(Lcom/yandex/mobile/ads/impl/nh0$c;II)V

    goto/16 :goto_3

    :pswitch_7
    if-eqz v4, :cond_8

    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_5

    move p1, v8

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    and-int/lit8 v2, v3, 0x8

    if-eqz v2, :cond_6

    .line 28
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :cond_6
    and-int/lit8 v2, v3, 0x20

    if-eqz v2, :cond_7

    .line 29
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    .line 30
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, -0x5

    .line 32
    :cond_7
    invoke-static {v1, v3, v0}, Lcom/yandex/mobile/ads/impl/nh0$a;->a(III)I

    move-result v1

    .line 33
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/nh0$b;->b(I)V

    .line 34
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nh0$b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/nh0$b;->c(I)V

    .line 35
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/nh0$b;->d(I)V

    .line 36
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/nh0$b;->a(I)V

    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->c:Lcom/yandex/mobile/ads/impl/nh0$b;

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/impl/nh0$b;->e(I)V

    .line 38
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->d:Lcom/yandex/mobile/ads/impl/lg0$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lg0$a;->c()V

    .line 39
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->d:Lcom/yandex/mobile/ads/impl/lg0$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->a()Ljava/util/List;

    move-result-object p0

    .line 40
    invoke-interface {p2, p1, v4, p0}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(ZILjava/util/List;)V

    goto :goto_3

    .line 41
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    if-eqz v4, :cond_c

    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_9

    move p1, v8

    goto :goto_2

    :cond_9
    move p1, v0

    :goto_2
    and-int/lit8 v2, v3, 0x20

    if-nez v2, :cond_b

    and-int/lit8 v2, v3, 0x8

    if-eqz v2, :cond_a

    .line 42
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 43
    :cond_a
    invoke-static {v1, v3, v0}, Lcom/yandex/mobile/ads/impl/nh0$a;->a(III)I

    move-result v1

    .line 44
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p2, v4, v1, v2, p1}, Lcom/yandex/mobile/ads/impl/nh0$c;->a(IILokio/BufferedSource;Z)V

    .line 45
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    int-to-long p1, v0

    invoke-interface {p0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    :goto_3
    return v8

    .line 46
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FRAME_SIZE_ERROR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh0;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method
