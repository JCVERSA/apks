.class public Lcom/bumptech/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST:I = -0x1

.field public static final NETSCAPE_LOOP_COUNT_FOREVER:I


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field frameCount:I

.field final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 9
    .line 10
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getNumFrames()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 2
    .line 3
    return v0
.end method
