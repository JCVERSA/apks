.class public Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;
.source "SourceFile"


# static fields
.field public static final ISO_8859_1:B = 0x0t

.field public static final TEXT_ENCODING_FIELD_SIZE:I = 0x1

.field public static final UTF_16:B = 0x1t

.field public static final UTF_16BE:B = 0x2t

.field public static final UTF_8:B = 0x3t

.field private static textEncodings:Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;


# instance fields
.field private final idToCharset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->createMaps()V

    return-void
.end method

.method public static declared-synchronized getInstanceOf()Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;
    .locals 2

    const-class v0, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->textEncodings:Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    invoke-direct {v1}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;-><init>()V

    sput-object v1, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->textEncodings:Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->textEncodings:Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCharsetForId(I)Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getIdForCharset(Ljava/nio/charset/Charset;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
