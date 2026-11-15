.class public Lorg/apache/tools/ant/util/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/apache/tools/ant/q;

.field private b:Lorg/apache/tools/ant/types/m;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/a$a;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/tools/ant/util/a$a;->a:Lorg/apache/tools/ant/q;

    .line 8
    .line 9
    return-void
.end method

.method private c()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/a$a;->a:Lorg/apache/tools/ant/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/a$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/tools/ant/util/a$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "ant.loader."

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/tools/ant/util/a$a;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/ClassLoader;
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/a$a;->c()Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/tools/ant/util/a$a;->b:Lorg/apache/tools/ant/types/m;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/a$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lorg/apache/tools/ant/util/a$a;->e:Z

    .line 12
    .line 13
    iget-object v4, p0, Lorg/apache/tools/ant/util/a$a;->d:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v4, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lorg/apache/tools/ant/util/a$a;->c()Lorg/apache/tools/ant/Project;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Lorg/apache/tools/ant/util/a;->a(Lorg/apache/tools/ant/Project;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 31
    :goto_1
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/tools/ant/util/a;->b(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/m;Ljava/lang/String;ZZ)Ljava/lang/ClassLoader;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
