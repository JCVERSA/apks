.class public Lf00/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final k:Ljava/util/Map;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/util/Map;

.field private j:Lorg/mvel2/ParserContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf00/b;->k:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "if"

    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "else"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v2, "elseif"

    .line 29
    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "end"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "foreach"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x33

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "includeNamed"

    .line 61
    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x32

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "include"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x34

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "comment"

    .line 83
    .line 84
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x35

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "code"

    .line 94
    .line 95
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const/16 v1, 0x37

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v2, "eval"

    .line 105
    .line 106
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const/16 v1, 0x36

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "declare"

    .line 116
    .line 117
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x46

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "stop"

    .line 127
    .line 128
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ZLorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf00/b;->h:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lf00/b;->a:[C

    .line 16
    .line 17
    array-length p1, p1

    .line 18
    iput p1, p0, Lf00/b;->b:I

    .line 19
    .line 20
    iput-boolean p2, p0, Lf00/b;->h:Z

    .line 21
    .line 22
    iput-object p3, p0, Lf00/b;->j:Lorg/mvel2/ParserContext;

    .line 23
    .line 24
    return-void
.end method

.method private a()[C
    .locals 5

    .line 1
    iget v0, p0, Lf00/b;->d:I

    .line 2
    .line 3
    iget v1, p0, Lf00/b;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    new-array v1, v0, [C

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lf00/b;->a:[C

    .line 12
    .line 13
    iget v4, p0, Lf00/b;->c:I

    .line 14
    .line 15
    add-int/2addr v4, v2

    .line 16
    aget-char v3, v3, v4

    .line 17
    .line 18
    aput-char v3, v1, v2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v1
.end method

.method private b()I
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mvel2/ParserContext;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf00/b;->a:[C

    .line 7
    .line 8
    iget v2, p0, Lf00/b;->d:I

    .line 9
    .line 10
    iput v2, p0, Lf00/b;->c:I

    .line 11
    .line 12
    iget v3, p0, Lf00/b;->b:I

    .line 13
    .line 14
    const/16 v4, 0x7b

    .line 15
    .line 16
    invoke-static {v1, v2, v3, v4, v0}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lf00/b;->d:I

    .line 21
    .line 22
    iget v1, p0, Lf00/b;->f:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getLineCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v1, v0

    .line 29
    iput v1, p0, Lf00/b;->f:I

    .line 30
    .line 31
    iget v0, p0, Lf00/b;->c:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    iget v1, p0, Lf00/b;->d:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    iput v1, p0, Lf00/b;->c:I
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    return v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    iget v1, p0, Lf00/b;->f:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setLineNumber(I)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lf00/b;->d:I

    .line 49
    .line 50
    iget v2, p0, Lf00/b;->g:I

    .line 51
    .line 52
    sub-int/2addr v1, v2

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setColumn(I)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method private c()I
    .locals 3

    .line 1
    iget v0, p0, Lf00/b;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf00/b;->d:I

    .line 6
    .line 7
    :goto_0
    iget v1, p0, Lf00/b;->d:I

    .line 8
    .line 9
    iget v2, p0, Lf00/b;->b:I

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lf00/b;->a:[C

    .line 14
    .line 15
    aget-char v1, v2, v1

    .line 16
    .line 17
    invoke-static {v1}, Lorg/mvel2/util/m;->c0(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget v1, p0, Lf00/b;->d:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    iput v1, p0, Lf00/b;->d:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v1, p0, Lf00/b;->d:I

    .line 31
    .line 32
    iget v2, p0, Lf00/b;->b:I

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lf00/b;->a:[C

    .line 37
    .line 38
    aget-char v1, v2, v1

    .line 39
    .line 40
    const/16 v2, 0x7b

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    const/4 v0, -0x1

    .line 46
    return v0
.end method

.method public static f(Ljava/lang/String;)Lorg/mvel2/templates/CompiledTemplate;
    .locals 3

    .line 1
    new-instance v0, Lf00/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {}, Lorg/mvel2/ParserContext;->create()Lorg/mvel2/ParserContext;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-direct {v0, p0, v1, v2}, Lf00/b;-><init>(Ljava/lang/CharSequence;ZLorg/mvel2/ParserContext;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lf00/b;->d()Lorg/mvel2/templates/CompiledTemplate;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static g(Ljava/lang/String;Lorg/mvel2/ParserContext;)Lorg/mvel2/templates/CompiledTemplate;
    .locals 2

    .line 1
    new-instance v0, Lf00/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1, p1}, Lf00/b;-><init>(Ljava/lang/CharSequence;ZLorg/mvel2/ParserContext;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lf00/b;->d()Lorg/mvel2/templates/CompiledTemplate;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private h(C)Z
    .locals 3

    .line 1
    iget v0, p0, Lf00/b;->d:I

    .line 2
    .line 3
    iget v1, p0, Lf00/b;->b:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lf00/b;->a:[C

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    add-int/2addr v0, v2

    .line 11
    aget-char v0, v1, v0

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    return v2
.end method

.method private i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getEnd()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lf00/b;->e:I

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getEnd()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :cond_0
    iget v0, p0, Lf00/b;->c:I

    .line 14
    .line 15
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    new-instance v2, Lorg/mvel2/templates/res/TextNode;

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    iput v0, p0, Lf00/b;->e:I

    .line 22
    .line 23
    invoke-direct {v2, v1, v0}, Lorg/mvel2/templates/res/TextNode;-><init>(II)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p1, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_1
    return-object p1
.end method


# virtual methods
.method public d()Lorg/mvel2/templates/CompiledTemplate;
    .locals 4

    .line 1
    new-instance v0, Lorg/mvel2/templates/CompiledTemplate;

    .line 2
    .line 3
    iget-object v1, p0, Lf00/b;->a:[C

    .line 4
    .line 5
    new-instance v2, Lorg/mvel2/util/g;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/mvel2/util/g;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v3, v2}, Lf00/b;->e(Lorg/mvel2/templates/res/Node;Lorg/mvel2/util/g;)Lorg/mvel2/templates/res/Node;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lorg/mvel2/templates/CompiledTemplate;-><init>([CLorg/mvel2/templates/res/Node;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public e(Lorg/mvel2/templates/res/Node;Lorg/mvel2/util/g;)Lorg/mvel2/templates/res/Node;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    const-string v2, "unable to instantiate custom node class: "

    const/4 v3, 0x1

    iput v3, v1, Lf00/b;->f:I

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 2
    new-instance v5, Lorg/mvel2/templates/res/TextNode;

    invoke-direct {v5, v4, v4}, Lorg/mvel2/templates/res/TextNode;-><init>(II)V

    :goto_0
    move-object v6, v5

    goto :goto_1

    :cond_0
    move-object/from16 v5, p1

    goto :goto_0

    :goto_1
    const/4 v7, -0x1

    .line 3
    :try_start_0
    iget v8, v1, Lf00/b;->d:I

    iget v9, v1, Lf00/b;->b:I

    if-ge v8, v9, :cond_16

    .line 4
    iget-object v9, v1, Lf00/b;->a:[C

    aget-char v9, v9, v8

    const/16 v10, 0xa

    if-eq v9, v10, :cond_14

    const/16 v8, 0x24

    if-eq v9, v8, :cond_1

    const/16 v8, 0x40

    if-eq v9, v8, :cond_1

    goto/16 :goto_e

    .line 5
    :cond_1
    invoke-direct {v1, v9}, Lf00/b;->h(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6
    iget v8, v1, Lf00/b;->d:I

    add-int/2addr v8, v3

    iput v8, v1, Lf00/b;->d:I

    iput v8, v1, Lf00/b;->c:I

    .line 7
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mvel2/templates/res/Node;->getEnd()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v5, v8}, Lorg/mvel2/templates/res/Node;->setEnd(I)V

    .line 8
    iget v8, v1, Lf00/b;->d:I

    add-int/2addr v8, v3

    iput v8, v1, Lf00/b;->d:I

    iput v8, v1, Lf00/b;->e:I

    iput v8, v1, Lf00/b;->c:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_11

    .line 9
    :cond_2
    invoke-direct/range {p0 .. p0}, Lf00/b;->c()I

    move-result v8

    if-eq v8, v7, :cond_15

    .line 10
    iput v8, v1, Lf00/b;->c:I

    .line 11
    sget-object v8, Lf00/b;->k:Ljava/util/Map;

    new-instance v13, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lf00/b;->a()[C

    move-result-object v9

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    if-eq v8, v3, :cond_12

    const/4 v9, 0x2

    if-eq v8, v9, :cond_10

    const/4 v9, 0x3

    if-eq v8, v9, :cond_e

    if-eq v8, v10, :cond_d

    packed-switch v8, :pswitch_data_0

    .line 12
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 13
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_4

    new-instance v8, Lorg/mvel2/templates/res/CompiledExpressionNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledExpressionNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_3

    :cond_4
    new-instance v8, Lorg/mvel2/templates/res/ExpressionNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/ExpressionNode;-><init>(ILjava/lang/String;[CII)V

    :goto_3
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    :goto_4
    move-object v5, v8

    goto/16 :goto_e

    .line 14
    :cond_5
    iget-object v8, v1, Lf00/b;->i:Ljava/util/Map;

    if-eqz v8, :cond_7

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 15
    iget-object v8, v1, Lf00/b;->i:Ljava/util/Map;

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mvel2/templates/res/Node;

    iput-object v9, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    iget v5, v1, Lf00/b;->c:I

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setBegin(I)V

    .line 17
    invoke-virtual {v9, v13}, Lorg/mvel2/templates/res/Node;->setName(Ljava/lang/String;)V

    .line 18
    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v5

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setCStart(I)V

    .line 19
    iget v5, v1, Lf00/b;->d:I

    add-int/2addr v5, v3

    iput v5, v1, Lf00/b;->c:I

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setCEnd(I)V

    .line 20
    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCEnd()I

    move-result v5

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setEnd(I)V

    .line 21
    iget-object v5, v1, Lf00/b;->a:[C

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCStart()I

    move-result v10

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCEnd()I

    move-result v11

    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->getCStart()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v3

    invoke-static {v5, v10, v11}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/mvel2/templates/res/Node;->setContents([C)V

    .line 22
    invoke-virtual {v9}, Lorg/mvel2/templates/res/Node;->isOpenNode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 23
    invoke-virtual {v0, v9}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_5
    move-object v5, v9

    goto/16 :goto_e

    .line 24
    :catch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown token type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_8

    new-instance v8, Lorg/mvel2/templates/res/CompiledEvalNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledEvalNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_6

    :cond_8
    new-instance v8, Lorg/mvel2/templates/res/EvalNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/EvalNode;-><init>(ILjava/lang/String;[CII)V

    :goto_6
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    .line 28
    :pswitch_1
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_9

    new-instance v8, Lorg/mvel2/templates/res/CompiledDeclareNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledDeclareNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_7

    :cond_9
    new-instance v8, Lorg/mvel2/templates/res/DeclareNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/DeclareNode;-><init>(ILjava/lang/String;[CII)V

    :goto_7
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, v8}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 29
    new-instance v5, Lorg/mvel2/templates/res/TerminalNode;

    invoke-direct {v5}, Lorg/mvel2/templates/res/TerminalNode;-><init>()V

    invoke-virtual {v8, v5}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    goto/16 :goto_4

    .line 30
    :pswitch_2
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_a

    new-instance v8, Lorg/mvel2/templates/res/CompiledCodeNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledCodeNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_8

    :cond_a
    new-instance v8, Lorg/mvel2/templates/res/CodeNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/CodeNode;-><init>(ILjava/lang/String;[CII)V

    :goto_8
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    .line 31
    :pswitch_3
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    new-instance v8, Lorg/mvel2/templates/res/CommentNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/CommentNode;-><init>(ILjava/lang/String;[CII)V

    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    .line 32
    :pswitch_4
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_b

    new-instance v8, Lorg/mvel2/templates/res/CompiledNamedIncludeNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledNamedIncludeNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_9

    :cond_b
    new-instance v8, Lorg/mvel2/templates/res/NamedIncludeNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/NamedIncludeNode;-><init>(ILjava/lang/String;[CII)V

    :goto_9
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    .line 33
    :pswitch_5
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_c

    new-instance v8, Lorg/mvel2/templates/res/CompiledIncludeNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledIncludeNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_a

    :cond_c
    new-instance v8, Lorg/mvel2/templates/res/IncludeNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->d:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/IncludeNode;-><init>(ILjava/lang/String;[CII)V

    :goto_a
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_4

    .line 34
    :cond_d
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    .line 35
    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mvel2/templates/res/Node;

    .line 36
    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v9

    .line 37
    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/mvel2/templates/res/Node;->setCStart(I)V

    .line 38
    iget v10, v1, Lf00/b;->c:I

    iput v10, v1, Lf00/b;->e:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lorg/mvel2/templates/res/Node;->setEnd(I)V

    .line 39
    iget-object v10, v1, Lf00/b;->a:[C

    invoke-virtual {v9, v10}, Lorg/mvel2/templates/res/Node;->calculateContents([C)V

    .line 40
    iget-object v10, v1, Lf00/b;->a:[C

    invoke-virtual {v8, v9, v10}, Lorg/mvel2/templates/res/Node;->demarcate(Lorg/mvel2/templates/res/Node;[C)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-object v9, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto/16 :goto_5

    .line 41
    :cond_e
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_f

    new-instance v8, Lorg/mvel2/templates/res/CompiledForEachNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledForEachNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_b

    :cond_f
    new-instance v8, Lorg/mvel2/templates/res/ForEachNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/ForEachNode;-><init>(ILjava/lang/String;[CII)V

    :goto_b
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, v8}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 42
    new-instance v5, Lorg/mvel2/templates/res/TerminalNode;

    invoke-direct {v5}, Lorg/mvel2/templates/res/TerminalNode;-><init>()V

    invoke-virtual {v8, v5}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    goto/16 :goto_4

    .line 43
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->g()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/mvel2/templates/res/IfNode;

    if-eqz v8, :cond_15

    .line 44
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mvel2/templates/res/IfNode;

    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v9

    iput-object v9, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 45
    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-object v9, v1, Lf00/b;->a:[C

    invoke-virtual {v8, v5, v9}, Lorg/mvel2/templates/res/IfNode;->demarcate(Lorg/mvel2/templates/res/Node;[C)Z

    .line 46
    iget-boolean v5, v1, Lf00/b;->h:Z

    if-eqz v5, :cond_11

    new-instance v5, Lorg/mvel2/templates/res/CompiledIfNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v5

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledIfNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_c

    :cond_11
    new-instance v5, Lorg/mvel2/templates/res/IfNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->c:I

    move-object v11, v5

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/IfNode;-><init>(ILjava/lang/String;[CII)V

    :goto_c
    iput-object v5, v8, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 47
    invoke-virtual {v8}, Lorg/mvel2/templates/res/Node;->getTerminus()Lorg/mvel2/templates/res/Node;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    .line 48
    invoke-virtual {v0, v5}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_e

    .line 49
    :cond_12
    invoke-direct {v1, v5}, Lf00/b;->i(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;

    move-result-object v5

    iget-boolean v8, v1, Lf00/b;->h:Z

    if-eqz v8, :cond_13

    new-instance v8, Lorg/mvel2/templates/res/CompiledIfNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->c:I

    iget-object v10, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    move-object v11, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mvel2/templates/res/CompiledIfNode;-><init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V

    goto :goto_d

    :cond_13
    new-instance v8, Lorg/mvel2/templates/res/IfNode;

    iget v12, v1, Lf00/b;->c:I

    iget-object v14, v1, Lf00/b;->a:[C

    invoke-direct/range {p0 .. p0}, Lf00/b;->b()I

    move-result v15

    iget v9, v1, Lf00/b;->c:I

    move-object v11, v8

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lorg/mvel2/templates/res/IfNode;-><init>(ILjava/lang/String;[CII)V

    :goto_d
    iput-object v8, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, v8}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 50
    new-instance v5, Lorg/mvel2/templates/res/TerminalNode;

    invoke-direct {v5}, Lorg/mvel2/templates/res/TerminalNode;-><init>()V

    invoke-virtual {v8, v5}, Lorg/mvel2/templates/res/Node;->setTerminus(Lorg/mvel2/templates/res/Node;)V

    goto/16 :goto_4

    .line 51
    :cond_14
    iget v9, v1, Lf00/b;->f:I

    add-int/2addr v9, v3

    iput v9, v1, Lf00/b;->f:I

    add-int/lit8 v8, v8, 0x1

    .line 52
    iput v8, v1, Lf00/b;->g:I

    .line 53
    :cond_15
    :goto_e
    iget v8, v1, Lf00/b;->d:I

    add-int/2addr v8, v3

    iput v8, v1, Lf00/b;->d:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 54
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->g()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 55
    iget v0, v1, Lf00/b;->c:I

    iget-object v2, v1, Lf00/b;->a:[C

    array-length v4, v2

    if-ge v0, v4, :cond_17

    .line 56
    new-instance v4, Lorg/mvel2/templates/res/TextNode;

    array-length v2, v2

    invoke-direct {v4, v0, v2}, Lorg/mvel2/templates/res/TextNode;-><init>(II)V

    iput-object v4, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    move-object v5, v4

    .line 57
    :cond_17
    new-instance v0, Lorg/mvel2/templates/res/EndNode;

    invoke-direct {v0}, Lorg/mvel2/templates/res/EndNode;-><init>()V

    iput-object v0, v5, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    move-object v0, v6

    .line 58
    :cond_18
    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getLength()I

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_f

    .line 59
    :cond_19
    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getNext()Lorg/mvel2/templates/res/Node;

    move-result-object v0

    if-nez v0, :cond_18

    :goto_f
    if-eqz v0, :cond_1c

    .line 60
    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getLength()I

    move-result v2

    iget-object v4, v1, Lf00/b;->a:[C

    array-length v4, v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_1c

    .line 61
    instance-of v2, v0, Lorg/mvel2/templates/res/ExpressionNode;

    if-eqz v2, :cond_1b

    .line 62
    iget-boolean v2, v1, Lf00/b;->h:Z

    if-eqz v2, :cond_1a

    new-instance v2, Lorg/mvel2/templates/res/CompiledTerminalExpressionNode;

    iget-object v3, v1, Lf00/b;->j:Lorg/mvel2/ParserContext;

    invoke-direct {v2, v0, v3}, Lorg/mvel2/templates/res/CompiledTerminalExpressionNode;-><init>(Lorg/mvel2/templates/res/Node;Lorg/mvel2/ParserContext;)V

    goto :goto_10

    :cond_1a
    new-instance v2, Lorg/mvel2/templates/res/TerminalExpressionNode;

    invoke-direct {v2, v0}, Lorg/mvel2/templates/res/TerminalExpressionNode;-><init>(Lorg/mvel2/templates/res/Node;)V

    :goto_10
    return-object v2

    :cond_1b
    return-object v0

    :cond_1c
    return-object v6

    .line 63
    :cond_1d
    new-instance v2, Lorg/mvel2/CompileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unclosed @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0}, Lorg/mvel2/templates/res/Node;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{} block. expected @end{}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lf00/b;->a:[C

    iget v4, v1, Lf00/b;->d:I

    invoke-direct {v2, v0, v3, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 64
    iget v0, v1, Lf00/b;->d:I

    iget v3, v1, Lf00/b;->g:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setColumn(I)V

    .line 65
    iget v0, v1, Lf00/b;->f:I

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setLineNumber(I)V

    .line 66
    throw v2

    .line 67
    :goto_11
    new-instance v2, Lorg/mvel2/CompileException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lf00/b;->a:[C

    iget v5, v1, Lf00/b;->d:I

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 68
    iget-object v3, v1, Lf00/b;->a:[C

    invoke-virtual {v2, v3}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 69
    instance-of v3, v0, Lorg/mvel2/CompileException;

    if-eqz v3, :cond_1f

    .line 70
    check-cast v0, Lorg/mvel2/CompileException;

    .line 71
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v3

    if-eq v3, v7, :cond_1f

    .line 72
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 73
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getColumn()I

    move-result v3

    if-ne v3, v7, :cond_1e

    invoke-virtual {v2}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v0

    iget v3, v1, Lf00/b;->g:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setColumn(I)V

    goto :goto_12

    .line 74
    :cond_1e
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getColumn()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setColumn(I)V

    .line 75
    :cond_1f
    :goto_12
    iget v0, v1, Lf00/b;->f:I

    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setLineNumber(I)V

    .line 76
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
