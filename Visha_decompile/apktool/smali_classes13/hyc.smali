.class public final synthetic Lhyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhyc;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    iput-object p2, p0, Lhyc;->b:Ljava/lang/String;

    iput-object p3, p0, Lhyc;->c:Ljava/lang/String;

    iput-object p4, p0, Lhyc;->d:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lhyc;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    iget-object v1, p0, Lhyc;->b:Ljava/lang/String;

    iget-object v2, p0, Lhyc;->c:Ljava/lang/String;

    iget-object p0, p0, Lhyc;->d:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    check-cast p1, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->j0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/utils/Pair;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
