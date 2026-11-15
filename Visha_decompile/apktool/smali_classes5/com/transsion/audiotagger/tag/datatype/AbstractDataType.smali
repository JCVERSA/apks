.class public abstract Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TYPE_ELEMENT:Ljava/lang/String; = "element"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

.field protected identifier:Ljava/lang/String;

.field protected size:I

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.tag.datatype"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 12
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 14
    iget-object v1, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 16
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17
    :cond_0
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 18
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19
    :cond_1
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 20
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21
    :cond_2
    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 22
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23
    :cond_3
    instance-of v0, v1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 24
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 25
    :cond_4
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 26
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 27
    :cond_5
    instance-of v0, v1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 28
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 29
    :cond_6
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 30
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 31
    :cond_7
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 32
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 33
    :cond_8
    instance-of v0, v1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 34
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 35
    :cond_9
    instance-of v0, v1, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    if-eqz v0, :cond_a

    .line 36
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 37
    :cond_a
    instance-of v0, v1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    if-eqz v0, :cond_b

    .line 38
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 39
    :cond_b
    instance-of v0, v1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    if-eqz v0, :cond_c

    .line 40
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 41
    :cond_c
    instance-of v0, v1, [Z

    if-eqz v0, :cond_d

    .line 42
    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 43
    :cond_d
    instance-of v0, v1, [B

    if-eqz v0, :cond_e

    .line 44
    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 45
    :cond_e
    instance-of v0, v1, [C

    if-eqz v0, :cond_f

    .line 46
    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 47
    :cond_f
    instance-of v0, v1, [D

    if-eqz v0, :cond_10

    .line 48
    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_10
    instance-of v0, v1, [F

    if-eqz v0, :cond_11

    .line 50
    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_11
    instance-of v0, v1, [I

    if-eqz v0, :cond_12

    .line 52
    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_12
    instance-of v0, v1, [J

    if-eqz v0, :cond_13

    .line 54
    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_13
    instance-of v0, v1, [S

    if-eqz v0, :cond_14

    .line 56
    check-cast v1, [S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_14
    instance-of v0, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 58
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_15
    instance-of v0, v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 60
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_16
    instance-of v0, v1, Ljava/util/LinkedList;

    if-eqz v0, :cond_17

    .line 62
    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    :goto_0
    return-void

    .line 63
    :cond_17
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create copy of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 9
    invoke-virtual {p0, p3}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 2

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez p0, :cond_3

    iget-object v1, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v1, :cond_3

    return v0

    :cond_3
    if-eqz p0, :cond_f

    iget-object p1, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    instance-of v1, p0, [Z

    if-eqz v1, :cond_5

    instance-of v1, p1, [Z

    if-eqz v1, :cond_5

    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_5
    instance-of v1, p0, [B

    if-eqz v1, :cond_6

    instance-of v1, p1, [B

    if-eqz v1, :cond_6

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_6
    instance-of v1, p0, [C

    if-eqz v1, :cond_7

    instance-of v1, p1, [C

    if-eqz v1, :cond_7

    check-cast p0, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_7
    instance-of v1, p0, [D

    if-eqz v1, :cond_8

    instance-of v1, p1, [D

    if-eqz v1, :cond_8

    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_8
    instance-of v1, p0, [F

    if-eqz v1, :cond_9

    instance-of v1, p1, [F

    if-eqz v1, :cond_9

    check-cast p0, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_9
    instance-of v1, p0, [I

    if-eqz v1, :cond_a

    instance-of v1, p1, [I

    if-eqz v1, :cond_a

    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_a
    instance-of v1, p0, [J

    if-eqz v1, :cond_b

    instance-of v1, p1, [J

    if-eqz v1, :cond_b

    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_b
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_c

    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_c

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_c
    instance-of v1, p0, [S

    if-eqz v1, :cond_d

    instance-of v1, p1, [S

    if-eqz v1, :cond_d

    check-cast p0, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v2
.end method

.method public getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getSize()I
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final readByteArray([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V

    return-void
.end method

.method public abstract readByteArray([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation
.end method

.method public setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method

.method public abstract writeByteArray()[B
.end method
