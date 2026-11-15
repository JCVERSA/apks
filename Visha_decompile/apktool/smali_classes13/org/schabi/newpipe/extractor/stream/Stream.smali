.class public abstract Lorg/schabi/newpipe/extractor/stream/Stream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_ID_UNKNOWN:I = -0x1

.field public static final ID_UNKNOWN:Ljava/lang/String; = " "

.field public static final ITAG_NOT_AVAILABLE_OR_NOT_APPLICABLE:I = -0x1


# instance fields
.field private final content:Ljava/lang/String;

.field private final deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field private final id:Ljava/lang/String;

.field private final isUrl:Z

.field private final manifestUrl:Ljava/lang/String;

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iput-object p5, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iput-object p6, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    return-void
.end method

.method public static containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            "Ljava/util/List<",
            "+",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/Stream;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    iget v2, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v1, v2, :cond_1

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public getFormatId()I
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz p0, :cond_0

    iget p0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.end method

.method public getManifestUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isUrl()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    return p0
.end method
