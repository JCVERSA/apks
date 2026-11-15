.class public Lb00/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lb00/a;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:J

.field private g:Lorg/mvel2/ParserContext;

.field private final h:Lorg/mvel2/compiler/a;

.field private i:Lorg/mvel2/compiler/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ParserContext;[CIILorg/mvel2/compiler/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb00/e;->d:Z

    .line 6
    .line 7
    iput v0, p0, Lb00/e;->e:I

    .line 8
    .line 9
    iput-object p5, p0, Lb00/e;->i:Lorg/mvel2/compiler/a;

    .line 10
    .line 11
    iput-object p5, p0, Lb00/e;->h:Lorg/mvel2/compiler/a;

    .line 12
    .line 13
    iput-object p1, p0, Lb00/e;->g:Lorg/mvel2/ParserContext;

    .line 14
    .line 15
    iput-object p2, p0, Lb00/e;->a:[C

    .line 16
    .line 17
    iput p3, p0, Lb00/e;->b:I

    .line 18
    .line 19
    iput p4, p0, Lb00/e;->c:I

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iput-wide p1, p0, Lb00/e;->f:J

    .line 26
    .line 27
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->isOverloaded()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->enforceTenureLimit()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string v1, "ASM"

    .line 12
    .line 13
    invoke-static {v1}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Lb00/e;->g:Lorg/mvel2/ParserContext;

    .line 18
    .line 19
    iget-object v4, v0, Lb00/e;->a:[C

    .line 20
    .line 21
    iget v5, v0, Lb00/e;->b:I

    .line 22
    .line 23
    iget v6, v0, Lb00/e;->c:I

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    move-object v12, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-class v1, Ljava/lang/Object;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    const/4 v10, 0x0

    .line 37
    move-object v7, p1

    .line 38
    move-object v8, p2

    .line 39
    move-object/from16 v9, p3

    .line 40
    .line 41
    move-object/from16 v11, p4

    .line 42
    .line 43
    invoke-interface/range {v2 .. v12}, Lorg/mvel2/optimizers/a;->optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lb00/e;->i:Lorg/mvel2/compiler/a;

    .line 48
    .line 49
    return-object p4
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb00/e;->h:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    iput-object v0, p0, Lb00/e;->i:Lorg/mvel2/compiler/a;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lb00/e;->d:Z

    .line 7
    .line 8
    iput v0, p0, Lb00/e;->e:I

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lb00/e;->f:J

    .line 15
    .line 16
    return-void
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lb00/e;->h:Lorg/mvel2/compiler/a;

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
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "value cannot be read with this accessor"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb00/e;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lb00/e;->e:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lb00/e;->e:I

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
    iget-wide v4, p0, Lb00/e;->f:J

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
    iput-boolean v1, p0, Lb00/e;->d:Z

    .line 29
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lb00/e;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lb00/e;->e:I

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lb00/e;->f:J

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lb00/e;->i:Lorg/mvel2/compiler/a;

    .line 45
    .line 46
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object p4
.end method
