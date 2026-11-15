.class public Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/TagTextField;


# instance fields
.field private common:Z

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->checkCommon()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 p1, 0x3d

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 4
    const-string p1, "ERRONEOUS"

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->checkCommon()V

    return-void
.end method

.method private checkCommon()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->common:Z

    return-void
.end method


# virtual methods
.method public copy([B[BI)V
    .locals 1

    array-length p0, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/TagTextField;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getRawContent()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->id:Ljava/lang/String;

    sget-object v3, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, 0x5

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    array-length v5, v2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    array-length v7, v3

    add-int/2addr v5, v7

    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    const/4 v8, 0x3

    aput-byte v7, v1, v8

    const/high16 v7, 0xff0000

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v1, v8

    const v7, 0xff00

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v1, v6

    invoke-virtual {p0, v1, v4, v6}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->copy([B[BI)V

    invoke-virtual {p0, v2, v4, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->copy([B[BI)V

    array-length v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0x3d

    aput-byte v2, v4, v0

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v3, v4, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->copy([B[BI)V

    return-object v4
.end method

.method public isBinary(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public isBinary()Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public isCommon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->common:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    const-string v0, ""

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->content:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
