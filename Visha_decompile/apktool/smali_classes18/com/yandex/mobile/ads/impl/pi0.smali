.class public final Lcom/yandex/mobile/ads/impl/pi0;
.super Lcom/yandex/mobile/ads/impl/sy1;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/nio/charset/CharsetDecoder;

.field private final b:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/pi0;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sy1;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/lo;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pi0;->a:Ljava/nio/charset/CharsetDecoder;

    sget-object v0, Lcom/yandex/mobile/ads/impl/lo;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pi0;->b:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/n01;Ljava/nio/ByteBuffer;)Lcom/yandex/mobile/ads/impl/k01;
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pi0;->a:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pi0;->a:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pi0;->a:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw p1

    :catch_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pi0;->a:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :try_start_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pi0;->b:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pi0;->b:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pi0;->b:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw p1

    :catch_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pi0;->b:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    new-instance p2, Lcom/yandex/mobile/ads/impl/k01;

    new-instance v2, Lcom/yandex/mobile/ads/impl/ri0;

    invoke-direct {v2, p0, v1, v1}, Lcom/yandex/mobile/ads/impl/ri0;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    new-array p0, v0, [Lcom/yandex/mobile/ads/impl/k01$b;

    aput-object v2, p0, p1

    invoke-direct {p2, p0}, Lcom/yandex/mobile/ads/impl/k01;-><init>([Lcom/yandex/mobile/ads/impl/k01$b;)V

    return-object p2

    :cond_0
    sget-object p2, Lcom/yandex/mobile/ads/impl/pi0;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    move v3, p1

    move-object v2, v1

    :goto_1
    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/fg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "streamurl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "streamtitle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v4

    goto :goto_2

    :cond_2
    move-object v2, v4

    :cond_3
    :goto_2
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/yandex/mobile/ads/impl/k01;

    new-instance v3, Lcom/yandex/mobile/ads/impl/ri0;

    invoke-direct {v3, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ri0;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    new-array p0, v0, [Lcom/yandex/mobile/ads/impl/k01$b;

    aput-object v3, p0, p1

    invoke-direct {p2, p0}, Lcom/yandex/mobile/ads/impl/k01;-><init>([Lcom/yandex/mobile/ads/impl/k01$b;)V

    return-object p2
.end method
