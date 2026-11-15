.class public abstract Lorg/schabi/newpipe/extractor/Info;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private originalUrl:Ljava/lang/String;

.field private final serviceId:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/Info;->errors:Ljava/util/List;

    .line 3
    iput p1, p0, Lorg/schabi/newpipe/extractor/Info;->serviceId:I

    .line 4
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/Info;->id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/Info;->url:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/Info;->originalUrl:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/Info;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Ljava/lang/String;)V
    .locals 6

    .line 8
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAllErrors(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->errors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->errors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->errors:Ljava/util/List;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->originalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 2

    :try_start_0
    iget p0, p0, Lorg/schabi/newpipe/extractor/Info;->serviceId:I

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/a;->f(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Info object has invalid service id"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getServiceId()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/Info;->serviceId:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Info;->originalUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Info;->url:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/Info;->originalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Info;->originalUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (originalUrl=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/Info;->url:Ljava/lang/String;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/Info;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[url=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
