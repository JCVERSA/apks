.class public Lr60;
.super Ll70;
.source "SourceFile"


# instance fields
.field public final b:Lcom/grack/nanojson/JsonObject;

.field public c:Ljava/util/List;

.field public final d:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lr60;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 6
    iput-object p3, p0, Lr60;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ll70;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lr60;->b:Lcom/grack/nanojson/JsonObject;

    .line 3
    iput-object p3, p0, Lr60;->d:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr60;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lr60;->b:Lcom/grack/nanojson/JsonObject;

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lr60;->b:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr60;->b:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title_link"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll70;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lr60;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr60;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lr60;->d:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {p0}, Lr60;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/StreamingService;->s(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object p0

    invoke-virtual {p0}, Lmk3;->b()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->R()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not download cover art location"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object p0, p0, Lr60;->c:Ljava/util/List;

    return-object p0
.end method
