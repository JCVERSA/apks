.class public Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;
.super Lcom/transsion/audiotagger/tag/asf/AsfTagField;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/TagTextField;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;-><init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 4
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot interpret binary as string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;-><init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->toWrap:Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->getDescriptor()Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->getDescriptor()Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only UTF-16LE is possible with ASF."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
