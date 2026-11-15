.class public Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_COMMENT_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_USER_COMMENT_LIST_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_POS:I = 0x0

.field public static final FIELD_VENDOR_STRING_POS:I = 0x4

.field private static final JAUDIOTAGGER_MAX_COMMENT_LENGTH:I = 0x989680

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentReader"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BZ)Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntLE([B)I

    move-result v1

    new-array v3, v1, [B

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v1, 0x4

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->setVendor(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vendor is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-array v3, v0, [B

    invoke-static {p1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x8

    invoke-static {v3}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntLE([B)I

    move-result v3

    sget-object v4, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of user comments:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    new-array v5, v0, [B

    invoke-static {p1, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x4

    invoke-static {v5}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntLE([B)I

    move-result v5

    sget-object v6, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next Comment Length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const v6, 0x989680

    if-le v5, v6, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_TOO_LARGE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    array-length v6, p1

    if-le v5, v6, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_LARGE_THAN_HEADER:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array v6, v5, [B

    invoke-static {p1, v1, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    new-instance v5, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;

    invoke-direct {v5, v6}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>([B)V

    sget-object v6, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    aget-byte p2, p1, v1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_FRAMING_BIT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    aget-byte p1, p1, v1

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object p0
.end method
