.class public Liz/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a([CIILiz/a;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-gtz p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p2, Lorg/xml/sax/SAXParseException;

    .line 18
    .line 19
    new-instance p3, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Unexpected text \""

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    const-string p1, "\""

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p4}, Liz/a;->k()Lorg/xml/sax/Locator;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-direct {p2, p1, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liz/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Liz/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)Liz/b$a;
    .locals 0

    .line 1
    new-instance p1, Lorg/xml/sax/SAXParseException;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuffer;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p4, "Unexpected element \""

    .line 9
    .line 10
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    const-string p3, " \""

    .line 17
    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p5}, Liz/a;->k()Lorg/xml/sax/Locator;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-direct {p1, p2, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)V
    .locals 0

    .line 1
    return-void
.end method
