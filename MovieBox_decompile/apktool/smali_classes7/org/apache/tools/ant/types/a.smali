.class public final Lorg/apache/tools/ant/types/a;
.super Lorg/apache/tools/ant/types/e;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Vector;

.field private c:Lorg/apache/tools/ant/types/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/types/a;->b:Ljava/util/Vector;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public d(Lorg/apache/tools/ant/types/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->b:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lorg/apache/tools/ant/types/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->c:Lorg/apache/tools/ant/types/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()[Lorg/apache/tools/ant/types/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->b:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Lorg/apache/tools/ant/types/l;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/tools/ant/types/a;->b:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/types/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k(Lorg/apache/tools/ant/types/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->c:Lorg/apache/tools/ant/types/m;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/tools/ant/types/a;->c:Lorg/apache/tools/ant/types/m;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/m;->i(Lorg/apache/tools/ant/types/m;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->b:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/tools/ant/types/a;->c:Lorg/apache/tools/ant/types/m;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/r;->b(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lorg/apache/tools/ant/types/a;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lorg/apache/tools/ant/types/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/a;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/a;->j(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/a;->g()Lorg/apache/tools/ant/types/m;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/a;->k(Lorg/apache/tools/ant/types/m;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/a;->i()[Lorg/apache/tools/ant/types/l;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_0
    array-length v2, v0

    .line 53
    if-ge v1, v2, :cond_0

    .line 54
    .line 55
    aget-object v2, v0, v1

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/a;->d(Lorg/apache/tools/ant/types/l;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/e;->setRefid(Lorg/apache/tools/ant/types/r;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/r;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    const-string p1, " doesn\'t refer to a FilterReader"

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 89
    .line 90
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1
.end method
