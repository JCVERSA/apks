.class public final synthetic Lssc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lssc;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

    iput-object p2, p0, Lssc;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lssc;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

    iget-object p0, p0, Lssc;->c:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->M(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
