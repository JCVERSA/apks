.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

.field public final synthetic b:Lls6;

.field public final synthetic c:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lls6;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->b:Lls6;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->c:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->b:Lls6;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->c:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;->e:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->u(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lls6;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
