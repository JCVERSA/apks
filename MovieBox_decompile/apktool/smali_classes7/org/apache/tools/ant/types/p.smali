.class Lorg/apache/tools/ant/types/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final synthetic a:Ljava/util/Enumeration;

.field private final synthetic b:Lorg/apache/tools/ant/types/q;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/types/q;Ljava/util/Enumeration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/types/p;->b:Lorg/apache/tools/ant/types/q;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/tools/ant/types/p;->a:Ljava/util/Enumeration;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/p;->a:Ljava/util/Enumeration;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lmz/f;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tools/ant/types/p;->b:Lorg/apache/tools/ant/types/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/apache/tools/ant/types/p;->a:Ljava/util/Enumeration;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lmz/f;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
