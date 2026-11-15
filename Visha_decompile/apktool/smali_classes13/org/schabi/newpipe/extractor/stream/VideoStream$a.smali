.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/stream/VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public e:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/String;

.field public i:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-void
.end method


# virtual methods
.method public a()Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 12

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eqz v5, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h:Ljava/lang/String;

    if-eqz v6, :cond_0

    new-instance v11, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-boolean v3, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->c:Z

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->f:Ljava/lang/String;

    iget-object v9, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lj7c;)V

    return-object v11

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The delivery method of the video stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->c:Z

    return-object p0
.end method

.method public c(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h:Ljava/lang/String;

    return-object p0
.end method
