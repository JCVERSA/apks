.class Lorg/apache/tools/ant/o$a;
.super Lorg/apache/tools/ant/o$e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private b:Ljava/lang/reflect/Constructor;

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/o$e;-><init>(Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/tools/ant/o$a;->b:Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    iput p3, p0, Lorg/apache/tools/ant/o$a;->c:I

    .line 7
    .line 8
    return-void
.end method

.method private e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/o$e;->b()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object p2, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p3, :cond_1

    .line 3
    .line 4
    iget-object p3, p0, Lorg/apache/tools/ant/o$a;->b:Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-array p1, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p1, v1, v2

    .line 20
    .line 21
    move-object p1, v1

    .line 22
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    :cond_1
    iget p1, p0, Lorg/apache/tools/ant/o$a;->c:I

    .line 27
    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/o$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-object p3
.end method

.method c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/o$a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/o$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
