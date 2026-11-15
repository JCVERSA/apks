.class public abstract Lrz/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/b;->d(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/jsoup/parser/e;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 1
    invoke-virtual {p2, p0, p1}, Lorg/jsoup/parser/e;->f(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
