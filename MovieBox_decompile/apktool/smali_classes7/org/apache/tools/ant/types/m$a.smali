.class public Lorg/apache/tools/ant/types/m$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/types/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private final synthetic b:Lorg/apache/tools/ant/types/m;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/types/m$a;->b:Lorg/apache/tools/ant/types/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public b(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lorg/apache/tools/ant/types/m;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/apache/tools/ant/types/m$a;->a:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/m$a;->b:Lorg/apache/tools/ant/types/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/m;->w(Lorg/apache/tools/ant/Project;Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/apache/tools/ant/types/m$a;->a:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lmz/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/apache/tools/ant/types/m$a;->a:[Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lmz/d;-><init>(Ljava/io/File;[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/m$a;->a:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    :goto_0
    return v0
.end method
