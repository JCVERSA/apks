.class public Lorg/mvel2/util/o;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/util/o$b;
    }
.end annotation


# static fields
.field private static m:Ljava/lang/ThreadLocal;


# instance fields
.field private a:[C

.field private b:Lorg/mvel2/ParserContext;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private h:Ljava/lang/Class;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lorg/mvel2/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([CIILjava/lang/String;Lorg/mvel2/ParserContext;ILorg/mvel2/util/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/mvel2/util/o;->g:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/mvel2/util/o;->k:Z

    .line 11
    .line 12
    iput-object p1, p0, Lorg/mvel2/util/o;->a:[C

    .line 13
    .line 14
    iput p2, p0, Lorg/mvel2/util/o;->d:I

    .line 15
    .line 16
    iput p3, p0, Lorg/mvel2/util/o;->c:I

    .line 17
    .line 18
    iput-object p4, p0, Lorg/mvel2/util/o;->e:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p5, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 21
    .line 22
    and-int/lit8 p1, p6, 0x10

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_0
    iput-boolean v0, p0, Lorg/mvel2/util/o;->k:Z

    .line 28
    .line 29
    iput-object p7, p0, Lorg/mvel2/util/o;->l:Lorg/mvel2/util/g;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic a(Lorg/mvel2/util/o;)Lorg/mvel2/ParserContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    return-object p0
.end method

.method private b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/o;->g:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lorg/mvel2/ParserContext;->hasProtoImport(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-class v0, Lorg/mvel2/ast/Proto;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lorg/mvel2/util/o;->g:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lorg/mvel2/util/o;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    iget-boolean v2, p0, Lorg/mvel2/util/o;->k:Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const-class v0, Lorg/mvel2/util/o$b;

    .line 43
    .line 44
    iput-object v0, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 45
    .line 46
    iget-object v0, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, p0, Lorg/mvel2/util/o;->j:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p0, Lorg/mvel2/util/o;->g:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v0, p0, Lorg/mvel2/util/o;->i:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    new-instance v1, Lorg/mvel2/CompileException;

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "could not resolve class: "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v3, p0, Lorg/mvel2/util/o;->a:[C

    .line 77
    .line 78
    iget v4, p0, Lorg/mvel2/util/o;->d:I

    .line 79
    .line 80
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_2
    const-class v0, Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v0, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 87
    .line 88
    iget-object v0, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v0, p0, Lorg/mvel2/util/o;->i:Ljava/lang/String;

    .line 91
    .line 92
    :goto_2
    iput-object v1, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v1, p0, Lorg/mvel2/util/o;->g:Ljava/lang/String;

    .line 95
    .line 96
    return-void
.end method

.method public static c([CILorg/mvel2/ParserContext;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/mvel2/util/o;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    add-int/lit8 p2, p2, -0x1

    .line 30
    .line 31
    aget-object p2, v0, p2

    .line 32
    .line 33
    instance-of v0, p2, Lorg/mvel2/ast/Proto;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    check-cast p2, Lorg/mvel2/ast/Proto;

    .line 38
    .line 39
    invoke-virtual {p2}, Lorg/mvel2/ast/Proto;->getCursorEnd()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 44
    .line 45
    if-le p1, v0, :cond_0

    .line 46
    .line 47
    aget-char v1, p0, p1

    .line 48
    .line 49
    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    :goto_1
    if-le p1, v0, :cond_1

    .line 57
    .line 58
    aget-char v1, p0, p1

    .line 59
    .line 60
    invoke-static {v1}, Lorg/mvel2/util/m;->c0(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    add-int/lit8 p1, p1, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_2
    if-le p1, v0, :cond_3

    .line 70
    .line 71
    aget-char v1, p0, p1

    .line 72
    .line 73
    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    aget-char v1, p0, p1

    .line 80
    .line 81
    const/16 v2, 0x3b

    .line 82
    .line 83
    if-ne v1, v2, :cond_3

    .line 84
    .line 85
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    if-ne p1, v0, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    new-instance p1, Lorg/mvel2/CompileException;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "unresolved reference (possible illegal forward-reference?): "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lorg/mvel2/util/o;->f()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p2}, Lorg/mvel2/ast/Proto;->getCursorStart()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-direct {p1, v0, p0, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_5
    :goto_3
    return-void
.end method

.method private d(Ljava/lang/String;Lorg/mvel2/ast/Proto$c;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Queue;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    new-instance v1, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :cond_0
    new-instance v1, Lorg/mvel2/util/o$a;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p2, p3}, Lorg/mvel2/util/o$a;-><init>(Lorg/mvel2/util/o;Ljava/lang/String;Lorg/mvel2/ast/Proto$c;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Queue;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Queue;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/mvel2/util/o$b;

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/mvel2/util/o$b;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    return-object v0
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Queue;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public static h(Lorg/mvel2/ast/Proto;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/util/o;->m:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Queue;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lorg/mvel2/util/o$b;

    .line 37
    .line 38
    invoke-interface {v3, p0}, Lorg/mvel2/util/o$b;->a(Lorg/mvel2/ast/Proto;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lorg/mvel2/util/o$b;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/o;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public i()Lorg/mvel2/ast/Proto;
    .locals 13

    .line 1
    new-instance v0, Lorg/mvel2/ast/Proto;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/util/o;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/mvel2/ast/Proto;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    iget v1, p0, Lorg/mvel2/util/o;->d:I

    .line 11
    .line 12
    iget v2, p0, Lorg/mvel2/util/o;->c:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_f

    .line 15
    .line 16
    iget-object v2, p0, Lorg/mvel2/util/o;->a:[C

    .line 17
    .line 18
    invoke-static {v2, v1}, Lorg/mvel2/util/m;->E0([CI)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lorg/mvel2/util/o;->d:I

    .line 23
    .line 24
    iget-object v2, p0, Lorg/mvel2/util/o;->g:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_6

    .line 28
    .line 29
    :goto_1
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 30
    .line 31
    iget v4, p0, Lorg/mvel2/util/o;->c:I

    .line 32
    .line 33
    if-ge v2, v4, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lorg/mvel2/util/o;->a:[C

    .line 36
    .line 37
    aget-char v2, v4, v2

    .line 38
    .line 39
    invoke-static {v2}, Lorg/mvel2/util/m;->c0(I)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    iput v2, p0, Lorg/mvel2/util/o;->d:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 53
    .line 54
    if-le v2, v1, :cond_5

    .line 55
    .line 56
    new-instance v4, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v5, p0, Lorg/mvel2/util/o;->a:[C

    .line 59
    .line 60
    sub-int/2addr v2, v1

    .line 61
    invoke-direct {v4, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 62
    .line 63
    .line 64
    iput-object v4, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, "def"

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    const-string v2, "function"

    .line 75
    .line 76
    iget-object v4, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    :cond_2
    iget v1, p0, Lorg/mvel2/util/o;->d:I

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    iput v1, p0, Lorg/mvel2/util/o;->d:I

    .line 89
    .line 90
    iget-object v2, p0, Lorg/mvel2/util/o;->a:[C

    .line 91
    .line 92
    invoke-static {v2, v1}, Lorg/mvel2/util/m;->E0([CI)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iput v1, p0, Lorg/mvel2/util/o;->d:I

    .line 97
    .line 98
    :goto_2
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 99
    .line 100
    iget v4, p0, Lorg/mvel2/util/o;->c:I

    .line 101
    .line 102
    if-ge v2, v4, :cond_3

    .line 103
    .line 104
    iget-object v4, p0, Lorg/mvel2/util/o;->a:[C

    .line 105
    .line 106
    aget-char v2, v4, v2

    .line 107
    .line 108
    invoke-static {v2}, Lorg/mvel2/util/m;->c0(I)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    iput v2, p0, Lorg/mvel2/util/o;->d:I

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 122
    .line 123
    if-eq v1, v2, :cond_4

    .line 124
    .line 125
    new-instance v12, Lorg/mvel2/util/h;

    .line 126
    .line 127
    new-instance v5, Ljava/lang/String;

    .line 128
    .line 129
    iget-object v4, p0, Lorg/mvel2/util/o;->a:[C

    .line 130
    .line 131
    sub-int/2addr v2, v1

    .line 132
    invoke-direct {v5, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 133
    .line 134
    .line 135
    iget v6, p0, Lorg/mvel2/util/o;->d:I

    .line 136
    .line 137
    iget v7, p0, Lorg/mvel2/util/o;->c:I

    .line 138
    .line 139
    iget-object v8, p0, Lorg/mvel2/util/o;->a:[C

    .line 140
    .line 141
    iget-object v10, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 142
    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v9, 0x0

    .line 145
    move-object v4, v12

    .line 146
    invoke-direct/range {v4 .. v11}, Lorg/mvel2/util/h;-><init>(Ljava/lang/String;II[CILorg/mvel2/ParserContext;Lorg/mvel2/util/g;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12}, Lorg/mvel2/util/h;->b()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v12}, Lorg/mvel2/util/h;->c()Lorg/mvel2/ast/Function;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/mvel2/ast/Proto;->declareReceiver(Ljava/lang/String;Lorg/mvel2/ast/Function;)Lorg/mvel2/ast/Proto$c;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12}, Lorg/mvel2/util/h;->a()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    iput v1, p0, Lorg/mvel2/util/o;->d:I

    .line 167
    .line 168
    iput-object v3, p0, Lorg/mvel2/util/o;->f:Ljava/lang/String;

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_4
    new-instance v0, Lorg/mvel2/CompileException;

    .line 173
    .line 174
    const-string v2, "attempt to declare an anonymous function as a prototype member"

    .line 175
    .line 176
    iget-object v3, p0, Lorg/mvel2/util/o;->a:[C

    .line 177
    .line 178
    invoke-direct {v0, v2, v3, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_5
    iget-object v2, p0, Lorg/mvel2/util/o;->a:[C

    .line 183
    .line 184
    iget v4, p0, Lorg/mvel2/util/o;->d:I

    .line 185
    .line 186
    invoke-static {v2, v4}, Lorg/mvel2/util/m;->E0([CI)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    iput v2, p0, Lorg/mvel2/util/o;->d:I

    .line 191
    .line 192
    :cond_6
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 193
    .line 194
    iget v4, p0, Lorg/mvel2/util/o;->c:I

    .line 195
    .line 196
    if-gt v2, v4, :cond_e

    .line 197
    .line 198
    iget-object v1, p0, Lorg/mvel2/util/o;->a:[C

    .line 199
    .line 200
    aget-char v4, v1, v2

    .line 201
    .line 202
    const-class v5, Lorg/mvel2/util/o$b;

    .line 203
    .line 204
    const/16 v6, 0x3b

    .line 205
    .line 206
    if-eq v4, v6, :cond_c

    .line 207
    .line 208
    const/16 v7, 0x3d

    .line 209
    .line 210
    if-eq v4, v7, :cond_8

    .line 211
    .line 212
    :goto_3
    iget v1, p0, Lorg/mvel2/util/o;->d:I

    .line 213
    .line 214
    iget v3, p0, Lorg/mvel2/util/o;->c:I

    .line 215
    .line 216
    if-ge v1, v3, :cond_7

    .line 217
    .line 218
    iget-object v3, p0, Lorg/mvel2/util/o;->a:[C

    .line 219
    .line 220
    aget-char v1, v3, v1

    .line 221
    .line 222
    invoke-static {v1}, Lorg/mvel2/util/m;->c0(I)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_7

    .line 227
    .line 228
    iget v1, p0, Lorg/mvel2/util/o;->d:I

    .line 229
    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 231
    .line 232
    iput v1, p0, Lorg/mvel2/util/o;->d:I

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    iget v1, p0, Lorg/mvel2/util/o;->d:I

    .line 236
    .line 237
    if-le v1, v2, :cond_0

    .line 238
    .line 239
    new-instance v3, Ljava/lang/String;

    .line 240
    .line 241
    iget-object v4, p0, Lorg/mvel2/util/o;->a:[C

    .line 242
    .line 243
    sub-int/2addr v1, v2

    .line 244
    invoke-direct {v3, v4, v2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 245
    .line 246
    .line 247
    iput-object v3, p0, Lorg/mvel2/util/o;->g:Ljava/lang/String;

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 252
    .line 253
    iput v2, p0, Lorg/mvel2/util/o;->d:I

    .line 254
    .line 255
    invoke-static {v1, v2}, Lorg/mvel2/util/m;->E0([CI)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    iput v1, p0, Lorg/mvel2/util/o;->d:I

    .line 260
    .line 261
    :goto_4
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 262
    .line 263
    iget v4, p0, Lorg/mvel2/util/o;->c:I

    .line 264
    .line 265
    if-ge v2, v4, :cond_a

    .line 266
    .line 267
    iget-object v7, p0, Lorg/mvel2/util/o;->a:[C

    .line 268
    .line 269
    aget-char v8, v7, v2

    .line 270
    .line 271
    const/16 v9, 0x22

    .line 272
    .line 273
    if-eq v8, v9, :cond_9

    .line 274
    .line 275
    if-eq v8, v6, :cond_a

    .line 276
    .line 277
    const/16 v9, 0x5b

    .line 278
    .line 279
    if-eq v8, v9, :cond_9

    .line 280
    .line 281
    const/16 v9, 0x7b

    .line 282
    .line 283
    if-eq v8, v9, :cond_9

    .line 284
    .line 285
    const/16 v9, 0x27

    .line 286
    .line 287
    if-eq v8, v9, :cond_9

    .line 288
    .line 289
    const/16 v9, 0x28

    .line 290
    .line 291
    if-eq v8, v9, :cond_9

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_9
    iget-object v9, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 295
    .line 296
    invoke-static {v7, v2, v4, v8, v9}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    iput v2, p0, Lorg/mvel2/util/o;->d:I

    .line 301
    .line 302
    :goto_5
    iget v2, p0, Lorg/mvel2/util/o;->d:I

    .line 303
    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 305
    .line 306
    iput v2, p0, Lorg/mvel2/util/o;->d:I

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_a
    invoke-direct {p0}, Lorg/mvel2/util/o;->b()V

    .line 310
    .line 311
    .line 312
    new-instance v2, Ljava/lang/String;

    .line 313
    .line 314
    iget-object v4, p0, Lorg/mvel2/util/o;->a:[C

    .line 315
    .line 316
    iget v6, p0, Lorg/mvel2/util/o;->d:I

    .line 317
    .line 318
    add-int/lit8 v7, v6, 0x1

    .line 319
    .line 320
    iput v7, p0, Lorg/mvel2/util/o;->d:I

    .line 321
    .line 322
    sub-int/2addr v6, v1

    .line 323
    invoke-direct {v2, v4, v1, v6}, Ljava/lang/String;-><init>([CII)V

    .line 324
    .line 325
    .line 326
    iget-boolean v1, p0, Lorg/mvel2/util/o;->k:Z

    .line 327
    .line 328
    if-eqz v1, :cond_b

    .line 329
    .line 330
    iget-object v1, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 331
    .line 332
    if-ne v1, v5, :cond_b

    .line 333
    .line 334
    iget-object v1, p0, Lorg/mvel2/util/o;->j:Ljava/lang/String;

    .line 335
    .line 336
    iget-object v4, p0, Lorg/mvel2/util/o;->i:Ljava/lang/String;

    .line 337
    .line 338
    sget-object v5, Lorg/mvel2/ast/Proto$ReceiverType;->DEFERRED:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 339
    .line 340
    invoke-virtual {v0, v4, v5, v3}, Lorg/mvel2/ast/Proto;->declareReceiver(Ljava/lang/String;Lorg/mvel2/ast/Proto$ReceiverType;Lorg/mvel2/compiler/ExecutableStatement;)Lorg/mvel2/ast/Proto$c;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-direct {p0, v1, v3, v2}, Lorg/mvel2/util/o;->d(Ljava/lang/String;Lorg/mvel2/ast/Proto$c;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_b
    iget-object v1, p0, Lorg/mvel2/util/o;->i:Ljava/lang/String;

    .line 350
    .line 351
    iget-object v3, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 352
    .line 353
    iget-object v4, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 354
    .line 355
    invoke-static {v2, v4}, Lorg/mvel2/util/m;->G0(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 360
    .line 361
    invoke-virtual {v0, v1, v3, v2}, Lorg/mvel2/ast/Proto;->declareReceiver(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/compiler/ExecutableStatement;)Lorg/mvel2/ast/Proto$c;

    .line 362
    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 367
    .line 368
    iput v2, p0, Lorg/mvel2/util/o;->d:I

    .line 369
    .line 370
    invoke-direct {p0}, Lorg/mvel2/util/o;->b()V

    .line 371
    .line 372
    .line 373
    iget-boolean v1, p0, Lorg/mvel2/util/o;->k:Z

    .line 374
    .line 375
    if-eqz v1, :cond_d

    .line 376
    .line 377
    iget-object v1, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 378
    .line 379
    if-ne v1, v5, :cond_d

    .line 380
    .line 381
    iget-object v1, p0, Lorg/mvel2/util/o;->j:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v2, p0, Lorg/mvel2/util/o;->i:Ljava/lang/String;

    .line 384
    .line 385
    sget-object v4, Lorg/mvel2/ast/Proto$ReceiverType;->DEFERRED:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 386
    .line 387
    invoke-virtual {v0, v2, v4, v3}, Lorg/mvel2/ast/Proto;->declareReceiver(Ljava/lang/String;Lorg/mvel2/ast/Proto$ReceiverType;Lorg/mvel2/compiler/ExecutableStatement;)Lorg/mvel2/ast/Proto$c;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-direct {p0, v1, v2, v3}, Lorg/mvel2/util/o;->d(Ljava/lang/String;Lorg/mvel2/ast/Proto$c;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_d
    iget-object v1, p0, Lorg/mvel2/util/o;->i:Ljava/lang/String;

    .line 397
    .line 398
    iget-object v2, p0, Lorg/mvel2/util/o;->h:Ljava/lang/Class;

    .line 399
    .line 400
    invoke-virtual {v0, v1, v2, v3}, Lorg/mvel2/ast/Proto;->declareReceiver(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/compiler/ExecutableStatement;)Lorg/mvel2/ast/Proto$c;

    .line 401
    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :cond_e
    new-instance v0, Lorg/mvel2/CompileException;

    .line 406
    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v3, "unexpected end of statement in proto declaration: "

    .line 413
    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object v3, p0, Lorg/mvel2/util/o;->e:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    iget-object v3, p0, Lorg/mvel2/util/o;->a:[C

    .line 427
    .line 428
    invoke-direct {v0, v2, v3, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 429
    .line 430
    .line 431
    throw v0

    .line 432
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 433
    .line 434
    iput v1, p0, Lorg/mvel2/util/o;->d:I

    .line 435
    .line 436
    iget-object v2, p0, Lorg/mvel2/util/o;->l:Lorg/mvel2/util/g;

    .line 437
    .line 438
    if-eqz v2, :cond_10

    .line 439
    .line 440
    iget-object v2, p0, Lorg/mvel2/util/o;->a:[C

    .line 441
    .line 442
    invoke-static {v2, v1}, Lorg/mvel2/util/m;->p0([CI)Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_10

    .line 447
    .line 448
    iget-object v1, p0, Lorg/mvel2/util/o;->l:Lorg/mvel2/util/g;

    .line 449
    .line 450
    new-instance v2, Lorg/mvel2/ast/EndOfStatement;

    .line 451
    .line 452
    iget-object v3, p0, Lorg/mvel2/util/o;->b:Lorg/mvel2/ParserContext;

    .line 453
    .line 454
    invoke-direct {v2, v3}, Lorg/mvel2/ast/EndOfStatement;-><init>(Lorg/mvel2/ParserContext;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v2}, Lorg/mvel2/util/g;->a(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_10
    return-object v0
.end method
