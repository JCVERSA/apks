.class public Lu17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpga;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1

    instance-of p0, p1, Ljava/io/BufferedReader;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, p0

    :goto_0
    instance-of p0, p2, Ljava/io/PrintWriter;

    if-eqz p0, :cond_1

    check-cast p2, Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/PrintWriter;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p2, p0

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public h(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Lt17;

    invoke-direct {v0, p0, p2, p1}, Lt17;-><init>(Lu17;Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    return-object v0
.end method
