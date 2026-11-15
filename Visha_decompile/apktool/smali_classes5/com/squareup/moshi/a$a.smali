.class public Lcom/squareup/moshi/a$a;
.super Lcom/squareup/moshi/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/a;->a(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/j;)Lcom/squareup/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/squareup/moshi/a$f;

.field public final synthetic b:Lcom/squareup/moshi/e;

.field public final synthetic c:Lcom/squareup/moshi/j;

.field public final synthetic d:Lcom/squareup/moshi/a$f;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/lang/reflect/Type;

.field public final synthetic g:Lcom/squareup/moshi/a;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/a;Lcom/squareup/moshi/a$f;Lcom/squareup/moshi/e;Lcom/squareup/moshi/j;Lcom/squareup/moshi/a$f;Ljava/util/Set;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/a$a;->g:Lcom/squareup/moshi/a;

    iput-object p2, p0, Lcom/squareup/moshi/a$a;->a:Lcom/squareup/moshi/a$f;

    iput-object p3, p0, Lcom/squareup/moshi/a$a;->b:Lcom/squareup/moshi/e;

    iput-object p4, p0, Lcom/squareup/moshi/a$a;->c:Lcom/squareup/moshi/j;

    iput-object p5, p0, Lcom/squareup/moshi/a$a;->d:Lcom/squareup/moshi/a$f;

    iput-object p6, p0, Lcom/squareup/moshi/a$a;->e:Ljava/util/Set;

    iput-object p7, p0, Lcom/squareup/moshi/a$a;->f:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/squareup/moshi/a$a;->d:Lcom/squareup/moshi/a$f;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/squareup/moshi/a$a;->b:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, v0, Lcom/squareup/moshi/a$f;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->K()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->H()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/squareup/moshi/a$a;->d:Lcom/squareup/moshi/a$f;

    iget-object p0, p0, Lcom/squareup/moshi/a$a;->c:Lcom/squareup/moshi/j;

    invoke-virtual {v0, p0, p1}, Lcom/squareup/moshi/a$f;->b(Lcom/squareup/moshi/j;Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_2
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toJson(Lrc5;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/moshi/a$a;->a:Lcom/squareup/moshi/a$f;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/squareup/moshi/a$a;->b:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/squareup/moshi/a$f;->g:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lrc5;->E()Lrc5;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/squareup/moshi/a$a;->c:Lcom/squareup/moshi/j;

    invoke-virtual {v0, p0, p1, p2}, Lcom/squareup/moshi/a$f;->e(Lcom/squareup/moshi/j;Lrc5;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p2, p0, Ljava/io/IOException;

    if-eqz p2, :cond_2

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_2
    new-instance p2, Lcom/squareup/moshi/JsonDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lrc5;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/a$a;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/squareup/moshi/a$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
