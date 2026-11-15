.class Lorg/apache/tools/ant/l;
.super Lorg/apache/tools/ant/o$b;
.source "source.java"


# instance fields
.field private final synthetic b:Ljava/lang/reflect/Method;

.field private final synthetic c:Lorg/apache/tools/ant/o;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/o$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/l;->c:Lorg/apache/tools/ant/o;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/tools/ant/l;->b:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/l;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/Project;->D(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p3, 0x1

    .line 8
    new-array p3, p3, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p1, p3, v1

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
