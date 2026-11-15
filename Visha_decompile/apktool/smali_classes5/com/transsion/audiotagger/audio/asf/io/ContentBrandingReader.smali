.class public Lcom/transsion/audiotagger/audio/asf/io/ContentBrandingReader;
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

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/ContentBrandingReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

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

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/ContentBrandingReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object p1

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v2

    new-instance v5, Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object p2

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>([B)V

    new-instance p2, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;

    invoke-direct {p2, p3, p4, p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    invoke-virtual {p2, v0, v1, p1}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->setImage(J[B)V

    invoke-virtual {p2, v4}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->setCopyRightURL(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/transsion/audiotagger/audio/asf/data/ContentBranding;->setBannerImageURL(Ljava/lang/String;)V

    return-object p2
.end method
