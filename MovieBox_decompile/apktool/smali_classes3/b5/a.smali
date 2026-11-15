.class public Lb5/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb5/a$a;
    }
.end annotation


# static fields
.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/alibaba/fastjson/util/a;

.field protected final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, La5/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lb5/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const-class v0, La5/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lb5/a;->d:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb5/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    instance-of v0, p1, Lcom/alibaba/fastjson/util/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/alibaba/fastjson/util/a;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/util/a;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/a;-><init>(Ljava/lang/ClassLoader;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v0

    .line 24
    :goto_0
    iput-object p1, p0, Lb5/a;->a:Lcom/alibaba/fastjson/util/a;

    .line 25
    .line 26
    return-void
.end method

.method private a(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lb5/a;->b(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private b(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p2, p1, v1, v2}, Lb5/a;->n(Lcom/alibaba/fastjson/asm/h;Lb5/a$a;ILcom/alibaba/fastjson/asm/f;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p1}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    aget-object v3, v3, v1

    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v3}, Lb5/a;->o(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method private c(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lb5/a$a;->a(Lb5/a$a;)Lcom/alibaba/fastjson/util/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->c:Ljava/lang/reflect/Constructor;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0xb7

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lb5/a$a;->i()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/16 v3, 0xbb

    .line 28
    .line 29
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x59

    .line 33
    .line 34
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "<init>"

    .line 46
    .line 47
    const-string v3, "()V"

    .line 48
    .line 49
    invoke-interface {p2, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 v0, 0x19

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 64
    .line 65
    .line 66
    const-class v0, Lb5/o;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v3, "clazz"

    .line 73
    .line 74
    const-string v4, "Ljava/lang/Class;"

    .line 75
    .line 76
    const/16 v5, 0xb4

    .line 77
    .line 78
    invoke-interface {p2, v5, v1, v3, v4}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "(L"

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    sget-object v3, Lb5/a;->c:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v3, "createInstance"

    .line 110
    .line 111
    invoke-interface {p2, v2, v0, v3, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lb5/a$a;->i()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/16 v1, 0xc0

    .line 123
    .line 124
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    const-string v0, "instance"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const/16 v0, 0x3a

    .line 134
    .line 135
    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private d(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lb5/a$a;->a(Lb5/a$a;)Lcom/alibaba/fastjson/util/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->c:Ljava/lang/reflect/Constructor;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/asm/i;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "(L"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v2, Lb5/a;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v3, 0x1

    .line 47
    const-string v4, "createInstance"

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    move-object v2, p1

    .line 51
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lb5/a$a;->i()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/16 v1, 0xbb

    .line 63
    .line 64
    invoke-interface {v0, v1, p1}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/16 p1, 0x59

    .line 68
    .line 69
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lb5/a$a;->i()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "<init>"

    .line 81
    .line 82
    const-string v1, "()V"

    .line 83
    .line 84
    const/16 v2, 0xb7

    .line 85
    .line 86
    invoke-interface {v0, v2, p1, p2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/16 p1, 0xb0

    .line 90
    .line 91
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x3

    .line 95
    invoke-interface {v0, p1, p1}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Lcom/alibaba/fastjson/asm/h;->k()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private e(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-direct/range {p0 .. p3}, Lb5/a;->l(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 11
    .line 12
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 18
    .line 19
    .line 20
    iget v5, v2, Lcom/alibaba/fastjson/util/d;->j:I

    .line 21
    .line 22
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 23
    .line 24
    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 25
    .line 26
    and-int/2addr v5, v6

    .line 27
    const-string v7, "(L"

    .line 28
    .line 29
    const-string v8, "deserialze"

    .line 30
    .line 31
    const-string v9, "(I)Ljava/lang/reflect/Type;"

    .line 32
    .line 33
    const-string v10, "getFieldType"

    .line 34
    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x1

    .line 37
    const/16 v13, 0xb6

    .line 38
    .line 39
    const/16 v14, 0xc0

    .line 40
    .line 41
    const/16 v15, 0x19

    .line 42
    .line 43
    const-class v16, Lb5/o;

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    const/16 v5, 0x59

    .line 48
    .line 49
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 50
    .line 51
    .line 52
    const/16 v5, 0xc1

    .line 53
    .line 54
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/16 v5, 0x99

    .line 62
    .line 63
    invoke-interface {v1, v5, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 64
    .line 65
    .line 66
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-interface {v1, v14, v5}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v15, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 74
    .line 75
    .line 76
    iget-object v5, v2, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 77
    .line 78
    instance-of v5, v5, Ljava/lang/Class;

    .line 79
    .line 80
    if-eqz v5, :cond_0

    .line 81
    .line 82
    iget-object v5, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 83
    .line 84
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v5}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v1, v15, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 97
    .line 98
    .line 99
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-interface {v1, v13, v5, v10, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object v5, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget v5, v2, Lcom/alibaba/fastjson/util/d;->j:I

    .line 119
    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    sget-object v11, Lb5/a;->c:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v11, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    .line 145
    .line 146
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-interface {v1, v13, v5, v8, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-interface {v1, v14, v5}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    const/16 v6, 0x3a

    .line 168
    .line 169
    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 170
    .line 171
    .line 172
    const/16 v5, 0xa7

    .line 173
    .line 174
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 178
    .line 179
    .line 180
    :cond_1
    invoke-interface {v1, v15, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 181
    .line 182
    .line 183
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 184
    .line 185
    instance-of v3, v3, Ljava/lang/Class;

    .line 186
    .line 187
    if-eqz v3, :cond_2

    .line 188
    .line 189
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 190
    .line 191
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    const/4 v3, 0x0

    .line 204
    invoke-interface {v1, v15, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 205
    .line 206
    .line 207
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-interface {v1, v13, v3, v10, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :goto_1
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 222
    .line 223
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    const-class v3, Lb5/b2;

    .line 227
    .line 228
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    sget-object v6, Lb5/a;->c:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v6, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    const/16 v6, 0xb9

    .line 255
    .line 256
    invoke-interface {v1, v6, v3, v8, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v2}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    const/16 v2, 0x3a

    .line 271
    .line 272
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method private f(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/f;)V
    .locals 4

    .line 1
    const-string v0, "matchedCount"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->g(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x9e

    .line 13
    .line 14
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "lexer"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x19

    .line 24
    .line 25
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "token"

    .line 31
    .line 32
    const-string v2, "()I"

    .line 33
    .line 34
    const/16 v3, 0xb6

    .line 35
    .line 36
    invoke-interface {p2, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0xd

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/16 v0, 0xa0

    .line 49
    .line 50
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Lb5/a;->r(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private g(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    move-result-object v0

    array-length v1, v0

    const/4 v10, 0x0

    move v2, v10

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 3
    iget-object v4, v3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 4
    iget-object v3, v3, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 5
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    return-void

    .line 6
    :cond_1
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    .line 8
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v10

    .line 9
    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_4
    invoke-static/range {p2 .. p2}, Lb5/a$a;->a(Lb5/a$a;)Lcom/alibaba/fastjson/util/h;

    move-result-object v0

    .line 11
    iget-object v1, v0, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    invoke-static {v9, v1}, Lb5/a$a;->d(Lb5/a$a;[Lcom/alibaba/fastjson/util/d;)[Lcom/alibaba/fastjson/util/d;

    .line 12
    new-instance v7, Lcom/alibaba/fastjson/asm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(L"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lb5/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x1

    const-string v14, "deserialze"

    move-object v11, v7

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    new-instance v11, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 14
    new-instance v12, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 15
    new-instance v13, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 16
    new-instance v14, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 17
    invoke-direct {v8, v9, v7}, Lb5/a;->w(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    .line 18
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 19
    const-string v15, "lexer"

    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x19

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 20
    sget-object v3, Lb5/a;->d:Ljava/lang/String;

    const-string v4, "token"

    const-string v10, "()I"

    const/16 v5, 0xb6

    invoke-interface {v7, v5, v3, v4, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v10, 0xa0

    .line 22
    invoke-interface {v7, v10, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 23
    iget v0, v0, Lcom/alibaba/fastjson/util/h;->j:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v10

    const/16 v10, 0x15

    const/4 v5, 0x4

    if-nez v0, :cond_5

    .line 24
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v18, v14

    const/16 v14, 0x19

    invoke-interface {v7, v14, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 25
    invoke-interface {v7, v10, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 26
    iget v0, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 27
    const-string v0, "isEnabled"

    const-string v4, "(II)Z"

    const/16 v14, 0xb6

    invoke-interface {v7, v14, v3, v0, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 28
    invoke-interface {v7, v0, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    :goto_2
    const/4 v0, 0x0

    const/16 v4, 0x19

    goto :goto_3

    :cond_5
    move-object/from16 v18, v14

    goto :goto_2

    .line 29
    :goto_3
    invoke-interface {v7, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v14, 0x1

    .line 30
    invoke-interface {v7, v4, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x2

    .line 31
    invoke-interface {v7, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v10, 0x3

    .line 32
    invoke-interface {v7, v4, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 33
    invoke-interface {v7, v14}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 34
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xb7

    .line 35
    const-string v10, "deserialzeArrayMapping"

    invoke-interface {v7, v5, v4, v10, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    .line 36
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 37
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 38
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 39
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 40
    const-string v0, "isEnabled"

    const-string v1, "(I)Z"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v3, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/16 v1, 0x9a

    .line 42
    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/16 v1, 0xc8

    .line 43
    invoke-interface {v7, v1, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 44
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 45
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 46
    invoke-static/range {p2 .. p2}, Lb5/a$a;->f(Lb5/a$a;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 47
    const-string v0, "scanType"

    const-string v1, "(Ljava/lang/String;)I"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v3, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/16 v1, 0xa0

    .line 50
    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/16 v1, 0xc8

    .line 51
    invoke-interface {v7, v1, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 52
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    const/16 v0, 0x19

    .line 53
    invoke-interface {v7, v0, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, La5/g;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContext"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "mark_context"

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v10, 0x3a

    invoke-interface {v7, v10, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x3

    .line 56
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 57
    const-string v0, "matchedCount"

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x36

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 58
    invoke-direct {v8, v9, v7}, Lb5/a;->c(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    const/16 v0, 0x19

    .line 59
    invoke-interface {v7, v0, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, La5/g;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContext"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "context"

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v10, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x19

    .line 62
    invoke-interface {v7, v0, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 63
    const-string v1, "context"

    invoke-virtual {v9, v1}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 64
    const-string v1, "instance"

    invoke-virtual {v9, v1}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v1, 0x3

    .line 65
    invoke-interface {v7, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, La5/g;

    .line 67
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, La5/g;

    .line 68
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "setContext"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "childContext"

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v10, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 71
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v4, 0xb4

    .line 72
    const-string v2, "matchStat"

    const-string v1, "I"

    invoke-interface {v7, v4, v3, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/16 v3, 0xa0

    .line 75
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/16 v3, 0xc8

    .line 76
    invoke-interface {v7, v3, v13}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 77
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x3

    .line 78
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 79
    invoke-virtual {v9, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->g(II)V

    .line 80
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_6

    .line 81
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_asm_flag_"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v10, v4, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    add-int/lit8 v4, v4, 0x20

    const/4 v0, 0x3

    const/16 v10, 0x3a

    goto :goto_4

    .line 83
    :cond_6
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x19

    invoke-interface {v7, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v4, "isEnabled"

    const-string v10, "(I)Z"

    const/16 v14, 0xb6

    invoke-interface {v7, v14, v0, v4, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "initStringFieldAsEmpty"

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->g(II)V

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_d

    .line 87
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    move-result-object v4

    aget-object v4, v4, v0

    .line 88
    iget-object v10, v4, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 89
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v10, v14, :cond_7

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v10, v14, :cond_7

    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v10, v14, :cond_7

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v14, :cond_8

    :cond_7
    move-object/from16 v25, v6

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v5, 0x3

    goto/16 :goto_8

    .line 90
    :cond_8
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v14, :cond_9

    const/16 v10, 0x9

    .line 91
    invoke-interface {v7, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    const/16 v10, 0x37

    const/4 v14, 0x2

    .line 92
    invoke-virtual {v9, v4, v14}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    move-result v4

    invoke-interface {v7, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    :goto_6
    move-object/from16 v25, v6

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    goto/16 :goto_9

    .line 93
    :cond_9
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v14, :cond_a

    const/16 v10, 0xb

    .line 94
    invoke-interface {v7, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    const/16 v10, 0x38

    .line 95
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v4

    invoke-interface {v7, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_6

    .line 96
    :cond_a
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v14, :cond_b

    const/16 v10, 0xe

    .line 97
    invoke-interface {v7, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    const/16 v10, 0x39

    const/4 v14, 0x2

    .line 98
    invoke-virtual {v9, v4, v14}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    move-result v4

    invoke-interface {v7, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_6

    .line 99
    :cond_b
    const-class v14, Ljava/lang/String;

    if-ne v10, v14, :cond_c

    .line 100
    new-instance v14, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 101
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    move-object/from16 v22, v12

    .line 102
    const-string v12, "initStringFieldAsEmpty"

    invoke-virtual {v9, v12}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v23, v13

    const/16 v13, 0x15

    invoke-interface {v7, v13, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v12, 0x99

    .line 103
    invoke-interface {v7, v12, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 104
    invoke-direct {v8, v7, v9, v0}, Lb5/a;->u(Lcom/alibaba/fastjson/asm/h;Lb5/a$a;I)V

    .line 105
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x19

    invoke-interface {v7, v13, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 106
    sget-object v12, Lb5/a;->d:Ljava/lang/String;

    const-string v13, "stringDefaultValue"

    move-object/from16 v24, v11

    const-string v11, "()Ljava/lang/String;"

    move-object/from16 v25, v6

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v12, v13, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xa7

    .line 107
    invoke-interface {v7, v6, v14}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 108
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    const/4 v5, 0x1

    .line 109
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 110
    invoke-interface {v7, v14}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto :goto_7

    :cond_c
    move-object/from16 v25, v6

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v5, 0x1

    .line 111
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    :goto_7
    const/16 v5, 0xc0

    .line 112
    invoke-static {v10}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 113
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v4

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_9

    .line 114
    :goto_8
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 115
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v4

    const/16 v5, 0x36

    invoke-interface {v7, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v11, v24

    move-object/from16 v6, v25

    const/16 v5, 0x36

    goto/16 :goto_5

    :cond_d
    move-object/from16 v25, v6

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v3, :cond_28

    .line 116
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    move-result-object v0

    aget-object v4, v0, v10

    .line 117
    iget-object v5, v4, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 118
    iget-object v0, v4, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 119
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 120
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v12, "[C"

    if-ne v5, v11, :cond_e

    .line 121
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 122
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 123
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v5, "scanFieldBoolean"

    const-string v11, "([C)Z"

    const/16 v12, 0xb6

    invoke-interface {v7, v12, v0, v5, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v4, 0x36

    invoke-interface {v7, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    :goto_b
    move/from16 v27, v3

    move-object/from16 v28, v6

    :goto_c
    move-object/from16 v6, v25

    const/4 v11, 0x2

    :goto_d
    const/16 v13, 0xb6

    const/16 v14, 0x3a

    goto/16 :goto_11

    .line 126
    :cond_e
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v13, "([C)I"

    const-string v14, "scanFieldInt"

    if-ne v5, v11, :cond_f

    .line 127
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 128
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 129
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const/16 v5, 0xb6

    invoke-interface {v7, v5, v0, v14, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v4, 0x36

    invoke-interface {v7, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_b

    .line 132
    :cond_f
    const-class v11, Ljava/lang/Byte;

    const/16 v26, 0x5

    move/from16 v27, v3

    const-string v3, "valueOf"

    move-object/from16 v28, v6

    const/16 v6, 0xb8

    if-ne v5, v11, :cond_10

    .line 133
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 134
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 135
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const/16 v5, 0xb6

    invoke-interface {v7, v5, v0, v14, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v5, "java/lang/Byte"

    const-string v11, "(B)Ljava/lang/Byte;"

    invoke-interface {v7, v6, v5, v3, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 139
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 140
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v6

    const/16 v11, 0x19

    invoke-interface {v7, v11, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v6, 0xb4

    .line 141
    invoke-interface {v7, v6, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 143
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 144
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 145
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 146
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_c

    .line 147
    :cond_10
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v11, :cond_11

    .line 148
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 149
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 150
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const/16 v3, 0xb6

    invoke-interface {v7, v3, v0, v14, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x36

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_c

    .line 153
    :cond_11
    const-class v11, Ljava/lang/Short;

    if-ne v5, v11, :cond_12

    .line 154
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 155
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 156
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const/16 v5, 0xb6

    invoke-interface {v7, v5, v0, v14, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "java/lang/Short"

    const-string v11, "(S)Ljava/lang/Short;"

    invoke-interface {v7, v6, v5, v3, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 160
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 161
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v6

    const/16 v11, 0x19

    invoke-interface {v7, v11, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v6, 0xb4

    .line 162
    invoke-interface {v7, v6, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 164
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 165
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 166
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 167
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_c

    .line 168
    :cond_12
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v11, :cond_13

    .line 169
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 170
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 171
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const/16 v3, 0xb6

    invoke-interface {v7, v3, v0, v14, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x36

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_c

    .line 174
    :cond_13
    const-class v11, Ljava/lang/Integer;

    if-ne v5, v11, :cond_14

    .line 175
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 176
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 177
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const/16 v5, 0xb6

    invoke-interface {v7, v5, v0, v14, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v5, "java/lang/Integer"

    const-string v11, "(I)Ljava/lang/Integer;"

    invoke-interface {v7, v6, v5, v3, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 181
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 182
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v6

    const/16 v11, 0x19

    invoke-interface {v7, v11, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v6, 0xb4

    .line 183
    invoke-interface {v7, v6, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 185
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 186
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 187
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 188
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_c

    .line 189
    :cond_14
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v11, :cond_15

    .line 190
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 191
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 192
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldLong"

    const-string v5, "([C)J"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x37

    const/4 v3, 0x2

    .line 194
    invoke-virtual {v9, v4, v3}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    move-result v4

    invoke-interface {v7, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_c

    .line 195
    :cond_15
    const-class v11, Ljava/lang/Long;

    if-ne v5, v11, :cond_16

    .line 196
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 197
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 198
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v5, "scanFieldLong"

    const-string v11, "([C)J"

    const/16 v12, 0xb6

    invoke-interface {v7, v12, v0, v5, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v5, "java/lang/Long"

    const-string v11, "(J)Ljava/lang/Long;"

    invoke-interface {v7, v6, v5, v3, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 202
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 203
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v6

    const/16 v11, 0x19

    invoke-interface {v7, v11, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v6, 0xb4

    .line 204
    invoke-interface {v7, v6, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 206
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 207
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 208
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 209
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_c

    .line 210
    :cond_16
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v11, :cond_17

    .line 211
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 212
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 213
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldFloat"

    const-string v5, "([C)F"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 215
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v3

    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_c

    .line 216
    :cond_17
    const-class v11, Ljava/lang/Float;

    if-ne v5, v11, :cond_18

    .line 217
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 218
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 219
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v5, "scanFieldFloat"

    const-string v11, "([C)F"

    const/16 v12, 0xb6

    invoke-interface {v7, v12, v0, v5, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v5, "java/lang/Float"

    const-string v11, "(F)Ljava/lang/Float;"

    invoke-interface {v7, v6, v5, v3, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 223
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 224
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v6

    const/16 v11, 0x19

    invoke-interface {v7, v11, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v6, 0xb4

    .line 225
    invoke-interface {v7, v6, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 227
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 228
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 229
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 230
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_c

    .line 231
    :cond_18
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v11, :cond_19

    .line 232
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 233
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 234
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldDouble"

    const-string v5, "([C)D"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x39

    const/4 v11, 0x2

    .line 236
    invoke-virtual {v9, v4, v11}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    move-result v3

    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    :goto_e
    move-object/from16 v6, v25

    goto/16 :goto_d

    :cond_19
    const/4 v11, 0x2

    .line 237
    const-class v13, Ljava/lang/Double;

    if-ne v5, v13, :cond_1a

    .line 238
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x19

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 239
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 240
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0xb4

    invoke-interface {v7, v13, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v5, "scanFieldDouble"

    const-string v12, "([C)D"

    const/16 v13, 0xb6

    invoke-interface {v7, v13, v0, v5, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v5, "java/lang/Double"

    const-string v12, "(D)Ljava/lang/Double;"

    invoke-interface {v7, v6, v5, v3, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 244
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 245
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v6

    const/16 v12, 0x19

    invoke-interface {v7, v12, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v6, 0xb4

    .line 246
    invoke-interface {v7, v6, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 248
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 249
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 250
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 251
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto :goto_e

    .line 252
    :cond_1a
    const-class v3, Ljava/lang/String;

    if-ne v5, v3, :cond_1b

    .line 253
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 254
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 255
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldString"

    const-string v5, "([C)Ljava/lang/String;"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    :goto_f
    move v14, v3

    move-object/from16 v6, v25

    :goto_10
    const/16 v13, 0xb6

    goto/16 :goto_11

    .line 258
    :cond_1b
    const-class v3, Ljava/util/Date;

    if-ne v5, v3, :cond_1c

    .line 259
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 260
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 261
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldDate"

    const-string v5, "([C)Ljava/util/Date;"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_f

    .line 264
    :cond_1c
    const-class v3, Ljava/util/UUID;

    if-ne v5, v3, :cond_1d

    .line 265
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 266
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 267
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldUUID"

    const-string v5, "([C)Ljava/util/UUID;"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_f

    .line 270
    :cond_1d
    const-class v3, Ljava/math/BigDecimal;

    if-ne v5, v3, :cond_1e

    .line 271
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 272
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 273
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldDecimal"

    const-string v5, "([C)Ljava/math/BigDecimal;"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_f

    .line 276
    :cond_1e
    const-class v3, Ljava/math/BigInteger;

    if-ne v5, v3, :cond_1f

    .line 277
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 278
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 279
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldBigInteger"

    const-string v5, "([C)Ljava/math/BigInteger;"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_f

    .line 282
    :cond_1f
    const-class v3, [I

    if-ne v5, v3, :cond_20

    .line 283
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 284
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 285
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldIntArray"

    const-string v5, "([C)[I"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_f

    .line 288
    :cond_20
    const-class v3, [F

    if-ne v5, v3, :cond_21

    .line 289
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 290
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 291
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldFloatArray"

    const-string v5, "([C)[F"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_f

    .line 294
    :cond_21
    const-class v3, [[F

    if-ne v5, v3, :cond_22

    .line 295
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 296
    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 297
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    invoke-interface {v7, v5, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFieldFloatArray2"

    const-string v5, "([C)[[F"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v3, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_f

    .line 300
    :cond_22
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    const/16 v6, 0x19

    .line 301
    invoke-interface {v7, v6, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 302
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 303
    invoke-interface {v7, v6, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 304
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v3, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {v8, v9, v7, v4}, Lb5/a;->l(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 306
    const-class v0, Lb5/o;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v25

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lb5/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";[C"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v12, Lb5/b2;

    .line 307
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")Ljava/lang/Enum;"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    const-string v12, "scanEnum"

    const/16 v13, 0xb6

    invoke-interface {v7, v13, v0, v12, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 309
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 310
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    move v14, v3

    goto/16 :goto_10

    :cond_23
    move-object/from16 v6, v25

    .line 311
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 312
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v13, 0x19

    invoke-interface {v7, v13, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v3, 0x0

    .line 313
    invoke-interface {v7, v13, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 314
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v4}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb4

    invoke-interface {v7, v14, v3, v13, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->S(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    .line 316
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_25

    .line 317
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 318
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "([CLjava/lang/Class;)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Ljava/util/Collection;

    .line 319
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    const-string v5, "scanFieldStringArray"

    const/16 v13, 0xb6

    invoke-interface {v7, v13, v0, v5, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v9, v4}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v14, 0x3a

    invoke-interface {v7, v14, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 322
    :goto_11
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 323
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const/16 v4, 0xb4

    invoke-interface {v7, v4, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    const/16 v12, 0x9e

    .line 325
    invoke-interface {v7, v12, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 326
    invoke-direct {v8, v7, v9, v10}, Lb5/a;->u(Lcom/alibaba/fastjson/asm/h;Lb5/a$a;I)V

    .line 327
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 328
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v3, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 329
    invoke-interface {v7, v4, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x59

    .line 330
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 331
    invoke-virtual {v9, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x36

    invoke-interface {v7, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v3, -0x1

    .line 332
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v3, 0x9f

    move-object/from16 v4, v24

    .line 333
    invoke-interface {v7, v3, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 334
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x19

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v3, 0xb4

    .line 335
    invoke-interface {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x9e

    move-object/from16 v5, v28

    .line 336
    invoke-interface {v7, v3, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 337
    const-string v3, "matchedCount"

    invoke-virtual {v9, v3}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v12, 0x15

    invoke-interface {v7, v12, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v3, 0x4

    .line 338
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    const/16 v12, 0x60

    .line 339
    invoke-interface {v7, v12}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 340
    const-string v12, "matchedCount"

    invoke-virtual {v9, v12}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v12

    const/16 v11, 0x36

    invoke-interface {v7, v11, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 341
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v12

    const/16 v11, 0x19

    invoke-interface {v7, v11, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v12, 0xb4

    .line 342
    invoke-interface {v7, v12, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v13, 0x9f

    move-object/from16 v14, v18

    .line 344
    invoke-interface {v7, v13, v14}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 345
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    add-int/lit8 v5, v27, -0x1

    if-ne v10, v5, :cond_24

    .line 346
    invoke-virtual {v9, v15}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v11, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 347
    invoke-interface {v7, v12, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v13, 0xa0

    .line 349
    invoke-interface {v7, v13, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    :cond_24
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v29, v6

    move v13, v11

    move/from16 v17, v12

    move/from16 v21, v27

    const/16 v11, 0xb6

    const/16 v20, 0x36

    move-object v12, v7

    move-object v7, v4

    goto :goto_12

    :cond_25
    move-object/from16 v14, v18

    const/4 v3, 0x4

    const/16 v13, 0xa0

    const/16 v17, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-object/from16 v1, p2

    move-object/from16 v19, v2

    move-object v2, v7

    move/from16 v20, v3

    move/from16 v21, v27

    move-object/from16 v3, v24

    const/16 v11, 0xb6

    const/16 v13, 0x19

    const/16 v20, 0x36

    move-object/from16 v29, v6

    move-object v6, v12

    move-object v12, v7

    move v7, v10

    .line 350
    invoke-direct/range {v0 .. v7}, Lb5/a;->i(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;Ljava/lang/Class;I)V

    add-int/lit8 v3, v21, -0x1

    move-object/from16 v7, v24

    if-ne v10, v3, :cond_27

    .line 351
    invoke-direct {v8, v9, v12, v7}, Lb5/a;->f(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/f;)V

    goto :goto_12

    :cond_26
    move-object/from16 v19, v2

    move-object/from16 v29, v6

    move-object v12, v7

    move-object/from16 v14, v18

    move-object/from16 v7, v24

    move/from16 v21, v27

    const/16 v11, 0xb6

    const/16 v13, 0x19

    const/16 v17, 0xb4

    const/16 v20, 0x36

    move-object/from16 v18, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v7

    move v6, v10

    .line 352
    invoke-direct/range {v0 .. v6}, Lb5/a;->j(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;I)V

    add-int/lit8 v3, v21, -0x1

    if-ne v10, v3, :cond_27

    .line 353
    invoke-direct {v8, v9, v12, v7}, Lb5/a;->f(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/f;)V

    :cond_27
    :goto_12
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v24, v7

    move-object v7, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v21

    move-object/from16 v25, v29

    move-object/from16 v18, v14

    goto/16 :goto_a

    :cond_28
    move/from16 v21, v3

    move-object v12, v7

    move-object/from16 v14, v18

    move-object/from16 v7, v24

    move-object/from16 v29, v25

    const/16 v11, 0xb6

    const/16 v13, 0x19

    .line 354
    invoke-interface {v12, v14}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 355
    invoke-static/range {p2 .. p2}, Lb5/a$a;->f(Lb5/a$a;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static/range {p2 .. p2}, Lb5/a$a;->f(Lb5/a$a;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 356
    invoke-direct {v8, v9, v12}, Lb5/a;->a(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    :cond_29
    move-object/from16 v0, v23

    .line 357
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 358
    invoke-direct {v8, v9, v12}, Lb5/a;->t(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    .line 359
    const-string v0, "instance"

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 360
    invoke-static/range {p2 .. p2}, Lb5/a$a;->a(Lb5/a$a;)Lcom/alibaba/fastjson/util/h;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a

    .line 361
    invoke-virtual/range {p2 .. p2}, Lb5/a$a;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-interface {v12, v11, v1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/16 v0, 0xb0

    .line 364
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 365
    invoke-interface {v12, v7}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 366
    invoke-direct {v8, v9, v12}, Lb5/a;->a(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    const/4 v0, 0x0

    .line 367
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x1

    .line 368
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x2

    .line 369
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x3

    .line 370
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 371
    const-string v0, "instance"

    invoke-virtual {v9, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x15

    const/4 v1, 0x4

    .line 372
    invoke-interface {v12, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 373
    div-int/lit8 v3, v21, 0x20

    if-eqz v21, :cond_2b

    .line 374
    rem-int/lit8 v0, v21, 0x20

    if-eqz v0, :cond_2b

    add-int/lit8 v3, v3, 0x1

    :cond_2b
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2c

    .line 375
    invoke-interface {v12, v1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    goto :goto_13

    :cond_2c
    const/16 v0, 0x10

    .line 376
    invoke-interface {v12, v0, v3}, Lcom/alibaba/fastjson/asm/h;->g(II)V

    :goto_13
    const/16 v0, 0xbc

    const/16 v2, 0xa

    .line 377
    invoke-interface {v12, v0, v2}, Lcom/alibaba/fastjson/asm/h;->g(II)V

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_2f

    const/16 v2, 0x59

    .line 378
    invoke-interface {v12, v2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    if-nez v0, :cond_2d

    const/4 v2, 0x3

    .line 379
    invoke-interface {v12, v2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    goto :goto_15

    :cond_2d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    .line 380
    invoke-interface {v12, v1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    goto :goto_15

    :cond_2e
    const/16 v2, 0x10

    .line 381
    invoke-interface {v12, v2, v0}, Lcom/alibaba/fastjson/asm/h;->g(II)V

    .line 382
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_asm_flag_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x15

    invoke-interface {v12, v4, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v2, 0x4f

    .line 383
    invoke-interface {v12, v2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 384
    :cond_2f
    const-class v0, Lb5/o;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lb5/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "parseRest"

    invoke-interface {v12, v11, v0, v5, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static/range {p2 .. p2}, Lb5/a$a;->f(Lb5/a$a;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc0

    invoke-interface {v12, v2, v0}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    const/16 v0, 0xb0

    .line 386
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    move-object/from16 v0, v22

    .line 387
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x0

    .line 388
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x1

    .line 389
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x2

    .line 390
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x3

    .line 391
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x15

    .line 392
    invoke-interface {v12, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 393
    const-class v0, Lb5/o;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb7

    const-string v3, "deserialze"

    invoke-interface {v12, v2, v0, v3, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    .line 394
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    const/16 v0, 0xa

    .line 395
    invoke-static/range {p2 .. p2}, Lb5/a$a;->b(Lb5/a$a;)I

    move-result v1

    invoke-interface {v12, v0, v1}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 396
    invoke-interface {v12}, Lcom/alibaba/fastjson/asm/h;->k()V

    return-void
.end method

.method private h(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1
    new-instance v15, Lcom/alibaba/fastjson/asm/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lb5/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x1

    const-string v11, "deserialzeArrayMapping"

    move-object v8, v15

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-direct {v6, v7, v15}, Lb5/a;->w(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    .line 3
    const-string v8, "lexer"

    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v9, 0x19

    invoke-interface {v15, v9, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 4
    invoke-interface {v15, v9, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, La5/i;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0xb6

    const-string v2, "getSymbolTable"

    invoke-interface {v15, v11, v1, v2, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, La5/i;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")Ljava/lang/String;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scanTypeName"

    invoke-interface {v15, v11, v0, v3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v0, "typeName"

    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v12, 0x3a

    invoke-interface {v15, v12, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 9
    const-string v2, "typeName"

    invoke-virtual {v7, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v9, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v2, 0xc6

    .line 10
    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 11
    invoke-interface {v15, v9, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, La5/h;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getConfig"

    invoke-interface {v15, v11, v1, v3, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 13
    invoke-interface {v15, v9, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 14
    const-class v14, Lb5/o;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/util/h;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb4

    const-string v4, "beanInfo"

    invoke-interface {v15, v5, v2, v4, v3}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v2, "typeName"

    invoke-virtual {v7, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v9, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 16
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, La5/h;

    .line 17
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/alibaba/fastjson/util/h;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ljava/lang/String;)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb8

    .line 18
    const-string v13, "getSeeAlso"

    invoke-interface {v15, v4, v2, v13, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v2, "userTypeDeser"

    invoke-virtual {v7, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v12, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 20
    const-string v2, "userTypeDeser"

    invoke-virtual {v7, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v9, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v2, 0xc1

    .line 21
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    const/16 v2, 0x99

    .line 22
    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 23
    const-string v2, "userTypeDeser"

    invoke-virtual {v7, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v9, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 24
    invoke-interface {v15, v9, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v2, 0x2

    .line 25
    invoke-interface {v15, v9, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v2, 0x3

    .line 26
    invoke-interface {v15, v9, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v2, 0x4

    .line 27
    invoke-interface {v15, v9, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 28
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(L"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    const-string v3, "deserialzeArrayMapping"

    invoke-interface {v15, v11, v2, v3, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb0

    .line 30
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 31
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 32
    invoke-direct {v6, v7, v15}, Lb5/a;->c(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    .line 33
    invoke-static/range {p2 .. p2}, Lb5/a$a;->a(Lb5/a$a;)Lcom/alibaba/fastjson/util/h;

    move-result-object v0

    iget-object v13, v0, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    .line 34
    array-length v3, v13

    const/4 v2, 0x0

    .line 35
    :goto_0
    const-string v0, "ch"

    const-string v1, "(I)V"

    const-string v10, "()C"

    if-ge v2, v3, :cond_1c

    add-int/lit8 v12, v3, -0x1

    if-ne v2, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_1

    const/16 v19, 0x5d

    :goto_2
    move/from16 v4, v19

    goto :goto_3

    :cond_1
    const/16 v19, 0x2c

    goto :goto_2

    .line 36
    :goto_3
    aget-object v11, v13, v2

    .line 37
    iget-object v5, v11, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 38
    iget-object v9, v11, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    move/from16 v20, v3

    .line 39
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v21, v13

    const-string v13, "scanInt"

    if-eq v5, v3, :cond_2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v5, v3, :cond_2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_3

    :cond_2
    move/from16 v16, v2

    move-object v12, v13

    move-object/from16 v25, v14

    move/from16 v17, v20

    const/16 v9, 0xb8

    const/16 v10, 0x10

    const/16 v13, 0x3a

    const/4 v14, 0x1

    const/16 v18, 0xb4

    goto/16 :goto_10

    .line 40
    :cond_3
    const-class v3, Ljava/lang/Byte;

    move/from16 v22, v12

    const-string v12, "I"

    move-object/from16 v23, v1

    const-string v1, "matchStat"

    move/from16 v24, v2

    const-string v2, "valueOf"

    if-ne v5, v3, :cond_4

    .line 41
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 42
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 43
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "(C)I"

    const/16 v4, 0xb6

    invoke-interface {v15, v4, v0, v13, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "java/lang/Byte"

    const-string v4, "(B)Ljava/lang/Byte;"

    const/16 v5, 0xb8

    invoke-interface {v15, v5, v3, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 46
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 47
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x19

    invoke-interface {v15, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v4, 0xb4

    .line 48
    invoke-interface {v15, v4, v0, v1, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 50
    invoke-interface {v15, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 51
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 52
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 53
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    :goto_4
    move-object/from16 v25, v14

    move/from16 v17, v20

    move/from16 v16, v24

    const/16 v9, 0xb8

    :goto_5
    const/16 v13, 0x3a

    :goto_6
    const/4 v14, 0x1

    :goto_7
    const/16 v18, 0xb4

    goto/16 :goto_11

    .line 54
    :cond_4
    const-class v3, Ljava/lang/Short;

    if-ne v5, v3, :cond_5

    .line 55
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 56
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 57
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "(C)I"

    const/16 v4, 0xb6

    invoke-interface {v15, v4, v0, v13, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "java/lang/Short"

    const-string v4, "(S)Ljava/lang/Short;"

    const/16 v5, 0xb8

    invoke-interface {v15, v5, v3, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 60
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 61
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x19

    invoke-interface {v15, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v4, 0xb4

    .line 62
    invoke-interface {v15, v4, v0, v1, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 64
    invoke-interface {v15, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 65
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 66
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 67
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto :goto_4

    .line 68
    :cond_5
    const-class v3, Ljava/lang/Integer;

    if-ne v5, v3, :cond_6

    .line 69
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 70
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 71
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "(C)I"

    const/16 v4, 0xb6

    invoke-interface {v15, v4, v0, v13, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "java/lang/Integer"

    const-string v4, "(I)Ljava/lang/Integer;"

    const/16 v5, 0xb8

    invoke-interface {v15, v5, v3, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 74
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 75
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x19

    invoke-interface {v15, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v4, 0xb4

    .line 76
    invoke-interface {v15, v4, v0, v1, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 78
    invoke-interface {v15, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 79
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 80
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 81
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_4

    .line 82
    :cond_6
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_7

    .line 83
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 84
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 85
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanLong"

    const-string v2, "(C)J"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 86
    invoke-virtual {v7, v11, v0}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    move-result v0

    const/16 v1, 0x37

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_4

    .line 87
    :cond_7
    const-class v3, Ljava/lang/Long;

    if-ne v5, v3, :cond_8

    .line 88
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 89
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 90
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanLong"

    const-string v4, "(C)J"

    const/16 v5, 0xb6

    invoke-interface {v15, v5, v0, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "java/lang/Long"

    const-string v4, "(J)Ljava/lang/Long;"

    const/16 v5, 0xb8

    invoke-interface {v15, v5, v3, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 93
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 94
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x19

    invoke-interface {v15, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v4, 0xb4

    .line 95
    invoke-interface {v15, v4, v0, v1, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 97
    invoke-interface {v15, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 98
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 99
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 100
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_4

    .line 101
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_9

    .line 102
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 103
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 104
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanBoolean"

    const-string v2, "(C)Z"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_4

    .line 106
    :cond_9
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_a

    .line 107
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 108
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 109
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanFloat"

    const-string v2, "(C)F"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 110
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_4

    .line 111
    :cond_a
    const-class v3, Ljava/lang/Float;

    if-ne v5, v3, :cond_b

    .line 112
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 113
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 114
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanFloat"

    const-string v4, "(C)F"

    const/16 v5, 0xb6

    invoke-interface {v15, v5, v0, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "java/lang/Float"

    const-string v4, "(F)Ljava/lang/Float;"

    const/16 v5, 0xb8

    invoke-interface {v15, v5, v3, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 117
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 118
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x19

    invoke-interface {v15, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v4, 0xb4

    .line 119
    invoke-interface {v15, v4, v0, v1, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 121
    invoke-interface {v15, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 122
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 123
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 124
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_4

    .line 125
    :cond_b
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_c

    .line 126
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 127
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 128
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanDouble"

    const-string v2, "(C)D"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 129
    invoke-virtual {v7, v11, v0}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    move-result v0

    const/16 v1, 0x39

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_4

    .line 130
    :cond_c
    const-class v3, Ljava/lang/Double;

    if-ne v5, v3, :cond_d

    .line 131
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 132
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 133
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanDouble"

    const-string v4, "(C)D"

    const/16 v5, 0xb6

    invoke-interface {v15, v5, v0, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "java/lang/Double"

    const-string v4, "(D)Ljava/lang/Double;"

    const/16 v5, 0xb8

    invoke-interface {v15, v5, v3, v2, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 136
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 137
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x19

    invoke-interface {v15, v5, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v4, 0xb4

    .line 138
    invoke-interface {v15, v4, v0, v1, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 140
    invoke-interface {v15, v0, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 141
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 142
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 143
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto/16 :goto_4

    .line 144
    :cond_d
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_e

    .line 145
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 146
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 147
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v2, "(C)Ljava/lang/String;"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 148
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 149
    const-string v0, "charAt"

    const-string v1, "(I)C"

    const-string v2, "java/lang/String"

    invoke-interface {v15, v3, v2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto/16 :goto_4

    .line 151
    :cond_e
    const-class v3, Ljava/lang/String;

    if-ne v5, v3, :cond_f

    .line 152
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 153
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 154
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v2, "(C)Ljava/lang/String;"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    :goto_8
    move v13, v1

    move-object/from16 v25, v14

    :goto_9
    move/from16 v17, v20

    move/from16 v16, v24

    const/16 v9, 0xb8

    goto/16 :goto_6

    .line 156
    :cond_f
    const-class v3, Ljava/math/BigDecimal;

    if-ne v5, v3, :cond_10

    .line 157
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 158
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 159
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanDecimal"

    const-string v2, "(C)Ljava/math/BigDecimal;"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_8

    .line 161
    :cond_10
    const-class v3, Ljava/util/Date;

    if-ne v5, v3, :cond_11

    .line 162
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 163
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 164
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanDate"

    const-string v2, "(C)Ljava/util/Date;"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_8

    .line 166
    :cond_11
    const-class v3, Ljava/util/UUID;

    if-ne v5, v3, :cond_12

    .line 167
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 168
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 169
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "scanUUID"

    const-string v2, "(C)Ljava/util/UUID;"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    goto :goto_8

    .line 171
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 172
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 173
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 174
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 175
    new-instance v12, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    move-object/from16 v25, v14

    .line 176
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v26, v2

    const/16 v2, 0x19

    invoke-interface {v15, v2, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 177
    sget-object v2, Lb5/a;->d:Ljava/lang/String;

    const-string v14, "getCurrent"

    move-object/from16 v27, v13

    const/16 v13, 0xb6

    invoke-interface {v15, v13, v2, v14, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x59

    .line 178
    invoke-interface {v15, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 179
    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v10

    const/16 v13, 0x36

    invoke-interface {v15, v13, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v10, 0x6e

    .line 180
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v10, 0x9f

    .line 181
    invoke-interface {v15, v10, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 182
    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v10

    const/16 v13, 0x15

    invoke-interface {v15, v13, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v10, 0x22

    .line 183
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v10, 0xa0

    .line 184
    invoke-interface {v15, v10, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 185
    invoke-interface {v15, v12}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 186
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x19

    invoke-interface {v15, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 187
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    move-result-object v10

    invoke-interface {v15, v10}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/4 v10, 0x1

    .line 188
    invoke-interface {v15, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 189
    sget-object v10, Lb5/a;->c:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, La5/i;

    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "getSymbolTable"

    const/16 v14, 0xb6

    invoke-interface {v15, v14, v10, v13, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x10

    .line 190
    invoke-interface {v15, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(Ljava/lang/Class;"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v12, La5/i;

    .line 192
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "C)Ljava/lang/Enum;"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 193
    const-string v12, "scanEnum"

    const/16 v13, 0xb6

    invoke-interface {v15, v13, v2, v12, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xa7

    .line 194
    invoke-interface {v15, v10, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 195
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 196
    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v1

    const/16 v10, 0x15

    invoke-interface {v15, v10, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v1, 0x30

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v1, 0xa1

    .line 198
    invoke-interface {v15, v1, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 199
    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v10, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x39

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa3

    .line 201
    invoke-interface {v15, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 202
    invoke-direct {v6, v7, v15, v11}, Lb5/a;->l(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 203
    const-class v0, Lb5/h;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 204
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 205
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 206
    const-string v0, "(C)I"

    move-object/from16 v12, v27

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v2, v12, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-class v0, Lb5/h;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "(I)Ljava/lang/Enum;"

    move-object/from16 v13, v26

    invoke-interface {v15, v10, v0, v13, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    .line 208
    invoke-interface {v15, v0, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 209
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x0

    .line 210
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 211
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 212
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 213
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";C)Ljava/lang/Enum;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanEnum"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-interface {v15, v9}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    const/16 v0, 0xc0

    .line 215
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 216
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    move v13, v1

    goto/16 :goto_9

    :cond_13
    move-object/from16 v25, v14

    .line 217
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 218
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->S(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 219
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_16

    .line 220
    const-class v0, Ljava/util/List;

    if-eq v5, v0, :cond_15

    const-class v0, Ljava/util/Collections;

    if-eq v5, v0, :cond_15

    const-class v0, Ljava/util/ArrayList;

    if-ne v5, v0, :cond_14

    goto :goto_a

    .line 221
    :cond_14
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 222
    const-class v0, Lcom/alibaba/fastjson/util/TypeUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "createCollection"

    const-string v3, "(Ljava/lang/Class;)Ljava/util/Collection;"

    const/16 v5, 0xb8

    invoke-interface {v15, v5, v0, v2, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 223
    :cond_15
    :goto_a
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbb

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 224
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 225
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<init>"

    const-string v3, "()V"

    const/16 v5, 0xb7

    invoke-interface {v15, v5, v0, v2, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_b
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 227
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 228
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x10

    .line 229
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 230
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "scanStringArray"

    const-string v4, "(Ljava/util/Collection;C)V"

    const/16 v5, 0xb6

    invoke-interface {v15, v5, v0, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 232
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v2, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v9, 0xb4

    .line 233
    invoke-interface {v15, v9, v0, v1, v12}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 235
    invoke-interface {v15, v0, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x1

    .line 236
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 237
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 238
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    move/from16 v2, v24

    const/16 v9, 0xb8

    goto/16 :goto_d

    :cond_16
    const/16 v9, 0xb4

    .line 239
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 240
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 241
    sget-object v2, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "token"

    const-string v4, "()I"

    const/16 v12, 0xb6

    invoke-interface {v15, v12, v2, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v3, "token"

    invoke-virtual {v7, v3}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x36

    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 243
    const-string v3, "token"

    invoke-virtual {v7, v3}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    if-nez v24, :cond_17

    const/16 v3, 0xe

    goto :goto_c

    :cond_17
    const/16 v3, 0x10

    .line 244
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v4, 0x9f

    .line 245
    invoke-interface {v15, v4, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/16 v4, 0x19

    const/4 v12, 0x1

    .line 246
    invoke-interface {v15, v4, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 248
    sget-object v3, Lb5/a;->c:Ljava/lang/String;

    const-string v4, "throwException"

    move-object/from16 v13, v23

    const/16 v12, 0xb6

    invoke-interface {v15, v12, v3, v4, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 250
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 251
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v14

    const/16 v9, 0x19

    invoke-interface {v15, v9, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 252
    const-string v14, "getCurrent"

    invoke-interface {v15, v12, v2, v14, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x5b

    const/16 v12, 0x10

    .line 253
    invoke-interface {v15, v12, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v12, 0xa0

    .line 254
    invoke-interface {v15, v12, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 255
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v15, v9, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 256
    const-string v12, "next"

    const/16 v14, 0xb6

    invoke-interface {v15, v14, v2, v12, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x57

    .line 257
    invoke-interface {v15, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 258
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v15, v9, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v10, 0xe

    .line 259
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 260
    const-string v10, "setToken"

    invoke-interface {v15, v14, v2, v10, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xa7

    .line 261
    invoke-interface {v15, v10, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 262
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 263
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v1, 0xe

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 265
    const-string v1, "nextToken"

    invoke-interface {v15, v14, v2, v1, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    move/from16 v2, v24

    const/4 v1, 0x0

    .line 267
    invoke-direct {v6, v15, v5, v2, v1}, Lb5/a;->p(Lcom/alibaba/fastjson/asm/h;Ljava/lang/Class;IZ)V

    const/16 v1, 0x59

    .line 268
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 269
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v1

    const/16 v4, 0x3a

    invoke-interface {v15, v4, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 270
    invoke-direct {v6, v7, v15, v11, v0}, Lb5/a;->k(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;)V

    const/16 v1, 0x19

    const/4 v4, 0x1

    .line 271
    invoke-interface {v15, v1, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 272
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 273
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 274
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/util/Collection;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lb5/b2;

    .line 275
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "L"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v3, "parseArray"

    const/16 v9, 0xb8

    invoke-interface {v15, v9, v0, v3, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    move/from16 v16, v2

    move/from16 v17, v20

    goto/16 :goto_5

    :cond_18
    move-object/from16 v13, v23

    move/from16 v2, v24

    const/16 v9, 0xb8

    .line 277
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 278
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0xe

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 280
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "nextToken"

    const/16 v4, 0xb6

    invoke-interface {v15, v4, v0, v3, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 281
    invoke-interface {v15, v1, v14}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/4 v0, 0x0

    .line 282
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 284
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFieldType"

    const-string v3, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {v15, v4, v0, v1, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lb5/a;->c:Ljava/lang/String;

    const-string v1, "parseObject"

    const-string v3, "(Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-interface {v15, v4, v0, v1, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 286
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 287
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    move v13, v1

    move/from16 v16, v2

    move/from16 v17, v20

    goto/16 :goto_7

    :cond_19
    const/4 v14, 0x1

    .line 288
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 289
    new-instance v12, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 290
    const-class v1, Ljava/util/Date;

    if-ne v5, v1, :cond_1a

    .line 291
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x19

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 292
    sget-object v1, Lb5/a;->d:Ljava/lang/String;

    const-string v3, "getCurrent"

    const/16 v13, 0xb6

    invoke-interface {v15, v13, v1, v3, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x31

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v3, 0xa0

    .line 294
    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 295
    const-class v3, Ljava/util/Date;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0xbb

    invoke-interface {v15, v10, v3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    const/16 v3, 0x59

    .line 296
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 297
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v3

    const/16 v10, 0x19

    invoke-interface {v15, v10, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v10, 0x10

    .line 298
    invoke-interface {v15, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 299
    const-string v3, "scanLong"

    const-string v4, "(C)J"

    const/16 v13, 0xb6

    invoke-interface {v15, v13, v1, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "<init>"

    const-string v4, "(J)V"

    const/16 v13, 0xb7

    invoke-interface {v15, v13, v1, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v1

    const/16 v13, 0x3a

    invoke-interface {v15, v13, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v1, 0xa7

    .line 302
    invoke-interface {v15, v1, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    goto :goto_e

    :cond_1a
    const/16 v10, 0x10

    const/16 v13, 0x3a

    .line 303
    :goto_e
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    const/16 v0, 0xe

    .line 304
    invoke-direct {v6, v7, v15, v0}, Lb5/a;->q(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v16, v2

    move-object v2, v15

    move/from16 v17, v20

    move-object v3, v11

    move-object v4, v5

    const/16 v18, 0xb4

    move/from16 v5, v16

    .line 305
    invoke-direct/range {v0 .. v5}, Lb5/a;->e(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;I)V

    .line 306
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 307
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v2, "token"

    const-string v3, "()I"

    const/16 v4, 0xb6

    invoke-interface {v15, v4, v0, v2, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    .line 309
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    const/4 v0, 0x0

    .line 310
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 311
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    if-nez v22, :cond_1b

    .line 312
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    goto :goto_f

    :cond_1b
    const/16 v0, 0xf

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 314
    :goto_f
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, La5/b;

    .line 315
    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "I)V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb7

    .line 316
    const-string v3, "check"

    invoke-interface {v15, v2, v0, v3, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-interface {v15, v12}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    goto :goto_11

    .line 318
    :goto_10
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 319
    invoke-interface {v15, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 320
    sget-object v0, Lb5/a;->d:Ljava/lang/String;

    const-string v1, "(C)I"

    const/16 v2, 0xb6

    invoke-interface {v15, v2, v0, v12, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v7, v11}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    :goto_11
    add-int/lit8 v2, v16, 0x1

    move v4, v9

    move v12, v13

    move v10, v14

    move/from16 v3, v17

    move/from16 v5, v18

    move-object/from16 v13, v21

    move-object/from16 v14, v25

    const/16 v9, 0x19

    const/16 v11, 0xb6

    goto/16 :goto_0

    :cond_1c
    move-object v13, v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 322
    invoke-direct {v6, v7, v15, v2}, Lb5/a;->b(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Z)V

    .line 323
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 324
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 325
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v9

    const/16 v11, 0x19

    invoke-interface {v15, v11, v9}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 326
    sget-object v9, Lb5/a;->d:Ljava/lang/String;

    const-string v11, "getCurrent"

    const/16 v12, 0xb6

    invoke-interface {v15, v12, v9, v11, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x59

    .line 327
    invoke-interface {v15, v11}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 328
    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v11

    const/16 v14, 0x36

    invoke-interface {v15, v14, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v11, 0x2c

    .line 329
    invoke-interface {v15, v3, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v11, 0xa0

    .line 330
    invoke-interface {v15, v11, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 331
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v11

    const/16 v14, 0x19

    invoke-interface {v15, v14, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 332
    const-string v11, "next"

    invoke-interface {v15, v12, v9, v11, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x57

    .line 333
    invoke-interface {v15, v11}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 334
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v15, v14, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 336
    const-string v11, "setToken"

    invoke-interface {v15, v12, v9, v11, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xa7

    .line 337
    invoke-interface {v15, v11, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 338
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 339
    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    const/16 v11, 0x15

    invoke-interface {v15, v11, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v2, 0x5d

    .line 340
    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v2, 0xa0

    .line 341
    invoke-interface {v15, v2, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 342
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    const/16 v11, 0x19

    invoke-interface {v15, v11, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 343
    const-string v2, "next"

    invoke-interface {v15, v12, v9, v2, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x57

    .line 344
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 345
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v11, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v2, 0xf

    .line 346
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 347
    const-string v2, "setToken"

    invoke-interface {v15, v12, v9, v2, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa7

    .line 348
    invoke-interface {v15, v2, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 349
    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 350
    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x15

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x1a

    .line 351
    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0xa0

    .line 352
    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 353
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 354
    const-string v0, "next"

    invoke-interface {v15, v12, v9, v0, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x57

    .line 355
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 356
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0x14

    .line 357
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 358
    const-string v0, "setToken"

    invoke-interface {v15, v12, v9, v0, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    .line 359
    invoke-interface {v15, v0, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 360
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 361
    invoke-virtual {v7, v8}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 363
    const-string v0, "nextToken"

    invoke-interface {v15, v12, v9, v0, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-interface {v15, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 365
    const-string v0, "instance"

    invoke-virtual {v7, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    const/16 v0, 0xb0

    .line 366
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 367
    invoke-static/range {p2 .. p2}, Lb5/a$a;->b(Lb5/a$a;)I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 368
    invoke-interface {v15}, Lcom/alibaba/fastjson/asm/h;->k()V

    return-void
.end method

.method private i(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 18
    .line 19
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v9, Lb5/a;->d:Ljava/lang/String;

    .line 23
    .line 24
    const-string v10, "matchField"

    .line 25
    .line 26
    const-string v11, "([C)Z"

    .line 27
    .line 28
    const/16 v12, 0xb6

    .line 29
    .line 30
    invoke-interface {v2, v12, v9, v10, v11}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/16 v10, 0x99

    .line 34
    .line 35
    invoke-interface {v2, v10, v8}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v2, v1, v7}, Lb5/a;->u(Lcom/alibaba/fastjson/asm/h;Lb5/a$a;I)V

    .line 39
    .line 40
    .line 41
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 42
    .line 43
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v11, "lexer"

    .line 47
    .line 48
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    const/16 v14, 0x19

    .line 53
    .line 54
    invoke-interface {v2, v14, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 55
    .line 56
    .line 57
    const-string v13, "token"

    .line 58
    .line 59
    const-string v15, "()I"

    .line 60
    .line 61
    invoke-interface {v2, v12, v9, v13, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/16 v16, 0x8

    .line 65
    .line 66
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-interface {v2, v12}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const/16 v12, 0xa0

    .line 74
    .line 75
    invoke-interface {v2, v12, v10}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    invoke-interface {v2, v14, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 83
    .line 84
    .line 85
    const/16 v12, 0x10

    .line 86
    .line 87
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-interface {v2, v12}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const-string v12, "nextToken"

    .line 95
    .line 96
    const-string v14, "(I)V"

    .line 97
    .line 98
    const/16 v6, 0xb6

    .line 99
    .line 100
    invoke-interface {v2, v6, v9, v12, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/16 v6, 0xa7

    .line 104
    .line 105
    invoke-interface {v2, v6, v8}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 109
    .line 110
    .line 111
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 112
    .line 113
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 117
    .line 118
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 119
    .line 120
    .line 121
    move-object/from16 v17, v8

    .line 122
    .line 123
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 124
    .line 125
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    const/16 v3, 0x19

    .line 133
    .line 134
    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 135
    .line 136
    .line 137
    const/16 v4, 0xb6

    .line 138
    .line 139
    invoke-interface {v2, v4, v9, v13, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/16 v4, 0x15

    .line 143
    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    const/16 v3, 0xa0

    .line 152
    .line 153
    invoke-interface {v2, v3, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    const/16 v4, 0x19

    .line 161
    .line 162
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 163
    .line 164
    .line 165
    const/16 v3, 0xe

    .line 166
    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    const/16 v3, 0xb6

    .line 175
    .line 176
    invoke-interface {v2, v3, v9, v12, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const/4 v3, 0x1

    .line 180
    invoke-direct {v0, v2, v5, v7, v3}, Lb5/a;->p(Lcom/alibaba/fastjson/asm/h;Ljava/lang/Class;IZ)V

    .line 181
    .line 182
    .line 183
    const/16 v3, 0xa7

    .line 184
    .line 185
    invoke-interface {v2, v3, v10}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 196
    .line 197
    .line 198
    const/16 v3, 0xb6

    .line 199
    .line 200
    invoke-interface {v2, v3, v9, v13, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/16 v6, 0xe

    .line 204
    .line 205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    const/16 v6, 0x9f

    .line 213
    .line 214
    invoke-interface {v2, v6, v8}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-interface {v2, v4, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v2, v3, v9, v13, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const/16 v3, 0xc

    .line 228
    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    move-object/from16 v6, p3

    .line 237
    .line 238
    const/16 v3, 0xa0

    .line 239
    .line 240
    invoke-interface {v2, v3, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 241
    .line 242
    .line 243
    const/4 v3, 0x0

    .line 244
    invoke-direct {v0, v2, v5, v7, v3}, Lb5/a;->p(Lcom/alibaba/fastjson/asm/h;Ljava/lang/Class;IZ)V

    .line 245
    .line 246
    .line 247
    move-object/from16 v3, p4

    .line 248
    .line 249
    invoke-virtual {v1, v3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    move-object/from16 v19, v13

    .line 254
    .line 255
    const/16 v13, 0x3a

    .line 256
    .line 257
    invoke-interface {v2, v13, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 258
    .line 259
    .line 260
    move-object/from16 v6, p6

    .line 261
    .line 262
    invoke-direct {v0, v1, v2, v3, v6}, Lb5/a;->k(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v20, v4

    .line 266
    .line 267
    const/4 v4, 0x1

    .line 268
    const/16 v13, 0x19

    .line 269
    .line 270
    invoke-interface {v2, v13, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 271
    .line 272
    .line 273
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {v4}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    const/4 v4, 0x3

    .line 285
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 286
    .line 287
    .line 288
    const-string v4, "valueOf"

    .line 289
    .line 290
    const-string v13, "(I)Ljava/lang/Integer;"

    .line 291
    .line 292
    move-object/from16 v21, v9

    .line 293
    .line 294
    const/16 v9, 0xb8

    .line 295
    .line 296
    move-object/from16 v22, v12

    .line 297
    .line 298
    const-string v12, "java/lang/Integer"

    .line 299
    .line 300
    invoke-interface {v2, v9, v12, v4, v13}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-class v4, Lb5/b2;

    .line 304
    .line 305
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    new-instance v12, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v13, "(L"

    .line 315
    .line 316
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    sget-object v13, Lb5/a;->c:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-object/from16 v23, v13

    .line 325
    .line 326
    const-string v13, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 327
    .line 328
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    const/16 v13, 0xb9

    .line 336
    .line 337
    move-object/from16 v24, v14

    .line 338
    .line 339
    const-string v14, "deserialze"

    .line 340
    .line 341
    invoke-interface {v2, v13, v9, v14, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v9, "list_item_value"

    .line 345
    .line 346
    invoke-virtual {v1, v9}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    move-result v12

    .line 350
    const/16 v14, 0x3a

    .line 351
    .line 352
    invoke-interface {v2, v14, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 356
    .line 357
    .line 358
    move-result v12

    .line 359
    const/16 v14, 0x19

    .line 360
    .line 361
    invoke-interface {v2, v14, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v9}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    invoke-interface {v2, v14, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    .line 372
    .line 373
    .line 374
    move-result v12

    .line 375
    const-string v14, "(Ljava/lang/Object;)Z"

    .line 376
    .line 377
    const-string v13, "add"

    .line 378
    .line 379
    if-eqz v12, :cond_0

    .line 380
    .line 381
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v12

    .line 385
    move-object/from16 v25, v9

    .line 386
    .line 387
    const/16 v9, 0xb9

    .line 388
    .line 389
    invoke-interface {v2, v9, v12, v13, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_0

    .line 393
    :cond_0
    move-object/from16 v25, v9

    .line 394
    .line 395
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    const/16 v12, 0xb6

    .line 400
    .line 401
    invoke-interface {v2, v12, v9, v13, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :goto_0
    const/16 v9, 0x57

    .line 405
    .line 406
    invoke-interface {v2, v9}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 407
    .line 408
    .line 409
    move-object/from16 v12, v17

    .line 410
    .line 411
    const/16 v9, 0xa7

    .line 412
    .line 413
    invoke-interface {v2, v9, v12}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 414
    .line 415
    .line 416
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 417
    .line 418
    .line 419
    const/4 v8, 0x0

    .line 420
    invoke-direct {v0, v2, v5, v7, v8}, Lb5/a;->p(Lcom/alibaba/fastjson/asm/h;Ljava/lang/Class;IZ)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    const/16 v8, 0x3a

    .line 431
    .line 432
    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 433
    .line 434
    .line 435
    iget-object v7, v3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 436
    .line 437
    invoke-static {v7}, La5/h;->w(Ljava/lang/Class;)Z

    .line 438
    .line 439
    .line 440
    move-result v7

    .line 441
    invoke-direct {v0, v1, v2, v3, v6}, Lb5/a;->k(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;)V

    .line 442
    .line 443
    .line 444
    const-string v9, "fastMatchToken"

    .line 445
    .line 446
    if-eqz v7, :cond_1

    .line 447
    .line 448
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v10

    .line 452
    const-string v8, "getFastMatchToken"

    .line 453
    .line 454
    const/16 v5, 0xb9

    .line 455
    .line 456
    invoke-interface {v2, v5, v10, v8, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1, v9}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    const/16 v8, 0x36

    .line 464
    .line 465
    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    const/16 v10, 0x19

    .line 473
    .line 474
    invoke-interface {v2, v10, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v9}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    const/16 v10, 0x15

    .line 482
    .line 483
    invoke-interface {v2, v10, v5}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 484
    .line 485
    .line 486
    move-object/from16 v5, v21

    .line 487
    .line 488
    move-object/from16 v8, v22

    .line 489
    .line 490
    move-object/from16 v6, v24

    .line 491
    .line 492
    const/16 v10, 0xb6

    .line 493
    .line 494
    invoke-interface {v2, v10, v5, v8, v6}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    move-object/from16 v20, v12

    .line 498
    .line 499
    :goto_1
    const/16 v10, 0x19

    .line 500
    .line 501
    const/4 v12, 0x1

    .line 502
    goto :goto_2

    .line 503
    :cond_1
    move-object/from16 v5, v21

    .line 504
    .line 505
    move-object/from16 v8, v22

    .line 506
    .line 507
    move-object/from16 v6, v24

    .line 508
    .line 509
    const/16 v10, 0x57

    .line 510
    .line 511
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 512
    .line 513
    .line 514
    move-object/from16 v10, v20

    .line 515
    .line 516
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v9}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v10

    .line 523
    move-object/from16 v20, v12

    .line 524
    .line 525
    const/16 v12, 0x36

    .line 526
    .line 527
    invoke-interface {v2, v12, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 528
    .line 529
    .line 530
    const/16 v10, 0xc

    .line 531
    .line 532
    invoke-direct {v0, v1, v2, v10}, Lb5/a;->q(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;I)V

    .line 533
    .line 534
    .line 535
    goto :goto_1

    .line 536
    :goto_2
    invoke-interface {v2, v10, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 537
    .line 538
    .line 539
    new-instance v10, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .line 543
    .line 544
    const-string v12, "()"

    .line 545
    .line 546
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-class v12, La5/g;

    .line 550
    .line 551
    invoke-static {v12}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v10

    .line 562
    const-string v12, "getContext"

    .line 563
    .line 564
    move-object/from16 v24, v6

    .line 565
    .line 566
    move-object/from16 v6, v23

    .line 567
    .line 568
    const/16 v0, 0xb6

    .line 569
    .line 570
    invoke-interface {v2, v0, v6, v12, v10}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    const-string v0, "listContext"

    .line 574
    .line 575
    invoke-virtual {v1, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    const/16 v10, 0x3a

    .line 580
    .line 581
    invoke-interface {v2, v10, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 582
    .line 583
    .line 584
    const/16 v0, 0x19

    .line 585
    .line 586
    const/4 v10, 0x1

    .line 587
    invoke-interface {v2, v0, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 591
    .line 592
    .line 593
    move-result v10

    .line 594
    invoke-interface {v2, v0, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 595
    .line 596
    .line 597
    iget-object v0, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 598
    .line 599
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    const-string v10, "(Ljava/lang/Object;Ljava/lang/Object;)"

    .line 608
    .line 609
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-class v10, La5/g;

    .line 613
    .line 614
    invoke-static {v10}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v10

    .line 618
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    const-string v10, "setContext"

    .line 626
    .line 627
    const/16 v12, 0xb6

    .line 628
    .line 629
    invoke-interface {v2, v12, v6, v10, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const/16 v0, 0x57

    .line 633
    .line 634
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 635
    .line 636
    .line 637
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 638
    .line 639
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 640
    .line 641
    .line 642
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 643
    .line 644
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 645
    .line 646
    .line 647
    const/4 v12, 0x3

    .line 648
    invoke-interface {v2, v12}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 649
    .line 650
    .line 651
    const-string v12, "i"

    .line 652
    .line 653
    invoke-virtual {v1, v12}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    move-result v12

    .line 657
    move-object/from16 v22, v8

    .line 658
    .line 659
    const/16 v8, 0x36

    .line 660
    .line 661
    invoke-interface {v2, v8, v12}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 662
    .line 663
    .line 664
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    const/16 v12, 0x19

    .line 672
    .line 673
    invoke-interface {v2, v12, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 674
    .line 675
    .line 676
    move-object/from16 v12, v19

    .line 677
    .line 678
    const/16 v8, 0xb6

    .line 679
    .line 680
    invoke-interface {v2, v8, v5, v12, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    const/16 v8, 0xf

    .line 684
    .line 685
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 690
    .line 691
    .line 692
    const/16 v8, 0x9f

    .line 693
    .line 694
    invoke-interface {v2, v8, v10}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 695
    .line 696
    .line 697
    move-object/from16 p7, v10

    .line 698
    .line 699
    const/16 v8, 0x19

    .line 700
    .line 701
    const/4 v10, 0x0

    .line 702
    invoke-interface {v2, v8, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 703
    .line 704
    .line 705
    invoke-static/range {p1 .. p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v8

    .line 709
    new-instance v10, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .line 713
    .line 714
    move-object/from16 v18, v9

    .line 715
    .line 716
    iget-object v9, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 717
    .line 718
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v9, "_asm_list_item_deser__"

    .line 722
    .line 723
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v9

    .line 730
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v10

    .line 734
    move/from16 v19, v7

    .line 735
    .line 736
    const/16 v7, 0xb4

    .line 737
    .line 738
    invoke-interface {v2, v7, v8, v9, v10}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    const/16 v7, 0x19

    .line 742
    .line 743
    const/4 v8, 0x1

    .line 744
    invoke-interface {v2, v7, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 745
    .line 746
    .line 747
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v7

    .line 751
    invoke-static {v7}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 752
    .line 753
    .line 754
    move-result-object v7

    .line 755
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    const-string v7, "i"

    .line 759
    .line 760
    invoke-virtual {v1, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    move-result v7

    .line 764
    const/16 v8, 0x15

    .line 765
    .line 766
    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 767
    .line 768
    .line 769
    const-string v7, "valueOf"

    .line 770
    .line 771
    const-string v8, "(I)Ljava/lang/Integer;"

    .line 772
    .line 773
    const/16 v9, 0xb8

    .line 774
    .line 775
    const-string v10, "java/lang/Integer"

    .line 776
    .line 777
    invoke-interface {v2, v9, v10, v7, v8}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    new-instance v7, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    .line 789
    const-string v8, "(L"

    .line 790
    .line 791
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    const-string v8, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 798
    .line 799
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    const-string v8, "deserialze"

    .line 807
    .line 808
    const/16 v9, 0xb9

    .line 809
    .line 810
    invoke-interface {v2, v9, v4, v8, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    move-object/from16 v4, v25

    .line 814
    .line 815
    invoke-virtual {v1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 816
    .line 817
    .line 818
    move-result v7

    .line 819
    const/16 v8, 0x3a

    .line 820
    .line 821
    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 822
    .line 823
    .line 824
    const-string v7, "i"

    .line 825
    .line 826
    invoke-virtual {v1, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 827
    .line 828
    .line 829
    move-result v7

    .line 830
    const/4 v8, 0x1

    .line 831
    invoke-interface {v2, v7, v8}, Lcom/alibaba/fastjson/asm/h;->e(II)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1, v3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 835
    .line 836
    .line 837
    move-result v7

    .line 838
    const/16 v8, 0x19

    .line 839
    .line 840
    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    invoke-interface {v2, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 848
    .line 849
    .line 850
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    if-eqz v4, :cond_2

    .line 855
    .line 856
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    const/16 v7, 0xb9

    .line 861
    .line 862
    invoke-interface {v2, v7, v4, v13, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    const/16 v4, 0x57

    .line 866
    .line 867
    const/16 v7, 0xb6

    .line 868
    .line 869
    goto :goto_3

    .line 870
    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    const/16 v7, 0xb6

    .line 875
    .line 876
    invoke-interface {v2, v7, v4, v13, v14}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    const/16 v4, 0x57

    .line 880
    .line 881
    :goto_3
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 882
    .line 883
    .line 884
    const/4 v4, 0x1

    .line 885
    invoke-interface {v2, v8, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v1, v3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 889
    .line 890
    .line 891
    move-result v3

    .line 892
    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 893
    .line 894
    .line 895
    const-string v3, "checkListResolve"

    .line 896
    .line 897
    const-string v4, "(Ljava/util/Collection;)V"

    .line 898
    .line 899
    invoke-interface {v2, v7, v6, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 907
    .line 908
    .line 909
    invoke-interface {v2, v7, v5, v12, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    const/16 v3, 0x10

    .line 913
    .line 914
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 919
    .line 920
    .line 921
    const/16 v3, 0xa0

    .line 922
    .line 923
    invoke-interface {v2, v3, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 924
    .line 925
    .line 926
    if-eqz v19, :cond_3

    .line 927
    .line 928
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 933
    .line 934
    .line 935
    move-object/from16 v3, v18

    .line 936
    .line 937
    invoke-virtual {v1, v3}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    const/16 v4, 0x15

    .line 942
    .line 943
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 944
    .line 945
    .line 946
    move-object/from16 v3, v22

    .line 947
    .line 948
    move-object/from16 v4, v24

    .line 949
    .line 950
    invoke-interface {v2, v7, v5, v3, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    const/16 v4, 0xa7

    .line 954
    .line 955
    move-object/from16 v3, p0

    .line 956
    .line 957
    goto :goto_4

    .line 958
    :cond_3
    const/16 v4, 0xc

    .line 959
    .line 960
    move-object/from16 v3, p0

    .line 961
    .line 962
    invoke-direct {v3, v1, v2, v4}, Lb5/a;->q(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;I)V

    .line 963
    .line 964
    .line 965
    const/16 v4, 0xa7

    .line 966
    .line 967
    :goto_4
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 968
    .line 969
    .line 970
    move-object/from16 v0, p7

    .line 971
    .line 972
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 973
    .line 974
    .line 975
    const/4 v0, 0x1

    .line 976
    invoke-interface {v2, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 977
    .line 978
    .line 979
    const-string v0, "listContext"

    .line 980
    .line 981
    invoke-virtual {v1, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    invoke-interface {v2, v8, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 986
    .line 987
    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    .line 989
    .line 990
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .line 992
    .line 993
    const-string v4, "("

    .line 994
    .line 995
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    const-class v4, La5/g;

    .line 999
    .line 1000
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v4

    .line 1004
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    const-string v4, ")V"

    .line 1008
    .line 1009
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    const-string v4, "setContext"

    .line 1017
    .line 1018
    const/16 v7, 0xb6

    .line 1019
    .line 1020
    invoke-interface {v2, v7, v6, v4, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v1, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 1024
    .line 1025
    .line 1026
    move-result v0

    .line 1027
    const/16 v4, 0x19

    .line 1028
    .line 1029
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 1030
    .line 1031
    .line 1032
    invoke-interface {v2, v7, v5, v12, v15}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    const/16 v0, 0xf

    .line 1036
    .line 1037
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 1042
    .line 1043
    .line 1044
    move-object/from16 v0, p3

    .line 1045
    .line 1046
    const/16 v4, 0xa0

    .line 1047
    .line 1048
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-direct/range {p0 .. p2}, Lb5/a;->r(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V

    .line 1052
    .line 1053
    .line 1054
    move-object/from16 v0, v20

    .line 1055
    .line 1056
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 1057
    .line 1058
    .line 1059
    return-void
.end method

.method private j(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/f;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;I)V
    .locals 16

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 13
    .line 14
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "lexer"

    .line 18
    .line 19
    invoke-virtual {v6, v1}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v10, 0x19

    .line 24
    .line 25
    invoke-interface {v7, v10, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 26
    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    invoke-interface {v7, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 30
    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v6, v8}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "[C"

    .line 41
    .line 42
    const/16 v4, 0xb4

    .line 43
    .line 44
    invoke-interface {v7, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lb5/a;->d:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "matchField"

    .line 50
    .line 51
    const-string v3, "([C)Z"

    .line 52
    .line 53
    const/16 v12, 0xb6

    .line 54
    .line 55
    invoke-interface {v7, v12, v1, v2, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x9a

    .line 59
    .line 60
    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 61
    .line 62
    .line 63
    const/4 v13, 0x1

    .line 64
    invoke-interface {v7, v13}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v8}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/16 v14, 0x3a

    .line 72
    .line 73
    invoke-interface {v7, v14, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xa7

    .line 77
    .line 78
    invoke-interface {v7, v1, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v15, p0

    .line 85
    .line 86
    move/from16 v5, p6

    .line 87
    .line 88
    invoke-direct {v15, v7, v6, v5}, Lb5/a;->u(Lcom/alibaba/fastjson/asm/h;Lb5/a$a;I)V

    .line 89
    .line 90
    .line 91
    const-string v0, "matchedCount"

    .line 92
    .line 93
    invoke-virtual {v6, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/16 v2, 0x15

    .line 98
    .line 99
    invoke-interface {v7, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 100
    .line 101
    .line 102
    const/4 v1, 0x4

    .line 103
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x60

    .line 107
    .line 108
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x36

    .line 112
    .line 113
    invoke-virtual {v6, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 118
    .line 119
    .line 120
    move-object/from16 v0, p0

    .line 121
    .line 122
    move-object/from16 v1, p1

    .line 123
    .line 124
    move-object/from16 v2, p2

    .line 125
    .line 126
    move-object/from16 v3, p4

    .line 127
    .line 128
    move-object/from16 v4, p5

    .line 129
    .line 130
    invoke-direct/range {v0 .. v5}, Lb5/a;->e(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;I)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Lb5/a;->c:Ljava/lang/String;

    .line 137
    .line 138
    const-string v1, "getResolveStatus"

    .line 139
    .line 140
    const-string v2, "()I"

    .line 141
    .line 142
    invoke-interface {v7, v12, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const/16 v1, 0xa0

    .line 153
    .line 154
    invoke-interface {v7, v1, v9}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v2, "()"

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-class v3, La5/a$a;

    .line 171
    .line 172
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v4, "getLastResolveTask"

    .line 184
    .line 185
    invoke-interface {v7, v12, v0, v4, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v1, "resolveTask"

    .line 189
    .line 190
    invoke-virtual {v6, v1}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-interface {v7, v14, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v1}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-interface {v7, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 205
    .line 206
    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-class v2, La5/g;

    .line 216
    .line 217
    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    const-string v5, "getContext"

    .line 229
    .line 230
    invoke-interface {v7, v12, v0, v5, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const-string v5, "ownerContext"

    .line 238
    .line 239
    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    const/16 v14, 0xb5

    .line 244
    .line 245
    invoke-interface {v7, v14, v4, v5, v2}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v1}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-interface {v7, v10, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v7, v10, v11}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v8, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 259
    .line 260
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    const-class v1, Lb5/o;

    .line 264
    .line 265
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v4, "(Ljava/lang/String;)"

    .line 275
    .line 276
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-class v4, Lb5/l;

    .line 280
    .line 281
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    const-string v5, "getFieldDeserializer"

    .line 293
    .line 294
    invoke-interface {v7, v12, v1, v5, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const-string v2, "fieldDeserializer"

    .line 302
    .line 303
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-interface {v7, v14, v1, v2, v3}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 311
    .line 312
    .line 313
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    const-string v1, "setResolveStatus"

    .line 321
    .line 322
    const-string v2, "(I)V"

    .line 323
    .line 324
    invoke-interface {v7, v12, v0, v1, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v7, v9}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method private k(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;Ljava/lang/Class;)V
    .locals 11

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v5, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, "_asm_list_item_deser__"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-class v6, Lb5/b2;

    .line 36
    .line 37
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/16 v8, 0xb4

    .line 42
    .line 43
    invoke-interface {p2, v8, v3, v4, v7}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/16 v3, 0xc7

    .line 47
    .line 48
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 56
    .line 57
    .line 58
    sget-object v3, Lb5/a;->c:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v7, "()"

    .line 66
    .line 67
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-class v7, La5/h;

    .line 71
    .line 72
    invoke-static {v7}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const/16 v9, 0xb6

    .line 84
    .line 85
    const-string v10, "getConfig"

    .line 86
    .line 87
    invoke-interface {p2, v9, v3, v10, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-static {p4}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    invoke-interface {p2, p4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v7}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "(Ljava/lang/reflect/Type;)"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v4, "getDeserializer"

    .line 127
    .line 128
    invoke-interface {p2, v9, p4, v4, v3}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v4, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    const/16 v7, 0xb5

    .line 157
    .line 158
    invoke-interface {p2, v7, p4, v3, v4}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance p4, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    iget-object p3, p3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p4

    .line 192
    invoke-interface {p2, v8, p1, p3, p4}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method private l(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1, p3}, Lb5/a$a;->g(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-class v5, Lb5/b2;

    .line 21
    .line 22
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/16 v7, 0xb4

    .line 27
    .line 28
    invoke-interface {p2, v7, v3, v4, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0xc7

    .line 32
    .line 33
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lb5/a;->c:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v6, "()"

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-class v6, La5/h;

    .line 56
    .line 57
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/16 v8, 0xb6

    .line 69
    .line 70
    const-string v9, "getConfig"

    .line 71
    .line 72
    invoke-interface {p2, v8, v3, v9, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 76
    .line 77
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v3}, Lcom/alibaba/fastjson/asm/j;->g(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v6, "(Ljava/lang/reflect/Type;)"

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v6, "getDeserializer"

    .line 114
    .line 115
    invoke-interface {p2, v8, v3, v6, v4}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p1, p3}, Lb5/a$a;->g(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    const/16 v8, 0xb5

    .line 131
    .line 132
    invoke-interface {p2, v8, v3, v4, v6}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, p3}, Lb5/a$a;->g(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-interface {p2, v7, v0, p1, p3}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private m(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v0, v0

    .line 10
    const/4 v8, 0x0

    .line 11
    move v2, v8

    .line 12
    :goto_0
    const-string v9, "[C"

    .line 13
    .line 14
    const/4 v10, 0x1

    .line 15
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aget-object v3, v3, v2

    .line 22
    .line 23
    new-instance v4, Lcom/alibaba/fastjson/asm/d;

    .line 24
    .line 25
    invoke-virtual {v7, v3}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v4, v1, v10, v3, v9}, Lcom/alibaba/fastjson/asm/d;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/d;->c()V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    array-length v0, v0

    .line 43
    move v2, v8

    .line 44
    :goto_1
    if-ge v2, v0, :cond_3

    .line 45
    .line 46
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    aget-object v3, v3, v2

    .line 51
    .line 52
    iget-object v4, v3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    const-class v5, Ljava/util/Collection;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const-class v5, Lb5/b2;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    new-instance v4, Lcom/alibaba/fastjson/asm/d;

    .line 72
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v3, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, "_asm_list_item_deser__"

    .line 84
    .line 85
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-direct {v4, v1, v10, v3, v5}, Lcom/alibaba/fastjson/asm/d;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/d;->c()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/asm/d;

    .line 104
    .line 105
    invoke-virtual {v7, v3}, Lb5/a$a;->g(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v5}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-direct {v4, v1, v10, v3, v5}, Lcom/alibaba/fastjson/asm/d;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/d;->c()V

    .line 117
    .line 118
    .line 119
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    new-instance v11, Lcom/alibaba/fastjson/asm/i;

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v12, "("

    .line 130
    .line 131
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-class v13, La5/h;

    .line 135
    .line 136
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-class v14, Lcom/alibaba/fastjson/util/h;

    .line 144
    .line 145
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v15, ")V"

    .line 153
    .line 154
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const/4 v5, 0x0

    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v2, 0x1

    .line 164
    const-string v3, "<init>"

    .line 165
    .line 166
    move-object v0, v11

    .line 167
    move-object/from16 v1, p1

    .line 168
    .line 169
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/asm/i;-><init>(Lcom/alibaba/fastjson/asm/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/16 v0, 0x19

    .line 173
    .line 174
    invoke-interface {v11, v0, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v11, v0, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 178
    .line 179
    .line 180
    const/4 v1, 0x2

    .line 181
    invoke-interface {v11, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 182
    .line 183
    .line 184
    const-class v1, Lb5/o;

    .line 185
    .line 186
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-static {v13}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-static {v14}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    const/16 v3, 0xb7

    .line 220
    .line 221
    const-string v4, "<init>"

    .line 222
    .line 223
    invoke-interface {v11, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    array-length v1, v1

    .line 231
    move v2, v8

    .line 232
    :goto_3
    if-ge v2, v1, :cond_4

    .line 233
    .line 234
    invoke-static/range {p2 .. p2}, Lb5/a$a;->c(Lb5/a$a;)[Lcom/alibaba/fastjson/util/d;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    aget-object v3, v3, v2

    .line 239
    .line 240
    invoke-interface {v11, v0, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 241
    .line 242
    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v5, "\""

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget-object v5, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v5, "\":"

    .line 259
    .line 260
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-interface {v11, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    const-string v4, "toCharArray"

    .line 271
    .line 272
    const-string v5, "()[C"

    .line 273
    .line 274
    const/16 v6, 0xb6

    .line 275
    .line 276
    const-string v10, "java/lang/String"

    .line 277
    .line 278
    invoke-interface {v11, v6, v10, v4, v5}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-static/range {p2 .. p2}, Lb5/a$a;->e(Lb5/a$a;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v7, v3}, Lb5/a$a;->h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const/16 v5, 0xb5

    .line 290
    .line 291
    invoke-interface {v11, v5, v4, v3, v9}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    add-int/lit8 v2, v2, 0x1

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_4
    const/16 v0, 0xb1

    .line 298
    .line 299
    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 300
    .line 301
    .line 302
    const/4 v0, 0x4

    .line 303
    invoke-interface {v11, v0, v0}, Lcom/alibaba/fastjson/asm/h;->i(II)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v11}, Lcom/alibaba/fastjson/asm/h;->k()V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method private n(Lcom/alibaba/fastjson/asm/h;Lb5/a$a;ILcom/alibaba/fastjson/asm/f;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_asm_flag_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    div-int/lit8 v1, p3, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/16 v0, 0x15

    .line 25
    .line 26
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    shl-int/2addr p2, p3

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/16 p2, 0x7e

    .line 39
    .line 40
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x99

    .line 44
    .line 45
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private o(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V
    .locals 6

    .line 1
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v1, p3, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 4
    .line 5
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    const/16 v3, 0x15

    .line 8
    .line 9
    const-string v4, "instance"

    .line 10
    .line 11
    const/16 v5, 0x19

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    if-eq v0, v2, :cond_a

    .line 37
    .line 38
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    if-eq v0, v2, :cond_a

    .line 41
    .line 42
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-eq v0, v2, :cond_a

    .line 45
    .line 46
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    if-ne v0, v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x16

    .line 65
    .line 66
    invoke-virtual {p1, p3, v3}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lb5/a$a;->i()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p3, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/16 v2, 0xb6

    .line 98
    .line 99
    invoke-interface {p2, v2, p1, v0, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p3, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 109
    .line 110
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_b

    .line 115
    .line 116
    const/16 p1, 0x57

    .line 117
    .line 118
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_2
    iget-object p1, p3, Lcom/alibaba/fastjson/util/d;->g:Ljava/lang/Class;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object p3, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 136
    .line 137
    invoke-static {p3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    const/16 v1, 0xb5

    .line 142
    .line 143
    invoke-interface {p2, v1, p1, v0, p3}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_3
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 149
    .line 150
    if-ne v0, v2, :cond_4

    .line 151
    .line 152
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 157
    .line 158
    .line 159
    const/16 v0, 0x17

    .line 160
    .line 161
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :cond_4
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 174
    .line 175
    if-ne v0, v2, :cond_5

    .line 176
    .line 177
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 182
    .line 183
    .line 184
    const/16 v0, 0x18

    .line 185
    .line 186
    invoke-virtual {p1, p3, v3}, Lb5/a$a;->n(Lcom/alibaba/fastjson/util/d;I)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_5
    const-class v2, Ljava/lang/String;

    .line 199
    .line 200
    if-ne v0, v2, :cond_6

    .line 201
    .line 202
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_7

    .line 225
    .line 226
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_7
    const-class v3, Ljava/util/Collection;

    .line 245
    .line 246
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_9

    .line 251
    .line 252
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 257
    .line 258
    .line 259
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->S(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    if-ne v1, v2, :cond_8

    .line 264
    .line 265
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 270
    .line 271
    .line 272
    const/16 v1, 0xc0

    .line 273
    .line 274
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_8
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 287
    .line 288
    .line 289
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_9
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 305
    .line 306
    .line 307
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_a
    :goto_1
    invoke-virtual {p1, v4}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, p3}, Lb5/a$a;->m(Lcom/alibaba/fastjson/util/d;)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 323
    .line 324
    .line 325
    invoke-direct {p0, p1, p2, p3}, Lb5/a;->s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V

    .line 326
    .line 327
    .line 328
    :cond_b
    :goto_2
    return-void
.end method

.method private p(Lcom/alibaba/fastjson/asm/h;Ljava/lang/Class;IZ)V
    .locals 8

    .line 1
    const-class v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "()V"

    .line 8
    .line 9
    const-string v2, "<init>"

    .line 10
    .line 11
    const/16 v3, 0xb7

    .line 12
    .line 13
    const/16 v4, 0x59

    .line 14
    .line 15
    const/16 v5, 0xbb

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-nez p4, :cond_0

    .line 20
    .line 21
    const-string p3, "java/util/ArrayList"

    .line 22
    .line 23
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    const-class v0, Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    if-nez p4, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_1
    const-class v0, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const-class v6, Ljava/util/TreeSet;

    .line 90
    .line 91
    invoke-virtual {p2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_3

    .line 96
    .line 97
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    const-class v6, Ljava/util/LinkedHashSet;

    .line 116
    .line 117
    invoke-virtual {p2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_4

    .line 122
    .line 123
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    if-eqz p4, :cond_5

    .line 142
    .line 143
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    const/16 p4, 0x19

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-interface {p1, p4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 165
    .line 166
    .line 167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    const-class p3, Lb5/o;

    .line 175
    .line 176
    invoke-static {p3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    const-string p4, "getFieldType"

    .line 181
    .line 182
    const-string v0, "(I)Ljava/lang/reflect/Type;"

    .line 183
    .line 184
    const/16 v1, 0xb6

    .line 185
    .line 186
    invoke-interface {p1, v1, p3, p4, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-class p3, Lcom/alibaba/fastjson/util/TypeUtils;

    .line 190
    .line 191
    invoke-static {p3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    const-string p4, "createCollection"

    .line 196
    .line 197
    const-string v0, "(Ljava/lang/reflect/Type;)Ljava/util/Collection;"

    .line 198
    .line 199
    const/16 v1, 0xb8

    .line 200
    .line 201
    invoke-interface {p1, v1, p3, p4, v0}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :goto_0
    const/16 p3, 0xc0

    .line 205
    .line 206
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method private q(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;I)V
    .locals 9

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "lexer"

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x19

    .line 18
    .line 19
    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lb5/a;->d:Ljava/lang/String;

    .line 23
    .line 24
    const/16 v5, 0xb6

    .line 25
    .line 26
    const-string v6, "getCurrent"

    .line 27
    .line 28
    const-string v7, "()C"

    .line 29
    .line 30
    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/16 v6, 0xc

    .line 34
    .line 35
    const/16 v8, 0x10

    .line 36
    .line 37
    if-ne p3, v6, :cond_0

    .line 38
    .line 39
    const/16 v6, 0x7b

    .line 40
    .line 41
    invoke-interface {p2, v8, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v6, 0xe

    .line 46
    .line 47
    if-ne p3, v6, :cond_1

    .line 48
    .line 49
    const/16 v6, 0x5b

    .line 50
    .line 51
    invoke-interface {p2, v8, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 52
    .line 53
    .line 54
    :goto_0
    const/16 v6, 0xa0

    .line 55
    .line 56
    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-interface {p2, v4, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 64
    .line 65
    .line 66
    const-string v6, "next"

    .line 67
    .line 68
    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/16 v6, 0x57

    .line 72
    .line 73
    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-interface {p2, v4, v6}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 81
    .line 82
    .line 83
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const-string v6, "setToken"

    .line 91
    .line 92
    const-string v7, "(I)V"

    .line 93
    .line 94
    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 v6, 0xa7

    .line 98
    .line 99
    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-interface {p2, v4, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 110
    .line 111
    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const-string p1, "nextToken"

    .line 120
    .line 121
    invoke-interface {p2, v5, v3, p1, v7}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method private r(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 11
    .line 12
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 21
    .line 22
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 26
    .line 27
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v7, "lexer"

    .line 31
    .line 32
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    const/16 v9, 0x19

    .line 37
    .line 38
    invoke-interface {v1, v9, v8}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 39
    .line 40
    .line 41
    sget-object v8, Lb5/a;->d:Ljava/lang/String;

    .line 42
    .line 43
    const/16 v10, 0xb6

    .line 44
    .line 45
    const-string v11, "getCurrent"

    .line 46
    .line 47
    const-string v12, "()C"

    .line 48
    .line 49
    invoke-interface {v1, v10, v8, v11, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/16 v11, 0x59

    .line 53
    .line 54
    invoke-interface {v1, v11}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 55
    .line 56
    .line 57
    const-string v11, "ch"

    .line 58
    .line 59
    invoke-virtual {v0, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    const/16 v14, 0x36

    .line 64
    .line 65
    invoke-interface {v1, v14, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 66
    .line 67
    .line 68
    const/16 v13, 0x2c

    .line 69
    .line 70
    const/16 v14, 0x10

    .line 71
    .line 72
    invoke-interface {v1, v14, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 73
    .line 74
    .line 75
    const/16 v13, 0xa0

    .line 76
    .line 77
    invoke-interface {v1, v13, v3}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    invoke-interface {v1, v9, v15}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 85
    .line 86
    .line 87
    const-string v15, "next"

    .line 88
    .line 89
    invoke-interface {v1, v10, v8, v15, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/16 v13, 0x57

    .line 93
    .line 94
    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    invoke-interface {v1, v9, v13}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 102
    .line 103
    .line 104
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    invoke-interface {v1, v13}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const-string v13, "setToken"

    .line 112
    .line 113
    const-string v9, "(I)V"

    .line 114
    .line 115
    invoke-interface {v1, v10, v8, v13, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 v10, 0xa7

    .line 119
    .line 120
    invoke-interface {v1, v10, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/16 v10, 0x15

    .line 131
    .line 132
    invoke-interface {v1, v10, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 133
    .line 134
    .line 135
    const/16 v3, 0x7d

    .line 136
    .line 137
    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 138
    .line 139
    .line 140
    const/16 v3, 0xa0

    .line 141
    .line 142
    invoke-interface {v1, v3, v4}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/16 v14, 0x19

    .line 150
    .line 151
    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 152
    .line 153
    .line 154
    const/16 v3, 0xb6

    .line 155
    .line 156
    invoke-interface {v1, v3, v8, v15, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/16 v10, 0x57

    .line 160
    .line 161
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    invoke-interface {v1, v14, v10}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 169
    .line 170
    .line 171
    const/16 v10, 0xd

    .line 172
    .line 173
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v1, v3, v8, v13, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/16 v10, 0xa7

    .line 184
    .line 185
    invoke-interface {v1, v10, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const/16 v10, 0x15

    .line 196
    .line 197
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 198
    .line 199
    .line 200
    const/16 v4, 0x5d

    .line 201
    .line 202
    const/16 v10, 0x10

    .line 203
    .line 204
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 205
    .line 206
    .line 207
    const/16 v4, 0xa0

    .line 208
    .line 209
    invoke-interface {v1, v4, v5}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    const/16 v10, 0x19

    .line 217
    .line 218
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v1, v3, v8, v15, v12}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const/16 v4, 0x57

    .line 225
    .line 226
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-interface {v1, v10, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 234
    .line 235
    .line 236
    const/16 v4, 0xf

    .line 237
    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v1, v3, v8, v13, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const/16 v3, 0xa7

    .line 249
    .line 250
    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v11}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    const/16 v4, 0x15

    .line 261
    .line 262
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 263
    .line 264
    .line 265
    const/16 v3, 0x1a

    .line 266
    .line 267
    const/16 v4, 0x10

    .line 268
    .line 269
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 270
    .line 271
    .line 272
    const/16 v3, 0xa0

    .line 273
    .line 274
    invoke-interface {v1, v3, v2}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    const/16 v4, 0x19

    .line 282
    .line 283
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 284
    .line 285
    .line 286
    const/16 v3, 0x14

    .line 287
    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    const/16 v3, 0xb6

    .line 296
    .line 297
    invoke-interface {v1, v3, v8, v13, v9}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const/16 v5, 0xa7

    .line 301
    .line 302
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v7}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 313
    .line 314
    .line 315
    const-string v0, "nextToken"

    .line 316
    .line 317
    const-string v2, "()V"

    .line 318
    .line 319
    invoke-interface {v1, v3, v8, v0, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method private s(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/util/d;)V
    .locals 3

    .line 1
    iget-object p1, p3, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0xb9

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0xb6

    .line 19
    .line 20
    :goto_0
    iget-object v1, p3, Lcom/alibaba/fastjson/util/d;->g:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p3, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    const/16 p1, 0x57

    .line 52
    .line 53
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object p1, p3, Lcom/alibaba/fastjson/util/d;->g:Ljava/lang/Class;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p3, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object p3, p3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 70
    .line 71
    invoke-static {p3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    const/16 v1, 0xb5

    .line 76
    .line 77
    invoke-interface {p2, v1, p1, v0, p3}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    return-void
.end method

.method private t(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x19

    .line 3
    .line 4
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 5
    .line 6
    .line 7
    const-string v0, "context"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lb5/a;->c:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "("

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-class v3, La5/g;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, ")V"

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/16 v4, 0xb6

    .line 47
    .line 48
    const-string v5, "setContext"

    .line 49
    .line 50
    invoke-interface {p2, v4, v0, v5, v2}, Lcom/alibaba/fastjson/asm/h;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "childContext"

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 65
    .line 66
    .line 67
    const/16 v4, 0xc6

    .line 68
    .line 69
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/h;->a(ILcom/alibaba/fastjson/asm/f;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 77
    .line 78
    .line 79
    const-string v2, "instance"

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-interface {p2, v1, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v1, "object"

    .line 93
    .line 94
    const-string v2, "Ljava/lang/Object;"

    .line 95
    .line 96
    const/16 v3, 0xb5

    .line 97
    .line 98
    invoke-interface {p2, v3, p1, v1, v2}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/h;->l(Lcom/alibaba/fastjson/asm/f;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private u(Lcom/alibaba/fastjson/asm/h;Lb5/a$a;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_asm_flag_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    div-int/lit8 v1, p3, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0x15

    .line 25
    .line 26
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    shl-int p3, v1, p3

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/h;->d(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/16 p3, 0x80

    .line 40
    .line 41
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/h;->h(I)V

    .line 42
    .line 43
    .line 44
    const/16 p3, 0x36

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private w(Lb5/a$a;Lcom/alibaba/fastjson/asm/h;)V
    .locals 4

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lb5/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const-class v1, La5/b;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0xb4

    .line 16
    .line 17
    const-string v3, "lexer"

    .line 18
    .line 19
    invoke-interface {p2, v2, v0, v3, v1}, Lcom/alibaba/fastjson/asm/h;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0xc0

    .line 23
    .line 24
    sget-object v1, Lb5/a;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/h;->f(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x3a

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Lb5/a$a;->k(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/h;->c(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public v(La5/h;Lcom/alibaba/fastjson/util/h;)Lb5/b2;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p2, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-nez v4, :cond_1

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v5, "FastjsonASMDeserializer_"

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Lb5/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, "_"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-class v4, Lb5/a;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/16 v6, 0x2e

    .line 65
    .line 66
    const/16 v7, 0x2f

    .line 67
    .line 68
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, "/"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, "."

    .line 96
    .line 97
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    move-object v4, v3

    .line 108
    move-object v3, v5

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    move-object v4, v3

    .line 111
    :goto_0
    new-instance v5, Lcom/alibaba/fastjson/asm/c;

    .line 112
    .line 113
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/c;-><init>()V

    .line 114
    .line 115
    .line 116
    const-class v6, Lb5/o;

    .line 117
    .line 118
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->g(Ljava/lang/Class;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const/4 v11, 0x0

    .line 123
    const/16 v7, 0x31

    .line 124
    .line 125
    const/16 v8, 0x21

    .line 126
    .line 127
    move-object v6, v5

    .line 128
    move-object v9, v3

    .line 129
    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/asm/c;->k(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v6, Lb5/a$a;

    .line 133
    .line 134
    const/4 v7, 0x3

    .line 135
    invoke-direct {v6, v3, p1, p2, v7}, Lb5/a$a;-><init>(Ljava/lang/String;La5/h;Lcom/alibaba/fastjson/util/h;I)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, v5, v6}, Lb5/a;->m(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V

    .line 139
    .line 140
    .line 141
    new-instance v6, Lb5/a$a;

    .line 142
    .line 143
    invoke-direct {v6, v3, p1, p2, v7}, Lb5/a$a;-><init>(Ljava/lang/String;La5/h;Lcom/alibaba/fastjson/util/h;I)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v5, v6}, Lb5/a;->d(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V

    .line 147
    .line 148
    .line 149
    new-instance v6, Lb5/a$a;

    .line 150
    .line 151
    const/4 v7, 0x5

    .line 152
    invoke-direct {v6, v3, p1, p2, v7}, Lb5/a$a;-><init>(Ljava/lang/String;La5/h;Lcom/alibaba/fastjson/util/h;I)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, v5, v6}, Lb5/a;->g(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V

    .line 156
    .line 157
    .line 158
    new-instance v6, Lb5/a$a;

    .line 159
    .line 160
    const/4 v7, 0x4

    .line 161
    invoke-direct {v6, v3, p1, p2, v7}, Lb5/a$a;-><init>(Ljava/lang/String;La5/h;Lcom/alibaba/fastjson/util/h;I)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v5, v6}, Lb5/a;->h(Lcom/alibaba/fastjson/asm/c;Lb5/a$a;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/c;->j()[B

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    iget-object v5, p0, Lb5/a;->a:Lcom/alibaba/fastjson/util/a;

    .line 172
    .line 173
    array-length v6, v3

    .line 174
    invoke-virtual {v5, v4, v3, v2, v6}, Lcom/alibaba/fastjson/util/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-array v4, v1, [Ljava/lang/Class;

    .line 179
    .line 180
    const-class v5, La5/h;

    .line 181
    .line 182
    aput-object v5, v4, v2

    .line 183
    .line 184
    const-class v5, Lcom/alibaba/fastjson/util/h;

    .line 185
    .line 186
    aput-object v5, v4, v0

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object p1, v1, v2

    .line 195
    .line 196
    aput-object p2, v1, v0

    .line 197
    .line 198
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lb5/b2;

    .line 203
    .line 204
    return-object p1

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v0, "not support type :"

    .line 213
    .line 214
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1
.end method
