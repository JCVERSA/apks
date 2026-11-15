.class public Lorg/mvel2/util/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final h:[Ljava/lang/Object;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/Class;

.field private g:Lorg/mvel2/ParserContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Lorg/mvel2/util/c;->h:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/mvel2/util/c;->e:I

    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/c;->g:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private c(Z)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lorg/mvel2/util/c;->d:I

    iget v2, v0, Lorg/mvel2/util/c;->c:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 2
    iget v1, v0, Lorg/mvel2/util/c;->e:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 3
    :cond_0
    sget-object v1, Lorg/mvel2/util/c;->h:[Ljava/lang/Object;

    return-object v1

    .line 4
    :cond_1
    iget v1, v0, Lorg/mvel2/util/c;->e:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v4, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v3

    goto :goto_1

    .line 6
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    move-object v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move-object v1, v3

    move-object v7, v1

    :goto_1
    move v8, v4

    .line 7
    :goto_2
    iget v9, v0, Lorg/mvel2/util/c;->b:I

    iget v10, v0, Lorg/mvel2/util/c;->d:I

    if-ge v9, v10, :cond_16

    .line 8
    iget-object v11, v0, Lorg/mvel2/util/c;->a:[C

    aget-char v12, v11, v9

    const/16 v13, 0x22

    if-eq v12, v13, :cond_14

    const/16 v13, 0x2c

    if-eq v12, v13, :cond_11

    const/16 v14, 0x2e

    const/16 v15, 0x7b

    if-eq v12, v14, :cond_10

    const/16 v14, 0x3a

    if-eq v12, v14, :cond_d

    const/16 v14, 0x5b

    if-eq v12, v14, :cond_7

    if-eq v12, v15, :cond_6

    const/16 v13, 0x27

    if-eq v12, v13, :cond_14

    const/16 v13, 0x28

    if-eq v12, v13, :cond_5

    goto/16 :goto_6

    .line 9
    :cond_5
    invoke-static {v11, v9, v10, v13}, Lorg/mvel2/util/m;->d([CIIC)I

    move-result v9

    iput v9, v0, Lorg/mvel2/util/c;->b:I

    goto/16 :goto_6

    :cond_6
    if-ne v8, v4, :cond_7

    move v8, v6

    .line 10
    :cond_7
    iget v10, v0, Lorg/mvel2/util/c;->c:I

    if-le v9, v10, :cond_8

    add-int/lit8 v9, v9, -0x1

    aget-char v9, v11, v9

    invoke-static {v9}, Lorg/mvel2/util/m;->c0(I)Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_6

    :cond_8
    if-ne v8, v4, :cond_9

    const/4 v2, 0x0

    move v8, v2

    .line 11
    :cond_9
    new-instance v14, Lorg/mvel2/util/c;

    invoke-direct {v14, v8}, Lorg/mvel2/util/c;-><init>(I)V

    iget-object v15, v0, Lorg/mvel2/util/c;->a:[C

    iget v2, v0, Lorg/mvel2/util/c;->b:I

    add-int/lit8 v16, v2, 0x1

    iget v9, v0, Lorg/mvel2/util/c;->d:I

    aget-char v10, v15, v2

    invoke-static {v15, v2, v9, v10}, Lorg/mvel2/util/m;->d([CIIC)I

    move-result v9

    iput v9, v0, Lorg/mvel2/util/c;->b:I

    sub-int/2addr v9, v2

    add-int/lit8 v17, v9, -0x1

    iget-object v2, v0, Lorg/mvel2/util/c;->f:Ljava/lang/Class;

    iget-object v9, v0, Lorg/mvel2/util/c;->g:Lorg/mvel2/ParserContext;

    move/from16 v18, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v14 .. v20}, Lorg/mvel2/util/c;->d([CIIZLjava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    iget v9, v0, Lorg/mvel2/util/c;->e:I

    if-ne v9, v5, :cond_a

    .line 13
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 14
    :cond_a
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    .line 15
    :goto_3
    iget-object v2, v0, Lorg/mvel2/util/c;->a:[C

    iget v9, v0, Lorg/mvel2/util/c;->b:I

    add-int/2addr v9, v6

    iput v9, v0, Lorg/mvel2/util/c;->b:I

    invoke-static {v2, v9}, Lorg/mvel2/util/m;->E0([CI)I

    move-result v2

    iput v2, v0, Lorg/mvel2/util/c;->b:I

    .line 16
    iget v9, v0, Lorg/mvel2/util/c;->d:I

    if-ge v2, v9, :cond_b

    iget-object v10, v0, Lorg/mvel2/util/c;->a:[C

    aget-char v10, v10, v2

    if-ne v10, v13, :cond_b

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_b
    if-ge v2, v9, :cond_15

    .line 17
    iget-object v9, v0, Lorg/mvel2/util/c;->a:[C

    aget-char v9, v9, v2

    invoke-static {v9}, Lorg/mvel2/util/m;->u0(C)I

    move-result v9

    if-eq v9, v4, :cond_c

    goto/16 :goto_6

    .line 18
    :cond_c
    new-instance v1, Lorg/mvel2/CompileException;

    iget-object v2, v0, Lorg/mvel2/util/c;->a:[C

    iget v3, v0, Lorg/mvel2/util/c;->b:I

    const-string v4, "unterminated collection element"

    invoke-direct {v1, v4, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v1

    .line 19
    :cond_d
    iget v3, v0, Lorg/mvel2/util/c;->e:I

    if-eq v3, v5, :cond_e

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput v5, v0, Lorg/mvel2/util/c;->e:I

    .line 22
    :cond_e
    iget-object v3, v0, Lorg/mvel2/util/c;->a:[C

    iget v9, v0, Lorg/mvel2/util/c;->b:I

    sub-int/2addr v9, v2

    invoke-static {v3, v2, v9}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_f

    .line 23
    iget v9, v0, Lorg/mvel2/util/c;->b:I

    sub-int/2addr v9, v2

    invoke-direct {v0, v2, v9}, Lorg/mvel2/util/c;->f(II)V

    .line 24
    :cond_f
    iget v2, v0, Lorg/mvel2/util/c;->b:I

    :goto_4
    add-int/2addr v2, v6

    goto :goto_6

    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 25
    iput v9, v0, Lorg/mvel2/util/c;->b:I

    .line 26
    invoke-static {v11, v9}, Lorg/mvel2/util/m;->E0([CI)I

    move-result v9

    iput v9, v0, Lorg/mvel2/util/c;->b:I

    .line 27
    iget v10, v0, Lorg/mvel2/util/c;->d:I

    if-eq v9, v10, :cond_15

    iget-object v10, v0, Lorg/mvel2/util/c;->a:[C

    aget-char v11, v10, v9

    if-ne v11, v15, :cond_15

    .line 28
    invoke-static {v10, v9, v15}, Lorg/mvel2/util/m;->c([CIC)I

    move-result v9

    iput v9, v0, Lorg/mvel2/util/c;->b:I

    goto :goto_6

    .line 29
    :cond_11
    iget v10, v0, Lorg/mvel2/util/c;->e:I

    if-eq v10, v5, :cond_12

    .line 30
    new-instance v10, Ljava/lang/String;

    sub-int/2addr v9, v2

    invoke-direct {v10, v11, v2, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    sub-int/2addr v9, v2

    .line 31
    invoke-static {v11, v2, v9}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz p1, :cond_13

    .line 32
    iget v9, v0, Lorg/mvel2/util/c;->b:I

    sub-int/2addr v9, v2

    invoke-direct {v0, v2, v9}, Lorg/mvel2/util/c;->f(II)V

    .line 33
    :cond_13
    iget v2, v0, Lorg/mvel2/util/c;->b:I

    goto :goto_4

    .line 34
    :cond_14
    invoke-static {v11, v9, v10, v12}, Lorg/mvel2/util/m;->d([CIIC)I

    move-result v9

    iput v9, v0, Lorg/mvel2/util/c;->b:I

    .line 35
    :cond_15
    :goto_6
    iget v9, v0, Lorg/mvel2/util/c;->b:I

    add-int/2addr v9, v6

    iput v9, v0, Lorg/mvel2/util/c;->b:I

    goto/16 :goto_2

    :cond_16
    if-ge v2, v10, :cond_17

    .line 36
    iget-object v4, v0, Lorg/mvel2/util/c;->a:[C

    aget-char v4, v4, v2

    invoke-static {v4}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 37
    iget-object v4, v0, Lorg/mvel2/util/c;->a:[C

    invoke-static {v4, v2}, Lorg/mvel2/util/m;->E0([CI)I

    move-result v2

    .line 38
    :cond_17
    iget v4, v0, Lorg/mvel2/util/c;->d:I

    if-ge v2, v4, :cond_1b

    .line 39
    iget v8, v0, Lorg/mvel2/util/c;->b:I

    add-int/lit8 v9, v4, -0x1

    if-ge v8, v9, :cond_18

    add-int/2addr v8, v6

    iput v8, v0, Lorg/mvel2/util/c;->b:I

    .line 40
    :cond_18
    iget v8, v0, Lorg/mvel2/util/c;->e:I

    if-ne v8, v5, :cond_19

    .line 41
    iget-object v4, v0, Lorg/mvel2/util/c;->a:[C

    iget v8, v0, Lorg/mvel2/util/c;->b:I

    sub-int/2addr v8, v2

    invoke-static {v4, v2, v8}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 42
    :cond_19
    iget v3, v0, Lorg/mvel2/util/c;->b:I

    if-ge v3, v4, :cond_1a

    add-int/2addr v3, v6

    iput v3, v0, Lorg/mvel2/util/c;->b:I

    .line 43
    :cond_1a
    iget-object v3, v0, Lorg/mvel2/util/c;->a:[C

    iget v4, v0, Lorg/mvel2/util/c;->b:I

    sub-int/2addr v4, v2

    invoke-static {v3, v2, v4}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    if-eqz p1, :cond_1b

    .line 44
    iget v3, v0, Lorg/mvel2/util/c;->b:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v2, v3}, Lorg/mvel2/util/c;->f(II)V

    .line 45
    :cond_1b
    iget v2, v0, Lorg/mvel2/util/c;->e:I

    if-eq v2, v6, :cond_1d

    if-eq v2, v5, :cond_1c

    return-object v7

    :cond_1c
    return-object v1

    .line 46
    :cond_1d
    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private f(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/c;->f:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/util/c;->a:[C

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mvel2/util/c;->g:Lorg/mvel2/ParserContext;

    .line 8
    .line 9
    invoke-static {v0, p1, p2, v1}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/c;->a:[C

    .line 14
    .line 15
    iget-object v1, p0, Lorg/mvel2/util/c;->g:Lorg/mvel2/ParserContext;

    .line 16
    .line 17
    invoke-static {v0, p1, p2, v1}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 22
    .line 23
    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p2, p0, Lorg/mvel2/util/c;->f:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-static {p2, p1}, Lorg/mvel2/util/p;->f(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Lorg/mvel2/util/c;->b()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    iget-object p2, p0, Lorg/mvel2/util/c;->f:Ljava/lang/Class;

    .line 44
    .line 45
    invoke-static {p1, p2}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance p2, Lorg/mvel2/CompileException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "expected type: "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lorg/mvel2/util/c;->f:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "; but found: "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lorg/mvel2/util/c;->a:[C

    .line 90
    .line 91
    iget v1, p0, Lorg/mvel2/util/c;->b:I

    .line 92
    .line 93
    invoke-direct {p2, p1, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/c;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public d([CIIZLjava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-static {p5}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    iput-object p5, p0, Lorg/mvel2/util/c;->f:Ljava/lang/Class;

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lorg/mvel2/util/c;->a:[C

    .line 10
    .line 11
    add-int/2addr p3, p2

    .line 12
    iput p3, p0, Lorg/mvel2/util/c;->d:I

    .line 13
    .line 14
    :goto_0
    iget p3, p0, Lorg/mvel2/util/c;->d:I

    .line 15
    .line 16
    if-ge p2, p3, :cond_1

    .line 17
    .line 18
    aget-char p3, p1, p2

    .line 19
    .line 20
    invoke-static {p3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput p2, p0, Lorg/mvel2/util/c;->b:I

    .line 30
    .line 31
    iput p2, p0, Lorg/mvel2/util/c;->c:I

    .line 32
    .line 33
    iput-object p6, p0, Lorg/mvel2/util/c;->g:Lorg/mvel2/ParserContext;

    .line 34
    .line 35
    invoke-direct {p0, p4}, Lorg/mvel2/util/c;->c(Z)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public e([CIIZLorg/mvel2/ParserContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/c;->a:[C

    .line 2
    .line 3
    iput-object p5, p0, Lorg/mvel2/util/c;->g:Lorg/mvel2/ParserContext;

    .line 4
    .line 5
    add-int/2addr p3, p2

    .line 6
    iput p3, p0, Lorg/mvel2/util/c;->d:I

    .line 7
    .line 8
    :goto_0
    iget p3, p0, Lorg/mvel2/util/c;->d:I

    .line 9
    .line 10
    if-ge p2, p3, :cond_0

    .line 11
    .line 12
    aget-char p3, p1, p2

    .line 13
    .line 14
    invoke-static {p3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput p2, p0, Lorg/mvel2/util/c;->b:I

    .line 24
    .line 25
    iput p2, p0, Lorg/mvel2/util/c;->c:I

    .line 26
    .line 27
    invoke-direct {p0, p4}, Lorg/mvel2/util/c;->c(Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method
