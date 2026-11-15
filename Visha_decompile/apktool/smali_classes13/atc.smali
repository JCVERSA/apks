.class public final synthetic Latc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latc;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

    iput-object p2, p0, Latc;->c:Ljava/util/List;

    iput-object p3, p0, Latc;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Latc;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

    iget-object v1, p0, Latc;->c:Ljava/util/List;

    iget-object p0, p0, Latc;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->H(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
