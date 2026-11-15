.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/c;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/c;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/c;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/c;->b:Z

    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    invoke-static {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->f0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method
