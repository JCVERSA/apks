.class public Lcom/transsion/audiotagger/tag/datatype/BooleanString;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/BooleanString;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/BooleanString;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public readByteArray([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    aget-byte p1, p1, p2

    const/16 p2, 0x30

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const/16 v1, 0x30

    const/4 v2, 0x0

    if-nez p0, :cond_0

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_1
    const/16 p0, 0x31

    aput-byte p0, v0, v2

    :goto_0
    return-object v0
.end method
