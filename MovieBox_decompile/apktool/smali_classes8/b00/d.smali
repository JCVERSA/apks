.class public Lb00/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lb00/a;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lorg/mvel2/ParserContext;

.field private i:Lorg/mvel2/compiler/a;

.field private j:Lorg/mvel2/compiler/a;


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;[CIIILorg/mvel2/compiler/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb00/d;->g:Z

    .line 6
    .line 7
    iput-object p6, p0, Lb00/d;->j:Lorg/mvel2/compiler/a;

    .line 8
    .line 9
    iput-object p6, p0, Lb00/d;->i:Lorg/mvel2/compiler/a;

    .line 10
    .line 11
    iput p5, p0, Lb00/d;->e:I

    .line 12
    .line 13
    iput-object p2, p0, Lb00/d;->a:[C

    .line 14
    .line 15
    iput p3, p0, Lb00/d;->b:I

    .line 16
    .line 17
    iput p4, p0, Lb00/d;->c:I

    .line 18
    .line 19
    iput-object p1, p0, Lb00/d;->h:Lorg/mvel2/ParserContext;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iput-wide p1, p0, Lb00/d;->d:J

    .line 26
    .line 27
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->isOverloaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->enforceTenureLimit()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const-string v0, "ASM"

    .line 11
    .line 12
    invoke-static {v0}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lb00/d;->e:I

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_1
    iget-object v2, p0, Lb00/d;->h:Lorg/mvel2/ParserContext;

    .line 29
    .line 30
    iget-object v3, p0, Lb00/d;->a:[C

    .line 31
    .line 32
    iget v4, p0, Lb00/d;->b:I

    .line 33
    .line 34
    iget v5, p0, Lb00/d;->c:I

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    move-object v6, p1

    .line 38
    move-object v7, p2

    .line 39
    move-object v8, p3

    .line 40
    invoke-interface/range {v1 .. v8}, Lorg/mvel2/optimizers/a;->optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lb00/d;->j:Lorg/mvel2/compiler/a;

    .line 45
    .line 46
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    iget-object v2, p0, Lb00/d;->h:Lorg/mvel2/ParserContext;

    .line 52
    .line 53
    iget-object v5, p0, Lb00/d;->a:[C

    .line 54
    .line 55
    iget v6, p0, Lb00/d;->b:I

    .line 56
    .line 57
    iget v7, p0, Lb00/d;->c:I

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    move-object v1, v0

    .line 61
    move-object v3, p1

    .line 62
    move-object v8, p1

    .line 63
    move-object v9, p2

    .line 64
    move-object v10, p3

    .line 65
    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lb00/d;->j:Lorg/mvel2/compiler/a;

    .line 70
    .line 71
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_3
    iget-object v2, p0, Lb00/d;->h:Lorg/mvel2/ParserContext;

    .line 77
    .line 78
    iget-object v3, p0, Lb00/d;->a:[C

    .line 79
    .line 80
    iget v4, p0, Lb00/d;->b:I

    .line 81
    .line 82
    iget v5, p0, Lb00/d;->c:I

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    move-object v1, v0

    .line 87
    move-object v6, p1

    .line 88
    move-object v7, p2

    .line 89
    move-object v8, p3

    .line 90
    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lb00/d;->j:Lorg/mvel2/compiler/a;

    .line 95
    .line 96
    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb00/d;->i:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    iput-object v0, p0, Lb00/d;->j:Lorg/mvel2/compiler/a;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lb00/d;->g:Z

    .line 7
    .line 8
    iput v0, p0, Lb00/d;->f:I

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lb00/d;->d:J

    .line 15
    .line 16
    return-void
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lb00/d;->i:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb00/d;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lb00/d;->f:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lb00/d;->f:I

    .line 10
    .line 11
    sget v2, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->tenuringThreshold:I

    .line 12
    .line 13
    if-le v0, v2, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, p0, Lb00/d;->d:J

    .line 20
    .line 21
    sub-long/2addr v2, v4

    .line 22
    sget-wide v4, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->timeSpan:J

    .line 23
    .line 24
    cmp-long v0, v2, v4

    .line 25
    .line 26
    if-gez v0, :cond_0

    .line 27
    .line 28
    iput-boolean v1, p0, Lb00/d;->g:Z

    .line 29
    .line 30
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lb00/d;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Lorg/mvel2/optimizers/OptimizationNotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lb00/d;->f:I

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lb00/d;->d:J

    .line 43
    .line 44
    :catch_0
    :cond_1
    iget-object v0, p0, Lb00/d;->j:Lorg/mvel2/compiler/a;

    .line 45
    .line 46
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lb00/d;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lb00/d;->f:I

    .line 6
    .line 7
    iget-object v0, p0, Lb00/d;->j:Lorg/mvel2/compiler/a;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
