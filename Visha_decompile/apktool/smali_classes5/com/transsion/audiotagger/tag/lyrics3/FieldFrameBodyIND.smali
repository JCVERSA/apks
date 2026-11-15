.class public Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIND;
.super Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIND;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Lyrics Present"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "Timestamp Present"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    const-string v0, "Author"

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "IND"

    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Author"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setupObjectList()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/BooleanString;

    const-string v2, "Lyrics Present"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/BooleanString;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/BooleanString;

    const-string v2, "Timestamp Present"

    invoke-direct {v1, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/BooleanString;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
