.class public Lgz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa1;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Lcom/grack/nanojson/JsonArray;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lgz7;->b:Lcom/grack/nanojson/JsonArray;

    iput-object p3, p0, Lgz7;->c:Ljava/lang/String;

    iput-object p4, p0, Lgz7;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lgz7;->e:Z

    return-void
.end method


# virtual methods
.method public A()Lorg/schabi/newpipe/extractor/Page;
    .locals 4

    invoke-virtual {p0}, Lgz7;->m()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "threadId"

    invoke-static {v0, v1}, Loc5;->e(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgz7;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lgz7;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgz7;->b:Lcom/grack/nanojson/JsonArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2}, Lcom/grack/nanojson/JsonObject;-><init>()V

    const-string v3, "children"

    iget-object p0, p0, Lgz7;->b:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2, v3, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v2}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.name"

    invoke-static {v0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.host"

    invoke-static {v1, v2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lce9;->d:Ltz7;

    invoke-virtual {v2}, Ltz7;->c()Lem5;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lgz7;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Lem5;->k(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.name"

    invoke-static {v0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.host"

    invoke-static {p0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lgz7;->d:Ljava/lang/String;

    iget-object p0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {v0, p0}, Lmz7;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "createdAt"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    invoke-virtual {p0}, Lgz7;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-static {p0}, Lmz7;->m(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "account.displayName"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgz7;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lgz7;->q()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "totalRepliesFromVideoAuthor"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lgz7;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public l()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    iget-object p0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "text"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {p0}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->u1()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string v1, "(?s)<[^>]*>(\\s*<[^>]*>)*"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lgz7;->f:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgz7;->b:Lcom/grack/nanojson/JsonArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgz7;->b:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgz7;->f:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "totalReplies"

    invoke-static {v0, v1}, Loc5;->e(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgz7;->f:Ljava/lang/Integer;

    :cond_1
    :goto_0
    iget-object p0, p0, Lgz7;->f:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lgz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
