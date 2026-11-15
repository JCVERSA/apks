.class public Liz/b$d;
.super Liz/b$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Liz/b$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)Liz/b$a;
    .locals 0

    .line 1
    const-string p3, "target"

    .line 2
    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const-string p2, "antlib:org.apache.tools.ant"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-static {}, Liz/b;->h()Liz/b$a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Liz/b;->i()Liz/b$a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)V
    .locals 8

    .line 1
    invoke-virtual {p5}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    move-result-object p2

    .line 2
    invoke-virtual {p5}, Liz/a;->j()Lorg/apache/tools/ant/t;

    move-result-object p3

    new-instance v0, Lorg/apache/tools/ant/Location;

    invoke-virtual {p5}, Liz/a;->k()Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/t;->k(Lorg/apache/tools/ant/Location;)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    const-string v3, "basedir"

    const/4 v4, 0x1

    const-string v5, ""

    if-ge v0, v2, :cond_7

    .line 4
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    const-string v7, "default"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_5

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 10
    invoke-virtual {p5}, Liz/a;->n()Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    invoke-virtual {p2, v6}, Lorg/apache/tools/ant/Project;->H(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v6, :cond_5

    .line 13
    invoke-virtual {p5, v6}, Liz/a;->r(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p5}, Liz/a;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    invoke-virtual {p2, v6}, Lorg/apache/tools/ant/Project;->I(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, v6, p2}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move v1, v4

    goto :goto_1

    .line 17
    :cond_3
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v6, :cond_5

    .line 18
    invoke-virtual {p5}, Liz/a;->n()Z

    move-result v2

    if-nez v2, :cond_5

    .line 19
    invoke-virtual {p2, v6, p2}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {p5}, Liz/a;->n()Z

    move-result v2

    if-nez v2, :cond_5

    move-object p3, v6

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_6
    new-instance p1, Lorg/xml/sax/SAXParseException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Unexpected attribute \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5}, Liz/a;->k()Lorg/xml/sax/Locator;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "ant.file."

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Liz/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p5}, Liz/a;->n()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p5}, Liz/a;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Duplicated project name in import. Project "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Liz/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " defined first in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " and again in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Liz/a;->e()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v4}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 28
    :cond_8
    invoke-virtual {p5}, Liz/a;->e()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    .line 29
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Liz/a;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5}, Liz/a;->e()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lorg/apache/tools/ant/Project;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_9
    invoke-virtual {p5}, Liz/a;->n()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 31
    :cond_a
    invoke-virtual {p2, v3}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 32
    invoke-virtual {p2, v3}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->G(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-nez p3, :cond_c

    .line 33
    invoke-virtual {p5}, Liz/a;->f()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->G(Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_c
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 35
    invoke-virtual {p2, p3}, Lorg/apache/tools/ant/Project;->G(Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_d
    invoke-static {}, Liz/b;->f()Lorg/apache/tools/ant/util/d;

    move-result-object p1

    invoke-virtual {p5}, Liz/a;->f()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->F(Ljava/io/File;)V

    .line 37
    :goto_2
    invoke-virtual {p5}, Liz/a;->j()Lorg/apache/tools/ant/t;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lorg/apache/tools/ant/Project;->e(Ljava/lang/String;Lorg/apache/tools/ant/t;)V

    .line 38
    invoke-virtual {p5}, Liz/a;->j()Lorg/apache/tools/ant/t;

    move-result-object p1

    invoke-virtual {p5, p1}, Liz/a;->s(Lorg/apache/tools/ant/t;)V

    return-void
.end method
