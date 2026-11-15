.class public abstract Lcom/squareup/moshi/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/e$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final failOnUnknown()Lcom/squareup/moshi/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/e;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/moshi/e$c;

    invoke-direct {v0, p0, p0}, Lcom/squareup/moshi/e$c;-><init>(Lcom/squareup/moshi/e;Lcom/squareup/moshi/e;)V

    return-object v0
.end method

.method public abstract fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/moshi/JsonReader;->J(Lokio/BufferedSource;)Lcom/squareup/moshi/JsonReader;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/squareup/moshi/e;->isLenient()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->K()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object p0

    sget-object p1, Lcom/squareup/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/squareup/moshi/JsonReader$Token;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/squareup/moshi/JsonDataException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final fromJson(Lokio/BufferedSource;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/moshi/JsonReader;->J(Lokio/BufferedSource;)Lcom/squareup/moshi/JsonReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final fromJsonValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/moshi/g;

    invoke-direct {v0, p1}, Lcom/squareup/moshi/g;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public indent(Ljava/lang/String;)Lcom/squareup/moshi/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/moshi/e;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/squareup/moshi/e$d;

    invoke-direct {v0, p0, p0, p1}, Lcom/squareup/moshi/e$d;-><init>(Lcom/squareup/moshi/e;Lcom/squareup/moshi/e;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "indent == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isLenient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final lenient()Lcom/squareup/moshi/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/e;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/moshi/e$b;

    invoke-direct {v0, p0, p0}, Lcom/squareup/moshi/e$b;-><init>(Lcom/squareup/moshi/e;Lcom/squareup/moshi/e;)V

    return-object v0
.end method

.method public final nonNull()Lcom/squareup/moshi/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/e;"
        }
    .end annotation

    instance-of v0, p0, Ln17;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ln17;

    invoke-direct {v0, p0}, Ln17;-><init>(Lcom/squareup/moshi/e;)V

    return-object v0
.end method

.method public final nullSafe()Lcom/squareup/moshi/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/e;"
        }
    .end annotation

    instance-of v0, p0, Lf37;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lf37;

    invoke-direct {v0, p0}, Lf37;-><init>(Lcom/squareup/moshi/e;)V

    return-object v0
.end method

.method public final serializeNulls()Lcom/squareup/moshi/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/e;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/moshi/e$a;

    invoke-direct {v0, p0, p0}, Lcom/squareup/moshi/e$a;-><init>(Lcom/squareup/moshi/e;Lcom/squareup/moshi/e;)V

    return-object v0
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/squareup/moshi/e;->toJson(Lokio/BufferedSink;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final toJson(Lokio/BufferedSink;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrc5;->F(Lokio/BufferedSink;)Lrc5;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract toJson(Lrc5;Ljava/lang/Object;)V
.end method

.method public final toJsonValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/moshi/h;

    invoke-direct {v0}, Lcom/squareup/moshi/h;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/squareup/moshi/h;->T()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
