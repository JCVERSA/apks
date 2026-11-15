.class public Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final id:Ljava/lang/String;

.field protected final originalUrl:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 2

    .line 5
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    return-object p0
.end method
