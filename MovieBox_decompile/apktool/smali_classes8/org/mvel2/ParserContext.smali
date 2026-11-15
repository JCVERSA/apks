.class public Lorg/mvel2/ParserContext;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blockSymbols:Z

.field private compiled:Z

.field private transient compiledExpressionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mvel2/compiler/CompiledExpression;",
            ">;"
        }
    .end annotation
.end field

.field private debugSymbols:Z

.field private transient errorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation
.end field

.field private evaluationContext:Ljava/lang/Object;

.field private executableCodeReached:Z

.field private fatalError:Z

.field private functionContext:Z

.field private globalFunctions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/mvel2/ast/Function;",
            ">;"
        }
    .end annotation
.end field

.field private indexAllocation:Z

.field private indexedInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indexedLocals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private lastLineLabel:Lorg/mvel2/ast/LineLabel;

.field private transient lastTypeParameters:[Ljava/lang/reflect/Type;

.field private lineCount:I

.field private lineOffset:I

.field private optimizationMode:Z

.field private parent:Lorg/mvel2/ParserContext;

.field private parserConfiguration:Lorg/mvel2/ParserConfiguration;

.field private retainParserState:Z

.field private transient returnTypeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private transient rootParser:Lorg/mvel2/compiler/b;

.field private sourceFile:Ljava/lang/String;

.field private transient sourceLineLookups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mvel2/util/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private strictTypeEnforcement:Z

.field private strongTyping:Z

.field private transient typeParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private variableVisibility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected variablesEscape:Z

.field private transient visitedLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    .line 4
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 6
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 7
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    .line 8
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 9
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 10
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 11
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 12
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 13
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 14
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    .line 15
    new-instance v0, Lorg/mvel2/ParserConfiguration;

    invoke-direct {v0}, Lorg/mvel2/ParserConfiguration;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lyz/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    .line 43
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 44
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 45
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 46
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    .line 47
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 48
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 49
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 50
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 51
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 53
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    .line 54
    iput-object p3, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    .line 55
    new-instance p3, Lorg/mvel2/ParserConfiguration;

    invoke-direct {p3, p1, p2}, Lorg/mvel2/ParserConfiguration;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ParserConfiguration;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    .line 23
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 24
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 25
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 26
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    .line 27
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 28
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 29
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 30
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 31
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 32
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 33
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    .line 34
    iput-object p1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ParserConfiguration;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    .line 36
    iput-object p2, p0, Lorg/mvel2/ParserContext;->evaluationContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ParserConfiguration;Lorg/mvel2/ParserContext;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    .line 38
    iput-object p2, p0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    .line 39
    iput-boolean p3, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/compiler/b;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/mvel2/ParserContext;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/mvel2/ParserContext;-><init>()V

    .line 17
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    return-void
.end method

.method static synthetic access$000(Lorg/mvel2/ParserContext;)Lorg/mvel2/ParserContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/mvel2/ParserContext;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/mvel2/ParserContext;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static create()Lorg/mvel2/ParserContext;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mvel2/ParserContext;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private initIndexedVariables()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private initVariableVisibility()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public addError(Lorg/mvel2/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/mvel2/c;

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/mvel2/c;->f()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lorg/mvel2/c;->f()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/mvel2/c;->b()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p1}, Lorg/mvel2/c;->b()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Lorg/mvel2/c;->e()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lorg/mvel2/c;->e()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ne v1, v2, :cond_1

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/mvel2/c;->g()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public addImport(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImport(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1, p2}, Lorg/mvel2/ParserConfiguration;->addImport(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImport(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/mvel2/util/MethodStub;

    invoke-direct {v0, p2}, Lorg/mvel2/util/MethodStub;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, p1, v0}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V

    return-void
.end method

.method public addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p1, p2}, Lorg/mvel2/ParserConfiguration;->addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V

    return-void
.end method

.method public addImport(Lorg/mvel2/ast/Proto;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {p1}, Lorg/mvel2/ast/Proto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mvel2/ParserConfiguration;->addImport(Ljava/lang/String;Lorg/mvel2/ast/Proto;)V

    return-void
.end method

.method public addIndexedInput(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    .line 6
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addIndexedInput([Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3
    iget-object v3, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addIndexedInputs(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public addIndexedLocals(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addIndexedLocals([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    .line 2
    iget-object p1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addInput(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 3
    const-class p2, Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public addInput(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3

    if-nez p2, :cond_0

    .line 5
    const-class p2, Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    .line 9
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 12
    array-length v0, p3

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_4

    .line 13
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p2

    const/4 v0, 0x0

    .line 14
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 15
    aget-object v1, p2, v0

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v0

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong number of type parameters for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addInputs(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public addPackageImport(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->addPackageImport(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addTypeParameters(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/util/Map$Entry;

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->initializeTables()V

    .line 8
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 9
    const-class p2, Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->makeVisible(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->initializeTables()V

    .line 2
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "statically-typed variable already defined in scope: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 4
    const-class p2, Ljava/lang/Object;

    .line 5
    :cond_2
    iget-object p3, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->makeVisible(Ljava/lang/String;)V

    return-void
.end method

.method public addVariables(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->initializeTables()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public createColoringSubcontext()Lorg/mvel2/ParserContext;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/mvel2/ParserContext$1;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lorg/mvel2/ParserContext$1;-><init>(Lorg/mvel2/ParserContext;Lorg/mvel2/ParserConfiguration;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->initializeTables()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 20
    .line 21
    iput-object v1, v0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 24
    .line 25
    iput-object v1, v0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 28
    .line 29
    iput-object v1, v0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    .line 32
    .line 33
    iput-object v1, v0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    .line 34
    .line 35
    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 36
    .line 37
    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 38
    .line 39
    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    .line 40
    .line 41
    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    .line 42
    .line 43
    iget-object v1, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 44
    .line 45
    iput-object v1, v0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v1, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 48
    .line 49
    iput-object v1, v0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    .line 52
    .line 53
    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    .line 54
    .line 55
    iget-object v1, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 56
    .line 57
    iput-object v1, v0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 58
    .line 59
    iget-object v1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    .line 60
    .line 61
    iput-object v1, v0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    .line 62
    .line 63
    iget v1, p0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 64
    .line 65
    iput v1, v0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 66
    .line 67
    iget v1, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    .line 68
    .line 69
    iput v1, v0, Lorg/mvel2/ParserContext;->lineOffset:I

    .line 70
    .line 71
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 72
    .line 73
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 74
    .line 75
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 76
    .line 77
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 78
    .line 79
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 80
    .line 81
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 82
    .line 83
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 84
    .line 85
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 86
    .line 87
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 88
    .line 89
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 90
    .line 91
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 92
    .line 93
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 94
    .line 95
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 96
    .line 97
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 98
    .line 99
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 100
    .line 101
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 102
    .line 103
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 104
    .line 105
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    const-string v1, "create a subContext first"

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0
.end method

.method public createSubcontext()Lorg/mvel2/ParserContext;
    .locals 2

    .line 1
    new-instance v0, Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p0, v0, Lorg/mvel2/ParserContext;->parent:Lorg/mvel2/ParserContext;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addInputs(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addVariables(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addIndexedInputs(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->addTypeParameters(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 35
    .line 36
    iput-object v1, v0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    .line 39
    .line 40
    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 43
    .line 44
    iput-object v1, v0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v1, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 47
    .line 48
    iput-object v1, v0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 49
    .line 50
    iget-object v1, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    .line 51
    .line 52
    iput-object v1, v0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    .line 53
    .line 54
    iget-object v1, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 55
    .line 56
    iput-object v1, v0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 57
    .line 58
    iget-object v1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    .line 59
    .line 60
    iput-object v1, v0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    .line 61
    .line 62
    iget v1, p0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 63
    .line 64
    iput v1, v0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 65
    .line 66
    iget v1, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    .line 67
    .line 68
    iput v1, v0, Lorg/mvel2/ParserContext;->lineOffset:I

    .line 69
    .line 70
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 71
    .line 72
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 73
    .line 74
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 75
    .line 76
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 77
    .line 78
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 79
    .line 80
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 81
    .line 82
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 83
    .line 84
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 85
    .line 86
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 87
    .line 88
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 89
    .line 90
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 91
    .line 92
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 93
    .line 94
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 95
    .line 96
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 97
    .line 98
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 99
    .line 100
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 101
    .line 102
    iget-boolean v1, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 103
    .line 104
    iput-boolean v1, v0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 105
    .line 106
    return-object v0
.end method

.method public declareFunction(Lorg/mvel2/ast/Function;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/mvel2/ast/Function;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCompiledExpressionCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mvel2/compiler/CompiledExpression;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->compiledExpressionCache:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->compiledExpressionCache:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->compiledExpressionCache:Ljava/util/Map;

    .line 13
    .line 14
    return-object v0
.end method

.method public getErrorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getEvaluationContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->evaluationContext:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFunction(Ljava/lang/String;)Lorg/mvel2/ast/Function;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/mvel2/ast/Function;

    .line 12
    .line 13
    :goto_0
    return-object p1
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getImport(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getImports()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIndexedInputs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initIndexedVariables()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 5
    .line 6
    return-object v0
.end method

.method public getIndexedVarNames()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public getInputs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterceptors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lyz/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getInterceptors()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLastLineLabel()Lorg/mvel2/ast/LineLabel;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastTypeParameters()[Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineFor(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lorg/mvel2/util/j$b;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Lorg/mvel2/util/j$b;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, -0x1

    .line 25
    :goto_0
    return p1
.end method

.method public getLineOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getParserConfiguration()Lorg/mvel2/ParserConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtoImport(Ljava/lang/String;)Lorg/mvel2/ast/Proto;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/mvel2/ast/Proto;

    .line 12
    .line 13
    return-object p1
.end method

.method public getReturnTypeCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->returnTypeCache:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->returnTypeCache:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->returnTypeCache:Ljava/util/Map;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRootParser()Lorg/mvel2/compiler/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStaticImport(Ljava/lang/String;)Lorg/mvel2/util/MethodStub;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->getStaticImport(Ljava/lang/String;)Lorg/mvel2/util/MethodStub;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStaticOrClassImport(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->getStaticOrClassImport(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTypeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->typeParameters:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/Map;

    .line 12
    .line 13
    return-object p1
.end method

.method public getTypeParametersAsArray(Ljava/lang/String;)[Ljava/lang/reflect/Type;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    check-cast v0, Ljava/lang/Class;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    array-length v2, v0

    .line 36
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->getTypeParameters(Ljava/lang/String;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_2
    array-length v3, v0

    .line 47
    if-ge v1, v3, :cond_3

    .line 48
    .line 49
    aget-object v3, v0, v1

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/reflect/Type;

    .line 60
    .line 61
    aput-object v3, v2, v1

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    return-object v2
.end method

.method public getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Class;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Class;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    const-class p1, Ljava/lang/Object;

    .line 40
    .line 41
    return-object p1
.end method

.method public getVarOrInputTypeOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Class;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Class;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public getVariableScope()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Set;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string v1, "no context"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public getVariables()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasFunction()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunction(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->globalFunctions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasImport(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->hasImport(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasImports()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->hasImports()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasIndexedInputs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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

.method public hasProtoImport(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    instance-of p1, p1, Lorg/mvel2/ast/Proto;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public hasVarOrInput(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public incrementLineCount(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 5
    .line 6
    return v0
.end method

.method public initLineMapping(Ljava/lang/String;[C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v1, Lorg/mvel2/util/j;

    .line 15
    .line 16
    invoke-direct {v1, p2}, Lorg/mvel2/util/j;-><init>([C)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/mvel2/util/j;->b()Lorg/mvel2/util/j$b;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public initializeTables()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v0, :cond_7

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->pushVariableScope()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->getVariableScope()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 53
    .line 54
    invoke-virtual {v1}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 66
    .line 67
    const-string v2, "this"

    .line 68
    .line 69
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    iget-object v1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Class;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    array-length v3, v2

    .line 88
    const/4 v4, 0x0

    .line 89
    move v5, v4

    .line 90
    :goto_0
    if-ge v5, v3, :cond_3

    .line 91
    .line 92
    aget-object v6, v2, v5

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    and-int/lit8 v7, v7, 0x9

    .line 99
    .line 100
    if-eqz v7, :cond_2

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    array-length v2, v1

    .line 117
    move v3, v4

    .line 118
    :goto_1
    if-ge v3, v2, :cond_7

    .line 119
    .line 120
    aget-object v5, v1, v3

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v7, 0x1

    .line 127
    and-int/2addr v6, v7

    .line 128
    if-eqz v6, :cond_6

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const-string v8, "get"

    .line 135
    .line 136
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-nez v6, :cond_5

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const-string v8, "is"

    .line 147
    .line 148
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_4

    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 159
    .line 160
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-nez v6, :cond_5

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const-class v8, Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_4

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-static {v5}, Lorg/mvel2/util/p;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_7
    return-void
.end method

.method public isAllowBootstrapBypass()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowBootstrapBypass()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isBlockSymbols()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCompiled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDebugSymbols()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExecutableCodeReached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFatalError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFunctionContext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->functionContext:Z

    .line 2
    .line 3
    return v0
.end method

.method public isIndexAllocation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLineMapped(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->sourceLineLookups:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public isOptimizerNotified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRetainParserState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStrictTypeEnforcement()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStrongTyping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVariableVisible(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int/2addr v0, v2

    .line 36
    :goto_0
    iget-object v3, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :cond_2
    add-int/lit8 v3, v0, -0x1

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    return v1

    .line 56
    :cond_3
    move v0, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    :goto_1
    return v2

    .line 59
    :cond_5
    :goto_2
    return v1
.end method

.method public isVariablesEscape()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ParserContext;->variablesEscape:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVisitedLine(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public makeVisible(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->getVariableScope()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    const-string v0, "no context"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public optimizationNotify()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/ParserContext;->optimizationMode:Z

    .line 3
    .line 4
    return-void
.end method

.method public popVariableScope()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public processTables()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public pushVariableScope()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mvel2/ParserContext;->initVariableVisibility()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mvel2/ParserContext;->variableVisibility:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setAllowBootstrapBypass(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->setAllowBootstrapBypass(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBlockSymbols(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->blockSymbols:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCompiled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->compiled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDebugSymbols(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->debugSymbols:Z

    .line 2
    .line 3
    return-void
.end method

.method public setErrorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mvel2/ParserContext;->errorList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setExecutableCodeReached(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->executableCodeReached:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFatalError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->fatalError:Z

    .line 2
    .line 3
    return-void
.end method

.method public setImports(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    instance-of v2, v1, Ljava/lang/Class;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    instance-of v2, v1, Ljava/lang/reflect/Method;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    check-cast v1, Ljava/lang/reflect/Method;

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    instance-of v2, v1, Lorg/mvel2/util/MethodStub;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    check-cast v1, Lorg/mvel2/util/MethodStub;

    .line 71
    .line 72
    invoke-virtual {p0, v0, v1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "invalid element in imports map: "

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, " ("

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, ")"

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_4
    return-void
.end method

.method public setIndexAllocation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->indexAllocation:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInputs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mvel2/ParserContext;->inputs:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setInterceptors(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lyz/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/ParserConfiguration;->setInterceptors(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLastLineLabel(Lorg/mvel2/ast/LineLabel;)Lorg/mvel2/ast/LineLabel;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ParserContext;->lastLineLabel:Lorg/mvel2/ast/LineLabel;

    .line 2
    .line 3
    return-object p1
.end method

.method public setLastTypeParameters([Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ParserContext;->lastTypeParameters:[Ljava/lang/reflect/Type;

    .line 2
    .line 3
    return-void
.end method

.method public setLineAndOffset(II)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public setLineCount(I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/ParserContext;->lineCount:I

    .line 2
    .line 3
    return p1
.end method

.method public setLineOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/ParserContext;->lineOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public setRetainParserState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->retainParserState:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRootParser(Lorg/mvel2/compiler/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ParserContext;->rootParser:Lorg/mvel2/compiler/b;

    .line 2
    .line 3
    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mvel2/ParserContext;->sourceFile:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setStrictTypeEnforcement(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStrongTyping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->strongTyping:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/mvel2/ParserContext;->strictTypeEnforcement:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVariables(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mvel2/ParserContext;->variables:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public stronglyTyped()Lorg/mvel2/ParserContext;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/mvel2/ParserContext;->setStrongTyping(Z)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public variableIndexOf(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lorg/mvel2/ParserContext;->indexedLocals:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr v0, p1

    .line 29
    :cond_0
    return v0

    .line 30
    :cond_1
    return v1
.end method

.method public visitLine(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v1, Ljava/util/TreeSet;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ParserContext;->visitedLines:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/Set;

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public withImport(Ljava/lang/Class;)Lorg/mvel2/ParserContext;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->addImport(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public withIndexedVars([Ljava/lang/String;)Lorg/mvel2/ParserContext;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/mvel2/ParserContext;->indexedInputs:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public withInput(Ljava/lang/String;Ljava/lang/Class;)Lorg/mvel2/ParserContext;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public withInputs(Ljava/util/Map;)Lorg/mvel2/ParserContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/mvel2/ParserContext;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->setInputs(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public withTypeParameters(Ljava/util/Map;)Lorg/mvel2/ParserContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;>;)",
            "Lorg/mvel2/ParserContext;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/ParserContext;->addTypeParameters(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
