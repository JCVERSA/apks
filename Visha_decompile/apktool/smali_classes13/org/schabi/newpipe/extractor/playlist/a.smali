.class public abstract Lorg/schabi/newpipe/extractor/playlist/a;
.super Ltl5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltl5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public abstract B()Ljava/util/List;
.end method

.method public abstract C()Ljava/util/List;
.end method

.method public abstract D()Ljava/lang/String;
.end method

.method public abstract E()Ljava/lang/String;
.end method

.method public u()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract v()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method public w()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0
.end method

.method public abstract x()J
.end method

.method public y()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public z()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
