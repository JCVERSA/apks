.class public Lorg/schabi/newpipe/extractor/MetaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Lorg/schabi/newpipe/extractor/stream/Description;

.field private title:Ljava/lang/String;

.field private urlTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Description;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/stream/Description;",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 7
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 8
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUrl(Ljava/net/URL;)V
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUrlText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContent()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlTexts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-object p0
.end method

.method public getUrls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    return-object p0
.end method

.method public setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrlTexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    return-void
.end method
