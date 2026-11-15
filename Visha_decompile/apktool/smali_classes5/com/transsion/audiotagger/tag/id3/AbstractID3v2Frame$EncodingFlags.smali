.class Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodingFlags"
.end annotation


# static fields
.field protected static final TYPE_FLAGS:Ljava/lang/String; = "encodingFlags"


# instance fields
.field protected flags:B

.field final synthetic this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->resetFlags()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;B)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->setFlags(B)V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    move-result p0

    return p0
.end method

.method public getFlags()B
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return p0
.end method

.method public resetFlags()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->setFlags(B)V

    return-void
.end method

.method public setFlags(B)V
    .locals 0

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    return-void
.end method
