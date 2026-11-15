.class public Lb00/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lb00/a;


# instance fields
.field private a:Lorg/mvel2/ParserContext;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Class;

.field private d:[C

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:I

.field private j:Z

.field private k:Lorg/mvel2/compiler/a;

.field private l:Lorg/mvel2/compiler/a;


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIIILorg/mvel2/compiler/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb00/c;->j:Z

    .line 6
    .line 7
    iput-object p1, p0, Lb00/c;->a:Lorg/mvel2/ParserContext;

    .line 8
    .line 9
    iput-object p2, p0, Lb00/c;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lb00/c;->c:Ljava/lang/Class;

    .line 12
    .line 13
    iput-object p8, p0, Lb00/c;->l:Lorg/mvel2/compiler/a;

    .line 14
    .line 15
    iput-object p8, p0, Lb00/c;->k:Lorg/mvel2/compiler/a;

    .line 16
    .line 17
    iput p7, p0, Lb00/c;->h:I

    .line 18
    .line 19
    iput-object p4, p0, Lb00/c;->d:[C

    .line 20
    .line 21
    iput p5, p0, Lb00/c;->e:I

    .line 22
    .line 23
    iput p6, p0, Lb00/c;->f:I

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    iput-wide p1, p0, Lb00/c;->g:J

    .line 30
    .line 31
    return-void
.end method

.method private b(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
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
    move-result-object v1

    .line 16
    iget-object v3, p0, Lb00/c;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v4, p0, Lb00/c;->c:Ljava/lang/Class;

    .line 19
    .line 20
    iget-object v5, p0, Lb00/c;->d:[C

    .line 21
    .line 22
    iget v6, p0, Lb00/c;->e:I

    .line 23
    .line 24
    iget v7, p0, Lb00/c;->f:I

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    move-object v8, p2

    .line 28
    move-object v9, p3

    .line 29
    move-object v10, p4

    .line 30
    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lb00/c;->l:Lorg/mvel2/compiler/a;

    .line 35
    .line 36
    invoke-interface {p1, p2, p3, p4}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb00/c;->k:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    iput-object v0, p0, Lb00/c;->l:Lorg/mvel2/compiler/a;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lb00/c;->j:Z

    .line 7
    .line 8
    iput v0, p0, Lb00/c;->i:I

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lb00/c;->g:J

    .line 15
    .line 16
    return-void
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lb00/c;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb00/c;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lb00/c;->i:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lb00/c;->i:I

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
    iget-wide v4, p0, Lb00/c;->g:J

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
    iput-boolean v1, p0, Lb00/c;->j:Z

    .line 29
    .line 30
    iget-object v0, p0, Lb00/c;->a:Lorg/mvel2/ParserContext;

    .line 31
    .line 32
    invoke-direct {p0, v0, p1, p2, p3}, Lb00/c;->b(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lb00/c;->i:I

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lb00/c;->g:J

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lb00/c;->l:Lorg/mvel2/compiler/a;

    .line 47
    .line 48
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lb00/c;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lb00/c;->i:I

    .line 6
    .line 7
    iget-object v0, p0, Lb00/c;->l:Lorg/mvel2/compiler/a;

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
