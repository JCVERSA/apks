.class public Lorg/jsoup/parser/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lorg/jsoup/parser/i;

.field private b:I

.field private c:Lorg/jsoup/parser/ParseErrorList;

.field private d:Lorg/jsoup/parser/d;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jsoup/parser/e;->b:I

    .line 6
    .line 7
    iput-object p1, p0, Lorg/jsoup/parser/e;->a:Lorg/jsoup/parser/i;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->b()Lorg/jsoup/parser/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/d;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Lorg/jsoup/parser/e;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/e;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/parser/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/jsoup/parser/b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(Lorg/jsoup/parser/i;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/parser/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0}, Lorg/jsoup/parser/i;->b()Lorg/jsoup/parser/d;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, p1, p0, v2}, Lorg/jsoup/parser/i;->d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static d(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Lorg/jsoup/parser/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-virtual {v0}, Lorg/jsoup/parser/b;->b()Lorg/jsoup/parser/d;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    invoke-virtual/range {v0 .. v5}, Lorg/jsoup/parser/b;->i0(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static g()Lorg/jsoup/parser/e;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/e;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/parser/j;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/jsoup/parser/j;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(Lorg/jsoup/parser/i;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/e;->b:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public e(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/e;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/jsoup/parser/e;->b:I

    .line 8
    .line 9
    invoke-static {v0}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/ParseErrorList;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/jsoup/parser/e;->a:Lorg/jsoup/parser/i;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/d;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/jsoup/parser/i;->d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/e;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/jsoup/parser/e;->b:I

    .line 8
    .line 9
    invoke-static {v0}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/ParseErrorList;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/jsoup/parser/e;->a:Lorg/jsoup/parser/i;

    .line 21
    .line 22
    new-instance v1, Ljava/io/StringReader;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/ParseErrorList;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/d;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p2, p1, v2}, Lorg/jsoup/parser/i;->d(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Lorg/jsoup/nodes/Document;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
