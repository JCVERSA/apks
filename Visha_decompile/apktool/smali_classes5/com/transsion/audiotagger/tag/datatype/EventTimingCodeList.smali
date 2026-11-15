.class public Lcom/transsion/audiotagger/tag/datatype/EventTimingCodeList;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList<",
        "Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/EventTimingCodeList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyETCO;)V
    .locals 1

    .line 2
    const-string v0, "TimedEventList"

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createListElement()Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCodeList;->createListElement()Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;

    move-result-object p0

    return-object p0
.end method

.method public createListElement()Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;
    .locals 2

    .line 2
    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;

    const-string v1, "TimedEvent"

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-direct {v0, v1, p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-object v0
.end method
