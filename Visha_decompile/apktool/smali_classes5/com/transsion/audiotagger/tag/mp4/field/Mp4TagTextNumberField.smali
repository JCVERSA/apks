.class public Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;
.super Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;
.source "SourceFile"


# static fields
.field public static final NUMBER_LENGTH:I = 0x2


# instance fields
.field protected numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;->dataSize:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->getNumbers()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    return-void
.end method

.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->getNumbers()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public getDataBytes()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt16(S)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    return-object p0
.end method
