.class public final Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/stream/AudioStream;
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

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/Locale;

.field public k:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public l:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->d:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g:I

    return-void
.end method


# virtual methods
.method public a()Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 15

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->d:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eqz v5, :cond_0

    new-instance v14, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget-boolean v3, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->c:Z

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->e:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget v6, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g:I

    iget-object v7, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f:Ljava/lang/String;

    iget-object v8, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->h:Ljava/lang/String;

    iget-object v9, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i:Ljava/lang/String;

    iget-object v10, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->j:Ljava/util/Locale;

    iget-object v11, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->k:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    iget-object v12, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lorg/schabi/newpipe/extractor/stream/AudioStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Ln10;)V

    return-object v14

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The delivery method of the audio stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The content of the audio stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->j:Ljava/util/Locale;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->k:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method public f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g:I

    return-object p0
.end method

.method public g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->c:Z

    return-object p0
.end method

.method public h(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->d:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public j(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->e:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method
