.class public Lorg/apache/tools/ant/taskdefs/j;
.super Lorg/apache/tools/ant/util/j;
.source "source.java"


# instance fields
.field private c:Lorg/apache/tools/ant/q;

.field private d:I


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/j;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/j;->d:I

    .line 3
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/j;->c:Lorg/apache/tools/ant/q;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/q;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/j;-><init>(Lorg/apache/tools/ant/q;)V

    .line 5
    iput p2, p0, Lorg/apache/tools/ant/taskdefs/j;->d:I

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/util/j;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuffer;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "Impossible IOException caught: "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/j;->d:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/j;->h(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected h(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/j;->c:Lorg/apache/tools/ant/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
