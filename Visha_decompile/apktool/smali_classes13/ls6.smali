.class public Lls6;
.super Lyz4;
.source "SourceFile"


# instance fields
.field public final e:Lqy9;

.field public final f:Lau0;

.field public final g:Lorg/schabi/newpipe/extractor/playlist/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lyz4;-><init>(I)V

    new-instance v0, Lqy9;

    invoke-direct {v0, p1}, Lqy9;-><init>(I)V

    iput-object v0, p0, Lls6;->e:Lqy9;

    new-instance v0, Lau0;

    invoke-direct {v0, p1}, Lau0;-><init>(I)V

    iput-object v0, p0, Lls6;->f:Lau0;

    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/c;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/playlist/c;-><init>(I)V

    iput-object v0, p0, Lls6;->g:Lorg/schabi/newpipe/extractor/playlist/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lxz4;

    invoke-virtual {p0, p1}, Lls6;->h(Lxz4;)Lorg/schabi/newpipe/extractor/InfoItem;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lyz4;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lls6;->e:Lqy9;

    invoke-virtual {v1}, Lyz4;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lls6;->f:Lau0;

    invoke-virtual {v1}, Lyz4;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lls6;->g:Lorg/schabi/newpipe/extractor/playlist/c;

    invoke-virtual {p0}, Lyz4;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h(Lxz4;)Lorg/schabi/newpipe/extractor/InfoItem;
    .locals 2

    instance-of v0, p1, Lpy9;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lls6;->e:Lqy9;

    check-cast p1, Lpy9;

    invoke-virtual {p0, p1}, Lqy9;->i(Lpy9;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lzt0;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lls6;->f:Lau0;

    check-cast p1, Lzt0;

    invoke-virtual {p0, p1}, Lau0;->h(Lzt0;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/playlist/b;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lls6;->g:Lorg/schabi/newpipe/extractor/playlist/c;

    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/b;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/playlist/c;->h(Lorg/schabi/newpipe/extractor/playlist/b;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid extractor type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
