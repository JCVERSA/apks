.class Lorg/apache/tools/ant/i;
.super Lorg/apache/tools/ant/o$b;
.source "source.java"


# instance fields
.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/reflect/Method;

.field private final synthetic d:Lorg/apache/tools/ant/o;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/o$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/i;->d:Lorg/apache/tools/ant/o;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/tools/ant/i;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/apache/tools/ant/i;->c:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/tools/ant/i;->c:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/Character;

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-direct {v1, p3}, Ljava/lang/Character;-><init>(C)V

    .line 17
    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    new-array p3, p3, [Ljava/lang/Character;

    .line 21
    .line 22
    aput-object v1, p3, p1

    .line 23
    .line 24
    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuffer;

    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string p3, "The value \"\" is not a legal value for attribute \""

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lorg/apache/tools/ant/i;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const-string p3, "\""

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method
