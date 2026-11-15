.class public Lorg/apache/tools/ant/taskdefs/k;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/k$b;,
        Lorg/apache/tools/ant/taskdefs/k$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/tools/ant/taskdefs/k$b;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lorg/apache/tools/ant/taskdefs/k$b;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/k$b;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 4
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->c:Ljava/util/Hashtable;

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->d:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 9
    new-instance v0, Lorg/apache/tools/ant/taskdefs/k$b;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/k$b;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->c:Ljava/util/Hashtable;

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->d:Ljava/util/Vector;

    .line 12
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 13
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/k$b;->g(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    const-string v2, "Manifest-Version"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/k$b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/k$b;->h(Ljava/lang/String;)V

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/k$b;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/k$b;-><init>()V

    if-nez p1, :cond_3

    .line 20
    new-instance p1, Lorg/apache/tools/ant/taskdefs/k$a;

    invoke-direct {p1, v1}, Lorg/apache/tools/ant/taskdefs/k$a;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ManifestException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Manifest sections should start with a \"Name\" attribute and not \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance v3, Lorg/apache/tools/ant/taskdefs/k$a;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/taskdefs/k$a;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/k$b;->a(Lorg/apache/tools/ant/taskdefs/k$a;)Ljava/lang/String;

    .line 26
    :goto_1
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/k$b;->i(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/k$b;->g(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/k;->a(Lorg/apache/tools/ant/taskdefs/k$b;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/taskdefs/k$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$b;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->c:Ljava/util/Hashtable;

    .line 8
    .line 9
    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/k;->d:Ljava/util/Vector;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/k;->d:Ljava/util/Vector;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 27
    .line 28
    const-string v0, "Sections must have a name"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public b()Lorg/apache/tools/ant/taskdefs/k$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/k$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->c:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/tools/ant/taskdefs/k$b;

    .line 8
    .line 9
    return-object p1
.end method

.method public d(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Manifest-Version: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    const-string v1, "\r\n"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 29
    .line 30
    const-string v2, "Signature-Version"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/k$b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuffer;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "Signature-Version: "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/k$b;->h(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/k$b;->k(Ljava/io/PrintWriter;)V

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    :try_start_0
    new-instance v1, Lorg/apache/tools/ant/taskdefs/k$a;

    .line 74
    .line 75
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/k$b;->b(Lorg/apache/tools/ant/taskdefs/k$a;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->d:Ljava/util/Vector;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/k;->c(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/k$b;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/k$b;->k(Ljava/io/PrintWriter;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ne p1, p0, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/taskdefs/k;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 40
    .line 41
    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/k$b;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    return v0

    .line 50
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->c:Ljava/util/Hashtable;

    .line 51
    .line 52
    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/k;->c:Ljava/util/Hashtable;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->b:Lorg/apache/tools/ant/taskdefs/k$b;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/k$b;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k;->c:Ljava/util/Hashtable;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/Hashtable;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/k;->d(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method
