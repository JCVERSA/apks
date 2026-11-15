.class public Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;
.super Lorg/mvel2/optimizers/AbstractOptimizer;
.source "source.java"

# interfaces
.implements Lorg/mvel2/optimizers/a;


# static fields
.field public static final COLLECTION:I = 0x2

.field public static final OBJ_CREATION:I = 0x3

.field public static final REGULAR_ACCESSOR:I = 0x0

.field public static final SET_ACCESSOR:I = 0x1

.field private static volatile classLoader:Lb00/b; = null

.field private static lock:Ljava/util/concurrent/locks/ReadWriteLock; = null

.field public static maximumTenure:I = 0x5dc

.field private static final oLock:Ljava/lang/Object;

.field private static readLock:Ljava/util/concurrent/locks/Lock; = null

.field public static tenuringThreshold:I = 0x32

.field public static timeSpan:J = 0x64L

.field public static totalRecycled:I = 0x0

.field private static volatile useSafeClassloading:Z = false

.field private static writeLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private firstStage:Lorg/mvel2/optimizers/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->oLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 20
    .line 21
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    .line 11
    .line 12
    return-void
.end method

.method private static _init()V
    .locals 3

    .line 1
    new-instance v0, Lb00/b;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->maximumTenure:I

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lb00/b;-><init>(Ljava/lang/ClassLoader;I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->setMVELClassLoader(Lorg/mvel2/util/k;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static enforceTenureLimit()V
    .locals 2

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lb00/b;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lb00/b;->b()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lb00/b;->c()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->totalRecycled:I

    .line 26
    .line 27
    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->_init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public static isOverloaded()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb00/b;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResultOptPass()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->_init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isLiteralOnly()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->isLiteralOnly()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;
    .locals 20

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/mvel2/ParserContext;->optimizationNotify()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 10
    .line 11
    new-instance v8, Lb00/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    move-object/from16 v9, p0

    .line 14
    .line 15
    :try_start_1
    iget-object v10, v9, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    .line 16
    .line 17
    move-object/from16 v11, p1

    .line 18
    .line 19
    move-object/from16 v12, p2

    .line 20
    .line 21
    move/from16 v13, p3

    .line 22
    .line 23
    move/from16 v14, p4

    .line 24
    .line 25
    move-object/from16 v15, p5

    .line 26
    .line 27
    move-object/from16 v16, p6

    .line 28
    .line 29
    move-object/from16 v17, p7

    .line 30
    .line 31
    move/from16 v18, p8

    .line 32
    .line 33
    move-object/from16 v19, p9

    .line 34
    .line 35
    invoke-interface/range {v10 .. v19}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v1, v8

    .line 41
    move-object/from16 v2, p1

    .line 42
    .line 43
    move-object/from16 v3, p2

    .line 44
    .line 45
    move/from16 v4, p3

    .line 46
    .line 47
    move/from16 v5, p4

    .line 48
    .line 49
    invoke-direct/range {v1 .. v7}, Lb00/d;-><init>(Lorg/mvel2/ParserContext;[CIIILorg/mvel2/compiler/a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v8}, Lb00/b;->e(Lb00/a;)Lb00/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :catchall_1
    move-exception v0

    .line 65
    move-object/from16 v9, p0

    .line 66
    .line 67
    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;
    .locals 22

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 7
    .line 8
    new-instance v10, Lb00/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    move-object/from16 v11, p0

    .line 11
    .line 12
    :try_start_1
    iget-object v12, v11, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    .line 13
    .line 14
    move-object/from16 v13, p1

    .line 15
    .line 16
    move-object/from16 v14, p2

    .line 17
    .line 18
    move-object/from16 v15, p3

    .line 19
    .line 20
    move-object/from16 v16, p4

    .line 21
    .line 22
    move/from16 v17, p5

    .line 23
    .line 24
    move/from16 v18, p6

    .line 25
    .line 26
    move-object/from16 v19, p7

    .line 27
    .line 28
    move-object/from16 v20, p8

    .line 29
    .line 30
    move-object/from16 v21, p9

    .line 31
    .line 32
    invoke-interface/range {v12 .. v21}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const/4 v8, 0x2

    .line 37
    move-object v1, v10

    .line 38
    move-object/from16 v2, p1

    .line 39
    .line 40
    move-object/from16 v3, p2

    .line 41
    .line 42
    move-object/from16 v4, p3

    .line 43
    .line 44
    move-object/from16 v5, p4

    .line 45
    .line 46
    move/from16 v6, p5

    .line 47
    .line 48
    move/from16 v7, p6

    .line 49
    .line 50
    invoke-direct/range {v1 .. v9}, Lb00/c;-><init>(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIIILorg/mvel2/compiler/a;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v10}, Lb00/b;->e(Lb00/a;)Lb00/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    move-object/from16 v11, p0

    .line 67
    .line 68
    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;
    .locals 18

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    .line 7
    .line 8
    new-instance v8, Lb00/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    move-object/from16 v9, p0

    .line 11
    .line 12
    :try_start_1
    iget-object v10, v9, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    .line 13
    .line 14
    move-object/from16 v11, p1

    .line 15
    .line 16
    move-object/from16 v12, p2

    .line 17
    .line 18
    move/from16 v13, p3

    .line 19
    .line 20
    move/from16 v14, p4

    .line 21
    .line 22
    move-object/from16 v15, p5

    .line 23
    .line 24
    move-object/from16 v16, p6

    .line 25
    .line 26
    move-object/from16 v17, p7

    .line 27
    .line 28
    invoke-interface/range {v10 .. v17}, Lorg/mvel2/optimizers/a;->optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const/4 v6, 0x3

    .line 33
    move-object v1, v8

    .line 34
    move-object/from16 v2, p1

    .line 35
    .line 36
    move-object/from16 v3, p2

    .line 37
    .line 38
    move/from16 v4, p3

    .line 39
    .line 40
    move/from16 v5, p4

    .line 41
    .line 42
    invoke-direct/range {v1 .. v7}, Lb00/d;-><init>(Lorg/mvel2/ParserContext;[CIIILorg/mvel2/compiler/a;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v8}, Lb00/b;->e(Lb00/a;)Lb00/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_0

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    move-object/from16 v9, p0

    .line 59
    .line 60
    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/a;
    .locals 14

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    sget-object v0, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->classLoader:Lb00/b;

    new-instance v1, Lb00/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    :try_start_1
    iget-object v3, v2, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->firstStage:Lorg/mvel2/optimizers/a;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-interface/range {v3 .. v13}, Lorg/mvel2/optimizers/a;->optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v3

    move-object/from16 p5, v1

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move-object/from16 p10, v3

    invoke-direct/range {p5 .. p10}, Lb00/e;-><init>(Lorg/mvel2/ParserContext;[CIILorg/mvel2/compiler/a;)V

    invoke-virtual {v0, v1}, Lb00/b;->e(Lb00/a;)Lb00/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_0
    sget-object v1, Lorg/mvel2/optimizers/dynamic/DynamicOptimizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
