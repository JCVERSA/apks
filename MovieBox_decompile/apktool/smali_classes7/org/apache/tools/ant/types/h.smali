.class public Lorg/apache/tools/ant/types/h;
.super Lorg/apache/tools/ant/types/e;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/util/Vector;


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
    iput-object v0, p0, Lorg/apache/tools/ant/types/h;->a:Ljava/util/Vector;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public e()Ljava/util/Vector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/h;->a:Ljava/util/Vector;

    .line 2
    .line 3
    return-object v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/h;->a:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/r;->b(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lorg/apache/tools/ant/types/h;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lorg/apache/tools/ant/types/h;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/h;->e()Ljava/util/Vector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/apache/tools/ant/types/h;->a:Ljava/util/Vector;

    .line 28
    .line 29
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/e;->setRefid(Lorg/apache/tools/ant/types/r;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/r;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const-string p1, " doesn\'t refer to a FilterChain"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method
