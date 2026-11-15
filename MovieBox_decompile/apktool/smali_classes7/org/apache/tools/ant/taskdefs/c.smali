.class public abstract Lorg/apache/tools/ant/taskdefs/c;
.super Lorg/apache/tools/ant/taskdefs/b;
.source "source.java"


# instance fields
.field private i:Ljava/lang/ClassLoader;

.field private j:Lorg/apache/tools/ant/util/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private z()Lorg/apache/tools/ant/util/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/c;->j:Lorg/apache/tools/ant/util/a$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lorg/apache/tools/ant/util/a;->c(Lorg/apache/tools/ant/q;)Lorg/apache/tools/ant/util/a$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/c;->j:Lorg/apache/tools/ant/util/a$a;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/c;->j:Lorg/apache/tools/ant/util/a$a;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public m()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/apache/tools/ant/u;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected y()Ljava/lang/ClassLoader;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/b;->u()Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/c;->j:Lorg/apache/tools/ant/util/a$a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/b;->u()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/c;->i:Ljava/lang/ClassLoader;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/c;->z()Lorg/apache/tools/ant/util/a$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/a$a;->b()Ljava/lang/ClassLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/c;->i:Ljava/lang/ClassLoader;

    .line 29
    .line 30
    check-cast v0, Lorg/apache/tools/ant/a;

    .line 31
    .line 32
    const-string v1, "org.apache.tools.ant"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/a;->h(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/c;->i:Ljava/lang/ClassLoader;

    .line 38
    .line 39
    return-object v0
.end method
