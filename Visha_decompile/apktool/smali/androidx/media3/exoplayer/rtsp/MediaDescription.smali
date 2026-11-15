.class final Landroidx/media3/exoplayer/rtsp/MediaDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;,
        Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;,
        Landroidx/media3/exoplayer/rtsp/MediaDescription$MediaType;
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final RTP_AVP_PROFILE:Ljava/lang/String; = "RTP/AVP"


# instance fields
.field public final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bitrate:I

.field public final connection:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final key:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mediaTitle:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mediaType:Ljava/lang/String;

.field public final payloadType:I

.field public final port:I

.field public final rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

.field public final transportProtocol:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$100(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$200(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$300(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$400(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$500(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$600(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$700(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$800(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 12
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;Landroidx/media3/exoplayer/rtsp/MediaDescription$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/MediaDescription;-><init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/rtsp/MediaDescription;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFmtpParametersAsMap()Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    const-string v0, "fmtp"

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, " "

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v1, p0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    aget-object p0, v0, v4

    const-string v0, ";\\s?"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/ImmutableMap$b;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    array-length v1, p0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, p0, v2

    const-string v6, "="

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {v0, v6, v5}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    return v1
.end method
