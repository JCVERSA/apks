.class public Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusFlags"
.end annotation


# static fields
.field protected static final TYPE_FLAGS:Ljava/lang/String; = "statusFlags"


# instance fields
.field protected originalFlags:B

.field final synthetic this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

.field protected writeFlags:B


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->this$0:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    int-to-long v5, v1

    invoke-static {v3, v4, v5, v6}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result p0

    int-to-long v3, p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result p0

    int-to-long p0, p0

    invoke-static {v3, v4, p0, p1}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getOriginalFlags()B
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    return p0
.end method

.method public getWriteFlags()B
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    return p0
.end method
