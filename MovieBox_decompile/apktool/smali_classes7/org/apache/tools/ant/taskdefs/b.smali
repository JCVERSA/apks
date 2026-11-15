.class public Lorg/apache/tools/ant/taskdefs/b;
.super Lorg/apache/tools/ant/u;
.source "source.java"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/u;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/b;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public u()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/b;->h:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/b;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/b;->h:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "antlib:org.apache.tools.ant"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    :cond_0
    const-string v0, "ant:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/b;->g:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuffer;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Attempt to use a reserved URI "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method
