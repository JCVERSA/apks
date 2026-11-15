.class public abstract Lcom/transsion/audiotagger/tag/id3/AbstractTag;
.super Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;
.source "SourceFile"


# static fields
.field protected static final TYPE_TAG:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;)V

    return-void
.end method


# virtual methods
.method public abstract delete(Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/AbstractTag;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract seek(Ljava/nio/ByteBuffer;)Z
.end method

.method public abstract write(Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
