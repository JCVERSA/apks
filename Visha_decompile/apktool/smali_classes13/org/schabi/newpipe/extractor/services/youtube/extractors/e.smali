.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/e;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/e;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->i0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0
.end method
