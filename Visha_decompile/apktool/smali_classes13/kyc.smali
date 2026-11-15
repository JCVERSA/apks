.class public final synthetic Lkyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

.field public final synthetic b:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkyc;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    iput-object p2, p0, Lkyc;->b:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    iput-object p3, p0, Lkyc;->c:Ljava/lang/String;

    iput-object p4, p0, Lkyc;->d:Ljava/lang/String;

    iput-object p5, p0, Lkyc;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lkyc;->a:Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    iget-object v1, p0, Lkyc;->b:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    iget-object v2, p0, Lkyc;->c:Ljava/lang/String;

    iget-object v3, p0, Lkyc;->d:Ljava/lang/String;

    iget-object v4, p0, Lkyc;->e:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    move-result-object p0

    return-object p0
.end method
