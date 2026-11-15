.class public abstract Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/transsion/audiotagger/tag/Tag;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public abstract convert(Lcom/transsion/audiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
