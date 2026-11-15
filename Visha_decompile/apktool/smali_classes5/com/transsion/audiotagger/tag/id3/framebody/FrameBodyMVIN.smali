.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyMVIN;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(BLjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyMVIN;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "MVIN"

    return-object p0
.end method
