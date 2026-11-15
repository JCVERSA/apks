.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;
.super Lpxc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->G(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

.field public final synthetic e:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->e:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->d:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    invoke-direct {p0, p2}, Lpxc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->c:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lpxc;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->c:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lpxc;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->b:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public c()Z
    .locals 2

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$f;->a:[I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;->d:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lpxc;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method
