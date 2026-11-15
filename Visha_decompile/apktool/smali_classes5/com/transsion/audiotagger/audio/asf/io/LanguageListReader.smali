.class public Lcom/transsion/audiotagger/audio/asf/io/LanguageListReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/LanguageListReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/LanguageListReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result p1

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;

    invoke-direct {v0, p3, p4, p0}, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;-><init>(JLjava/math/BigInteger;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_0

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p2, p3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->addLanguage(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
