.class Lorg/apache/tools/ant/taskdefs/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:Z

.field private final synthetic b:Ljava/net/URL;

.field private final synthetic c:Lorg/apache/tools/ant/taskdefs/e;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/e;Ljava/net/URL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/d;->c:Lorg/apache/tools/ant/taskdefs/e;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/d;->b:Ljava/net/URL;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/d;->a:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/d;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/d;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/d;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/d;->b:Ljava/net/URL;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw v0
.end method
