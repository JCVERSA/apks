.class public Lcom/transsion/audiotagger/utils/FileTypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final MAX_SIGNATURE_SIZE:I = 0x8

.field private static extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mp3v1Sig_1:[Ljava/lang/Integer;

.field private static final mp3v1Sig_2:[Ljava/lang/Integer;

.field private static final mp3v1Sig_3:[Ljava/lang/Integer;

.field private static final mp3v1Sig_4:[Ljava/lang/Integer;

.field private static final mp3v2Sig:[Ljava/lang/Integer;

.field private static final mp4Sig:[Ljava/lang/Integer;

.field private static signatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->mp3v2Sig:[Ljava/lang/Integer;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/transsion/audiotagger/utils/FileTypeUtil;->mp3v1Sig_1:[Ljava/lang/Integer;

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/transsion/audiotagger/utils/FileTypeUtil;->mp3v1Sig_2:[Ljava/lang/Integer;

    const/16 v4, 0xf2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/transsion/audiotagger/utils/FileTypeUtil;->mp3v1Sig_3:[Ljava/lang/Integer;

    const/16 v5, 0xfb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/transsion/audiotagger/utils/FileTypeUtil;->mp3v1Sig_4:[Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v5, 0x74

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v5, 0x79

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v9, 0x0

    move-object v6, v8

    move-object v7, v8

    filled-new-array/range {v6 .. v13}, [Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lcom/transsion/audiotagger/utils/FileTypeUtil;->mp4Sig:[Ljava/lang/Integer;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    const-string v7, "MP3IDv2"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    const-string v6, "MP3IDv1_1"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    const-string v2, "MP3IDv1_2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    const-string v3, "MP3IDv1_3"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    const-string v4, "MP3IDv1_4"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    const-string v1, "MP4"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    const-string v5, "mp3"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    const-string v2, "m4a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    const-string v1, "UNKNOWN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMagicExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/utils/FileTypeUtil;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getMagicFileType(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v1, v0, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v2, v1, p0, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    move v0, p0

    :goto_0
    const/16 v3, 0x8

    if-ge p0, v3, :cond_0

    if-lez v0, :cond_0

    rsub-int v0, p0, 0x1000

    invoke-virtual {v2, v1, p0, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v0, "UNKNOWN"

    sget-object v3, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/transsion/audiotagger/utils/FileTypeUtil;->signatureMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    invoke-static {v5, v1, p0}, Lcom/transsion/audiotagger/utils/FileTypeUtil;->matchesSignature([Ljava/lang/Integer;[BI)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    move-object v0, v4

    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/File;

    const-string v0, "C:/Users/keerthi/Dropbox/Works/Java/github/GaanaExtractor/workspace/jaudiotagger/testm4a"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/audiotagger/utils/FileTypeUtil;->getMagicFileType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/audiotagger/utils/FileTypeUtil;->getMagicExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static matchesSignature([Ljava/lang/Integer;[BI)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    return v1

    :cond_0
    move p2, v1

    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_2

    aget-object v0, p0, p2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
