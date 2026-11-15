.class public Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;
.super Lorg/mvel2/optimizers/AbstractOptimizer;
.source "source.java"

# interfaces
.implements Lorg/mvel2/optimizers/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer$a;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARRAY:I = 0x0

.field private static final EMPTYARG:[Ljava/lang/Object;

.field private static final EMPTYCLS:[Ljava/lang/Class;

.field private static final LIST:I = 0x1

.field private static LIST_IMPL:Ljava/lang/String; = null

.field private static final MAP:I = 0x2

.field private static final MAP_IMPL:Ljava/lang/String; = "java/util/HashMap"

.field private static NAMESPACE:Ljava/lang/String; = null

.field private static final OPCODES_VERSION:I

.field private static final VAL:I = 0x3

.field private static classLoader:Lorg/mvel2/util/k;


# instance fields
.field private buildLog:Lorg/mvel2/util/s;

.field private className:Ljava/lang/String;

.field private compileDepth:I

.field private compiledInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mvel2/compiler/ExecutableStatement;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Ljava/lang/Object;

.field private cw:Lvz/g;

.field private deferFinish:Z

.field private first:Z

.field private ingressType:Ljava/lang/Class;

.field private literal:Z

.field private maxlocals:I

.field private methNull:Z

.field private mv:Lvz/r;

.field private noinit:Z

.field private propNull:Z

.field private returnType:Ljava/lang/Class;

.field private stacksize:I

.field private thisRef:Ljava/lang/Object;

.field private time:J

.field private val:Ljava/lang/Object;

.field private variableFactory:Lorg/mvel2/integration/VariableResolverFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/mvel2/util/n;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "1.4"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x30

    .line 14
    .line 15
    sput v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v1, "1.5"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x31

    .line 27
    .line 28
    sput v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string v1, "1.6"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    const-string v1, "1.7"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    const-string v1, "1.8"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    const-string v1, "9"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    const-string v1, "10"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    const-string v1, "11"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    const-string v1, "12"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/16 v0, 0x2e

    .line 89
    .line 90
    sput v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    :goto_0
    const/16 v0, 0x32

    .line 94
    .line 95
    sput v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    .line 96
    .line 97
    :goto_1
    const-string v0, "mvel2.namespace"

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez v0, :cond_4

    .line 104
    .line 105
    const-string v0, "org/mvel2/"

    .line 106
    .line 107
    sput-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    sput-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 111
    .line 112
    :goto_2
    const-string v0, "mvel2.jit.list_impl"

    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, "util/FastList"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->LIST_IMPL:Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    sput-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->LIST_IMPL:Ljava/lang/String;

    .line 143
    .line 144
    :goto_3
    const/4 v0, 0x0

    .line 145
    new-array v1, v0, [Ljava/lang/Object;

    .line 146
    .line 147
    sput-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->EMPTYARG:[Ljava/lang/Object;

    .line 148
    .line 149
    new-array v0, v0, [Ljava/lang/Class;

    .line 150
    .line 151
    sput-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->EMPTYCLS:[Ljava/lang/Class;

    .line 152
    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->noinit:Z

    .line 4
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    .line 5
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->literal:Z

    .line 6
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propNull:Z

    .line 7
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->methNull:Z

    .line 8
    iput v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->stacksize:I

    .line 9
    iput v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->maxlocals:I

    .line 10
    iput v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compileDepth:I

    .line 11
    new-instance v1, Lvz/g;

    invoke-direct {v1, v0}, Lvz/g;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Lvz/g;Lvz/r;Ljava/util/ArrayList;Ljava/lang/String;Lorg/mvel2/util/s;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvz/g;",
            "Lvz/r;",
            "Ljava/util/ArrayList<",
            "Lorg/mvel2/compiler/ExecutableStatement;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/mvel2/util/s;",
            "I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->literal:Z

    .line 15
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propNull:Z

    .line 16
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->methNull:Z

    .line 17
    iput v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->stacksize:I

    .line 18
    iput v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->maxlocals:I

    .line 19
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 20
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 21
    iput-object p3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 22
    iput-object p4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    add-int/2addr p6, v0

    .line 24
    iput p6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compileDepth:I

    .line 25
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->noinit:Z

    .line 26
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    return-void
.end method

.method private _finishJIT()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lvz/r;->j(I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 34
    .line 35
    const/16 v1, 0xb0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->dumpAdvancedDebugging()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 44
    .line 45
    iget v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->stacksize:I

    .line 46
    .line 47
    iget v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->maxlocals:I

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4}, Lvz/r;->u(II)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 53
    .line 54
    invoke-virtual {v0}, Lvz/r;->f()V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v4, 0x1

    .line 62
    const-string v5, "getKnownEgressType"

    .line 63
    .line 64
    const-string v6, "()Ljava/lang/Class;"

    .line 65
    .line 66
    invoke-virtual/range {v3 .. v8}, Lvz/g;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 71
    .line 72
    invoke-virtual {v0}, Lvz/r;->e()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 76
    .line 77
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->visitConstantClass(Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 86
    .line 87
    invoke-virtual {v0, v2, v2}, Lvz/r;->u(II)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 91
    .line 92
    invoke-virtual {v0}, Lvz/r;->f()V

    .line 93
    .line 94
    .line 95
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propNull:Z

    .line 96
    .line 97
    const-string v3, "integration/PropertyHandler;"

    .line 98
    .line 99
    const-string v4, "L"

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    iget-object v5, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    sget-object v6, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v6, 0x1

    .line 128
    const-string v7, "nullPropertyHandler"

    .line 129
    .line 130
    invoke-virtual/range {v5 .. v10}, Lvz/g;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lvz/l;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lvz/l;->c()V

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->methNull:Z

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    iget-object v5, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    sget-object v4, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    const/4 v9, 0x0

    .line 164
    const/4 v10, 0x0

    .line 165
    const/4 v6, 0x1

    .line 166
    const-string v7, "nullMethodHandler"

    .line 167
    .line 168
    invoke-virtual/range {v5 .. v10}, Lvz/g;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lvz/l;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lvz/l;->c()V

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildInputs()V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 179
    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    invoke-virtual {v0}, Lorg/mvel2/util/s;->length()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 189
    .line 190
    if-eqz v0, :cond_5

    .line 191
    .line 192
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    const/4 v8, 0x0

    .line 196
    const/4 v4, 0x1

    .line 197
    const-string v5, "toString"

    .line 198
    .line 199
    const-string v6, "()Ljava/lang/String;"

    .line 200
    .line 201
    invoke-virtual/range {v3 .. v8}, Lvz/g;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 206
    .line 207
    invoke-virtual {v0}, Lvz/r;->e()V

    .line 208
    .line 209
    .line 210
    new-instance v0, Lvz/q;

    .line 211
    .line 212
    invoke-direct {v0}, Lvz/q;-><init>()V

    .line 213
    .line 214
    .line 215
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 216
    .line 217
    invoke-virtual {v3, v0}, Lvz/r;->o(Lvz/q;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 228
    .line 229
    invoke-virtual {v4}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v4, "\n\n## { "

    .line 237
    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    new-instance v4, Ljava/lang/String;

    .line 242
    .line 243
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 244
    .line 245
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v4, " }"

    .line 252
    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v0, v3}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lvz/q;

    .line 269
    .line 270
    invoke-direct {v0}, Lvz/q;-><init>()V

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 274
    .line 275
    invoke-virtual {v1, v0}, Lvz/r;->o(Lvz/q;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 279
    .line 280
    invoke-virtual {v0, v2, v2}, Lvz/r;->u(II)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 284
    .line 285
    invoke-virtual {v0}, Lvz/r;->f()V

    .line 286
    .line 287
    .line 288
    :cond_5
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 289
    .line 290
    invoke-virtual {v0}, Lvz/g;->d()V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method private _getAccessor(Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 11

    .line 1
    instance-of v0, p1, Ljava/util/List;

    .line 2
    .line 3
    const/16 v1, 0xb9

    .line 4
    .line 5
    const-string v2, "(I)V"

    .line 6
    .line 7
    const-string v3, "<init>"

    .line 8
    .line 9
    const/16 v4, 0xb7

    .line 10
    .line 11
    const/16 v5, 0xbb

    .line 12
    .line 13
    const/4 v6, 0x3

    .line 14
    const/16 v7, 0x57

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    const/16 v9, 0x59

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 22
    .line 23
    sget-object v10, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->LIST_IMPL:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v5, v10}, Lvz/r;->E(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 29
    .line 30
    invoke-virtual {v0, v9}, Lvz/r;->j(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 34
    .line 35
    invoke-virtual {v0, v9}, Lvz/r;->j(I)V

    .line 36
    .line 37
    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 48
    .line 49
    sget-object v5, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->LIST_IMPL:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v4, v5, v3, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eq v0, v6, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 75
    .line 76
    invoke-virtual {v0, v7}, Lvz/r;->j(I)V

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 80
    .line 81
    const-string v2, "add"

    .line 82
    .line 83
    const-string v3, "(Ljava/lang/Object;)Z"

    .line 84
    .line 85
    const-string v4, "java/util/List"

    .line 86
    .line 87
    invoke-virtual {v0, v1, v4, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 91
    .line 92
    invoke-virtual {v0, v7}, Lvz/r;->j(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 96
    .line 97
    invoke-virtual {v0, v9}, Lvz/r;->j(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-class p1, Ljava/util/List;

    .line 102
    .line 103
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 104
    .line 105
    return v8

    .line 106
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 111
    .line 112
    const-string v8, "java/util/HashMap"

    .line 113
    .line 114
    invoke-virtual {v0, v5, v8}, Lvz/r;->E(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 118
    .line 119
    invoke-virtual {v0, v9}, Lvz/r;->j(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 123
    .line 124
    invoke-virtual {v0, v9}, Lvz/r;->j(I)V

    .line 125
    .line 126
    .line 127
    check-cast p1, Ljava/util/Map;

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 137
    .line 138
    invoke-virtual {v0, v4, v8, v3, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 160
    .line 161
    const/16 v4, 0xc0

    .line 162
    .line 163
    const-string v5, "java/util/Map"

    .line 164
    .line 165
    invoke-virtual {v3, v4, v5}, Lvz/r;->E(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v2, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eq v3, v6, :cond_3

    .line 173
    .line 174
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 175
    .line 176
    invoke-virtual {v3, v7}, Lvz/r;->j(I)V

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-direct {p0, v2, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eq v2, v6, :cond_4

    .line 188
    .line 189
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 190
    .line 191
    invoke-virtual {v2, v7}, Lvz/r;->j(I)V

    .line 192
    .line 193
    .line 194
    :cond_4
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 195
    .line 196
    const-string v3, "put"

    .line 197
    .line 198
    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 199
    .line 200
    invoke-virtual {v2, v1, v5, v3, v4}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 204
    .line 205
    invoke-virtual {v2, v7}, Lvz/r;->j(I)V

    .line 206
    .line 207
    .line 208
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 209
    .line 210
    invoke-virtual {v2, v9}, Lvz/r;->j(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_5
    const-class p1, Ljava/util/Map;

    .line 215
    .line 216
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 217
    .line 218
    const/4 p1, 0x2

    .line 219
    return p1

    .line 220
    :cond_6
    instance-of v0, p1, [Ljava/lang/Object;

    .line 221
    .line 222
    if-eqz v0, :cond_d

    .line 223
    .line 224
    move-object v0, p1

    .line 225
    check-cast v0, [Ljava/lang/Object;

    .line 226
    .line 227
    array-length v0, v0

    .line 228
    new-array v0, v0, [Lorg/mvel2/compiler/a;

    .line 229
    .line 230
    const/16 v0, 0x5b

    .line 231
    .line 232
    const/4 v1, 0x0

    .line 233
    if-eqz p2, :cond_7

    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    move v3, v1

    .line 240
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-ne v4, v0, :cond_8

    .line 245
    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_7
    const-class p2, [Ljava/lang/Object;

    .line 250
    .line 251
    move v3, v8

    .line 252
    :cond_8
    :try_start_0
    invoke-static {p2}, Lorg/mvel2/util/m;->T(Ljava/lang/Class;)Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    move-object v4, p1

    .line 257
    check-cast v4, [Ljava/lang/Object;

    .line 258
    .line 259
    array-length v4, v4

    .line 260
    invoke-direct {p0, v2, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->createArray(Ljava/lang/Class;I)V

    .line 261
    .line 262
    .line 263
    if-le v3, v8, :cond_9

    .line 264
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    sub-int/2addr v3, v8

    .line 271
    invoke-static {v0, v3}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v0, "L"

    .line 279
    .line 280
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v0, ";"

    .line 295
    .line 296
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 304
    .line 305
    const/4 v4, 0x0

    .line 306
    invoke-static {v4, v0, v3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    goto :goto_3

    .line 311
    :catch_0
    move-exception p1

    .line 312
    goto :goto_5

    .line 313
    :cond_9
    invoke-static {p2}, Lorg/mvel2/util/p;->h(Ljava/lang/Class;)Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :goto_3
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 318
    .line 319
    invoke-virtual {v3, v9}, Lvz/r;->j(I)V

    .line 320
    .line 321
    .line 322
    check-cast p1, [Ljava/lang/Object;

    .line 323
    .line 324
    array-length v3, p1

    .line 325
    move v4, v1

    .line 326
    move v5, v4

    .line 327
    :goto_4
    if-ge v4, v3, :cond_c

    .line 328
    .line 329
    aget-object v8, p1, v4

    .line 330
    .line 331
    invoke-direct {p0, v5}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 332
    .line 333
    .line 334
    invoke-direct {p0, v8, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    if-eq v8, v6, :cond_a

    .line 339
    .line 340
    iget-object v8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 341
    .line 342
    invoke-virtual {v8, v7}, Lvz/r;->j(I)V

    .line 343
    .line 344
    .line 345
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    if-eqz v8, :cond_b

    .line 350
    .line 351
    invoke-direct {p0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    .line 352
    .line 353
    .line 354
    :cond_b
    invoke-virtual {p0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->arrayStore(Ljava/lang/Class;)V

    .line 355
    .line 356
    .line 357
    iget-object v8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 358
    .line 359
    invoke-virtual {v8, v9}, Lvz/r;->j(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .line 361
    .line 362
    add-int/lit8 v5, v5, 0x1

    .line 363
    .line 364
    add-int/lit8 v4, v4, 0x1

    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_c
    return v1

    .line 368
    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 369
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v2, "this error should never throw:"

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_e

    .line 404
    .line 405
    check-cast p1, Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 412
    .line 413
    invoke-static {p1, v0}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {p2}, Lorg/mvel2/util/m;->T(Ljava/lang/Class;)Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_e
    check-cast p1, Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 432
    .line 433
    invoke-static {p1, p2}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;)Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    :goto_6
    return v6
.end method

.method private _initJIT()V
    .locals 14

    .line 1
    invoke-static {}, Lorg/mvel2/d;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/mvel2/util/s;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lvz/g;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-direct {v0, v1}, Lvz/g;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 28
    .line 29
    sget v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "ASMAccessorImpl_"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "\\-"

    .line 52
    .line 53
    const-string v6, "_"

    .line 54
    .line 55
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    const-wide/16 v6, 0xa

    .line 67
    .line 68
    div-long/2addr v4, v6

    .line 69
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 77
    .line 78
    mul-double/2addr v4, v6

    .line 79
    double-to-int v4, v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iput-object v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 88
    .line 89
    const-string v6, "java/lang/Object"

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v5, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v5, "compiler/Accessor"

    .line 102
    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    filled-new-array {v3}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    const/16 v3, 0x21

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    invoke-virtual/range {v1 .. v7}, Lvz/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 122
    .line 123
    const-string v10, "<init>"

    .line 124
    .line 125
    const-string v11, "()V"

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v9, 0x1

    .line 130
    invoke-virtual/range {v8 .. v13}, Lvz/g;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lvz/r;->e()V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x19

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Lvz/r;->F(II)V

    .line 141
    .line 142
    .line 143
    const-string v1, "java/lang/Object"

    .line 144
    .line 145
    const-string v2, "<init>"

    .line 146
    .line 147
    const-string v3, "()V"

    .line 148
    .line 149
    const/16 v4, 0xb7

    .line 150
    .line 151
    invoke-virtual {v0, v4, v1, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/16 v1, 0xb1

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 157
    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1, v1}, Lvz/r;->u(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lvz/r;->f()V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 167
    .line 168
    const-string v4, "getValue"

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;L"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, "integration/VariableResolverFactory;)Ljava/lang/Object;"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    const/4 v6, 0x0

    .line 195
    const/4 v7, 0x0

    .line 196
    const/4 v3, 0x1

    .line 197
    invoke-virtual/range {v2 .. v7}, Lvz/g;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 202
    .line 203
    invoke-virtual {v0}, Lvz/r;->e()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catchall_0
    move-exception v1

    .line 208
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    throw v1
.end method

.method private _initJIT2()V
    .locals 14

    .line 1
    invoke-static {}, Lorg/mvel2/d;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/mvel2/util/s;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lvz/g;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-direct {v0, v1}, Lvz/g;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 28
    .line 29
    sget v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "ASMAccessorImpl_"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "\\-"

    .line 52
    .line 53
    const-string v6, "_"

    .line 54
    .line 55
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    const-wide/16 v6, 0xa

    .line 67
    .line 68
    div-long/2addr v4, v6

    .line 69
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 77
    .line 78
    mul-double/2addr v4, v6

    .line 79
    double-to-int v4, v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iput-object v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 88
    .line 89
    const-string v6, "java/lang/Object"

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v5, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v5, "compiler/Accessor"

    .line 102
    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    filled-new-array {v3}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    const/16 v3, 0x21

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    invoke-virtual/range {v1 .. v7}, Lvz/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 122
    .line 123
    const-string v10, "<init>"

    .line 124
    .line 125
    const-string v11, "()V"

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v9, 0x1

    .line 130
    invoke-virtual/range {v8 .. v13}, Lvz/g;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lvz/r;->e()V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x19

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Lvz/r;->F(II)V

    .line 141
    .line 142
    .line 143
    const-string v1, "java/lang/Object"

    .line 144
    .line 145
    const-string v2, "<init>"

    .line 146
    .line 147
    const-string v3, "()V"

    .line 148
    .line 149
    const/16 v4, 0xb7

    .line 150
    .line 151
    invoke-virtual {v0, v4, v1, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/16 v1, 0xb1

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 157
    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1, v1}, Lvz/r;->u(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lvz/r;->f()V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 167
    .line 168
    const-string v4, "setValue"

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;L"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, "integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    const/4 v6, 0x0

    .line 195
    const/4 v7, 0x0

    .line 196
    const/4 v3, 0x1

    .line 197
    invoke-virtual/range {v2 .. v7}, Lvz/g;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 202
    .line 203
    invoke-virtual {v0}, Lvz/r;->e()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catchall_0
    move-exception v1

    .line 208
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    throw v1
.end method

.method private _initializeAccessor()Lorg/mvel2/compiler/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 10
    .line 11
    invoke-virtual {v2}, Lvz/g;->r()[B

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0, v0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->loadClass(Ljava/lang/String;[B)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    new-array v2, v2, [Ljava/lang/Class;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    :goto_0
    iget-object v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v3, v4, :cond_2

    .line 50
    .line 51
    const-class v4, Lorg/mvel2/compiler/ExecutableStatement;

    .line 52
    .line 53
    aput-object v4, v2, v3

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    new-array v4, v4, [Lorg/mvel2/compiler/ExecutableStatement;

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_1
    iget-boolean v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propNull:Z

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    const-string v3, "nullPropertyHandler"

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {}, Lyz/d;->b()Lyz/c;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-boolean v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->methNull:Z

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    const-string v3, "nullMethodHandler"

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {}, Lyz/d;->a()Lyz/c;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    :cond_4
    check-cast v2, Lorg/mvel2/compiler/a;

    .line 111
    .line 112
    return-object v2

    .line 113
    :goto_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 114
    .line 115
    const-string v3, "**** COMPILER BUG! REPORT THIS IMMEDIATELY AT http://jira.codehaus.org/browse/MVEL"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v4, "Expression: "

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 131
    .line 132
    if-nez v4, :cond_5

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    new-instance v1, Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    .line 138
    .line 139
    .line 140
    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0
.end method

.method private addPrintOut(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 2
    .line 3
    const-string v1, "out"

    .line 4
    .line 5
    const-string v2, "Ljava/io/PrintStream;"

    .line 6
    .line 7
    const/16 v3, 0xb2

    .line 8
    .line 9
    const-string v4, "java/lang/System"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v4, v1, v2}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 20
    .line 21
    const-string v0, "println"

    .line 22
    .line 23
    const-string v1, "(Ljava/lang/String;)V"

    .line 24
    .line 25
    const/16 v2, 0xb6

    .line 26
    .line 27
    const-string v3, "java/io/PrintStream"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v3, v0, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private addSubstatement(Lorg/mvel2/compiler/ExecutableStatement;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lvz/r;->F(II)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 15
    .line 16
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "p"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/lit8 v3, v3, -0x1

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "L"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget-object v4, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, "compiler/ExecutableStatement;"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/16 v4, 0xb4

    .line 68
    .line 69
    invoke-virtual {p1, v4, v0, v2, v3}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    invoke-virtual {p1, v1, v0}, Lvz/r;->F(II)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 79
    .line 80
    const/4 v0, 0x3

    .line 81
    invoke-virtual {p1, v1, v0}, Lvz/r;->F(II)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 85
    .line 86
    const-class v0, Lorg/mvel2/compiler/ExecutableStatement;

    .line 87
    .line 88
    invoke-static {v0}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "(Ljava/lang/Object;L"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, "integration/VariableResolverFactory;)Ljava/lang/Object;"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/16 v2, 0xb9

    .line 117
    .line 118
    const-string v3, "getValue"

    .line 119
    .line 120
    invoke-virtual {p1, v2, v0, v3, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    return-object p1
.end method

.method private anyArrayCheck(Ljava/lang/Class;)V
    .locals 2

    .line 1
    const-class v0, [Z

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 8
    .line 9
    const-string v0, "[Z"

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-class v0, [I

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 20
    .line 21
    const-string v0, "[I"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-class v0, [F

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 32
    .line 33
    const-string v0, "[F"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-class v0, [D

    .line 40
    .line 41
    if-ne p1, v0, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 44
    .line 45
    const-string v0, "[D"

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-class v0, [S

    .line 52
    .line 53
    if-ne p1, v0, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 56
    .line 57
    const-string v0, "[S"

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const-class v0, [J

    .line 64
    .line 65
    if-ne p1, v0, :cond_5

    .line 66
    .line 67
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 68
    .line 69
    const-string v0, "[J"

    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const-class v0, [B

    .line 76
    .line 77
    if-ne p1, v0, :cond_6

    .line 78
    .line 79
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 80
    .line 81
    const-string v0, "[B"

    .line 82
    .line 83
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    const-class v0, [C

    .line 88
    .line 89
    if-ne p1, v0, :cond_7

    .line 90
    .line 91
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 92
    .line 93
    const-string v0, "[C"

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 100
    .line 101
    const-string v0, "[Ljava/lang/Object;"

    .line 102
    .line 103
    invoke-virtual {p1, v1, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method

.method private buildInputs()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/mvel2/util/s;

    .line 11
    .line 12
    const-string v1, "("

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/mvel2/util/s;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    const-string v4, "p"

    .line 26
    .line 27
    const-string v5, "compiler/ExecutableStatement;"

    .line 28
    .line 29
    const-string v6, "L"

    .line 30
    .line 31
    if-ge v3, v1, :cond_1

    .line 32
    .line 33
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 34
    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v8, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x0

    .line 72
    const/4 v8, 0x2

    .line 73
    invoke-virtual/range {v7 .. v12}, Lvz/g;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lvz/l;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lvz/l;->c()V

    .line 78
    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    sget-object v6, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const-string v3, ")V"

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 109
    .line 110
    .line 111
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->cw:Lvz/g;

    .line 112
    .line 113
    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v12, 0x0

    .line 119
    const/4 v8, 0x1

    .line 120
    const-string v9, "<init>"

    .line 121
    .line 122
    invoke-virtual/range {v7 .. v12}, Lvz/g;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lvz/r;->e()V

    .line 127
    .line 128
    .line 129
    const/16 v3, 0x19

    .line 130
    .line 131
    invoke-virtual {v0, v3, v2}, Lvz/r;->F(II)V

    .line 132
    .line 133
    .line 134
    const-string v7, "<init>"

    .line 135
    .line 136
    const-string v8, "()V"

    .line 137
    .line 138
    const/16 v9, 0xb7

    .line 139
    .line 140
    const-string v10, "java/lang/Object"

    .line 141
    .line 142
    invoke-virtual {v0, v9, v10, v7, v8}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    move v7, v2

    .line 146
    :goto_1
    if-ge v7, v1, :cond_2

    .line 147
    .line 148
    invoke-virtual {v0, v3, v2}, Lvz/r;->F(II)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v8, v7, 0x1

    .line 152
    .line 153
    invoke-virtual {v0, v3, v8}, Lvz/r;->F(II)V

    .line 154
    .line 155
    .line 156
    iget-object v9, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 157
    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    sget-object v11, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    const/16 v11, 0xb5

    .line 194
    .line 195
    invoke-virtual {v0, v11, v9, v7, v10}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    move v7, v8

    .line 199
    goto :goto_1

    .line 200
    :cond_2
    const/16 v1, 0xb1

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2, v2}, Lvz/r;->u(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lvz/r;->f()V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method private checkcast(Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    invoke-static {p1}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lvz/r;->E(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private compileAccessor()Lorg/mvel2/compiler/a;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 2
    .line 3
    :try_start_0
    sget-boolean v1, Lorg/mvel2/d;->h:Z

    .line 4
    .line 5
    const/16 v2, 0xb0

    .line 6
    .line 7
    const/16 v3, 0xc7

    .line 8
    .line 9
    const/16 v4, 0x59

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    const/4 v6, 0x3

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    if-nez v1, :cond_8

    .line 17
    .line 18
    :cond_0
    :goto_0
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 19
    .line 20
    iget v10, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 21
    .line 22
    if-ge v1, v10, :cond_10

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->nextSubToken()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    if-eq v1, v8, :cond_3

    .line 31
    .line 32
    if-eq v1, v7, :cond_2

    .line 33
    .line 34
    if-eq v1, v6, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getWithProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :catch_1
    move-exception v0

    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :catch_2
    move-exception v0

    .line 49
    move-object v5, v0

    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :catch_3
    move-exception v0

    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :catch_4
    move-exception v0

    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :catch_5
    move-exception v0

    .line 59
    move-object v5, v0

    .line 60
    goto/16 :goto_a

    .line 61
    .line 62
    :catch_6
    move-exception v0

    .line 63
    move-object v5, v0

    .line 64
    goto/16 :goto_b

    .line 65
    .line 66
    :catch_7
    move-exception v0

    .line 67
    move-object v5, v0

    .line 68
    goto/16 :goto_c

    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {p0, v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getCollectionProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {p0, v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {p0, v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :goto_1
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 97
    .line 98
    if-ne v1, v5, :cond_7

    .line 99
    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    iget-boolean v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    .line 103
    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_5
    new-instance v0, Lorg/mvel2/optimizers/OptimizationNotSupported;

    .line 109
    .line 110
    invoke-direct {v0}, Lorg/mvel2/optimizers/OptimizationNotSupported;-><init>()V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_6
    iput v9, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 115
    .line 116
    :cond_7
    iput-boolean v9, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    .line 117
    .line 118
    iget-boolean v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    .line 119
    .line 120
    if-eqz v1, :cond_0

    .line 121
    .line 122
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 123
    .line 124
    iget v10, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 125
    .line 126
    if-ge v1, v10, :cond_0

    .line 127
    .line 128
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 129
    .line 130
    invoke-virtual {v1, v4}, Lvz/r;->j(I)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lvz/q;

    .line 134
    .line 135
    invoke-direct {v1}, Lvz/q;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 139
    .line 140
    invoke-virtual {v10, v3, v1}, Lvz/r;->n(ILvz/q;)V

    .line 141
    .line 142
    .line 143
    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 144
    .line 145
    invoke-virtual {v10, v2}, Lvz/r;->j(I)V

    .line 146
    .line 147
    .line 148
    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 149
    .line 150
    invoke-virtual {v10, v1}, Lvz/r;->o(Lvz/q;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_8
    :goto_2
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 156
    .line 157
    iget v10, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 158
    .line 159
    if-ge v1, v10, :cond_10

    .line 160
    .line 161
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->nextSubToken()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_c

    .line 166
    .line 167
    if-eq v1, v8, :cond_b

    .line 168
    .line 169
    if-eq v1, v7, :cond_a

    .line 170
    .line 171
    if-eq v1, v6, :cond_9

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getWithProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    goto :goto_3

    .line 179
    :cond_a
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-direct {p0, v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getCollectionPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    goto :goto_3

    .line 188
    :cond_b
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-direct {p0, v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_3

    .line 197
    :cond_c
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-direct {p0, v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getBeanPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :goto_3
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 206
    .line 207
    if-ne v1, v5, :cond_f

    .line 208
    .line 209
    if-nez v0, :cond_e

    .line 210
    .line 211
    iget-boolean v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    .line 212
    .line 213
    if-nez v1, :cond_d

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_d
    new-instance v0, Lorg/mvel2/optimizers/OptimizationNotSupported;

    .line 217
    .line 218
    invoke-direct {v0}, Lorg/mvel2/optimizers/OptimizationNotSupported;-><init>()V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_e
    iput v9, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 223
    .line 224
    :cond_f
    iput-boolean v9, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    .line 225
    .line 226
    iget-boolean v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    .line 227
    .line 228
    if-eqz v1, :cond_8

    .line 229
    .line 230
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 231
    .line 232
    iget v10, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 233
    .line 234
    if-ge v1, v10, :cond_8

    .line 235
    .line 236
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 237
    .line 238
    invoke-virtual {v1, v4}, Lvz/r;->j(I)V

    .line 239
    .line 240
    .line 241
    new-instance v1, Lvz/q;

    .line 242
    .line 243
    invoke-direct {v1}, Lvz/q;-><init>()V

    .line 244
    .line 245
    .line 246
    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 247
    .line 248
    invoke-virtual {v10, v3, v1}, Lvz/r;->n(ILvz/q;)V

    .line 249
    .line 250
    .line 251
    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 252
    .line 253
    invoke-virtual {v10, v2}, Lvz/r;->j(I)V

    .line 254
    .line 255
    .line 256
    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 257
    .line 258
    invoke-virtual {v10, v1}, Lvz/r;->o(Lvz/q;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_10
    :goto_4
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->val:Ljava/lang/Object;

    .line 263
    .line 264
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_finishJIT()V

    .line 265
    .line 266
    .line 267
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initializeAccessor()Lorg/mvel2/compiler/a;

    .line 268
    .line 269
    .line 270
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/mvel2/PropertyAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/mvel2/optimizers/OptimizationNotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return-object v0

    .line 272
    :goto_5
    new-instance v1, Lorg/mvel2/CompileException;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 279
    .line 280
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 281
    .line 282
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    throw v1

    .line 286
    :goto_6
    throw v0

    .line 287
    :goto_7
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 288
    .line 289
    new-instance v2, Ljava/lang/String;

    .line 290
    .line 291
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 292
    .line 293
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 294
    .line 295
    .line 296
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 297
    .line 298
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 299
    .line 300
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 301
    .line 302
    move-object v1, v0

    .line 303
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :goto_8
    throw v0

    .line 308
    :goto_9
    new-instance v1, Lorg/mvel2/CompileException;

    .line 309
    .line 310
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getMessage()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 315
    .line 316
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 317
    .line 318
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    throw v1

    .line 322
    :goto_a
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 323
    .line 324
    new-instance v2, Ljava/lang/String;

    .line 325
    .line 326
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 327
    .line 328
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 329
    .line 330
    .line 331
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 332
    .line 333
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 334
    .line 335
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 336
    .line 337
    move-object v1, v0

    .line 338
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 339
    .line 340
    .line 341
    throw v0

    .line 342
    :goto_b
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 343
    .line 344
    new-instance v2, Ljava/lang/String;

    .line 345
    .line 346
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 347
    .line 348
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 349
    .line 350
    .line 351
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 352
    .line 353
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 354
    .line 355
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 356
    .line 357
    move-object v1, v0

    .line 358
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :goto_c
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    .line 363
    .line 364
    new-instance v2, Ljava/lang/String;

    .line 365
    .line 366
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 367
    .line 368
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 369
    .line 370
    .line 371
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 372
    .line 373
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 374
    .line 375
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 376
    .line 377
    move-object v1, v0

    .line 378
    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    .line 379
    .line 380
    .line 381
    throw v0
.end method

.method private createArray(Ljava/lang/Class;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 11
    .line 12
    const/16 v0, 0xbc

    .line 13
    .line 14
    invoke-static {p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->toPrimitiveTypeOperand(Ljava/lang/Class;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2, v0, p1}, Lvz/r;->l(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 23
    .line 24
    const/16 v0, 0xbd

    .line 25
    .line 26
    invoke-static {p1}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, p1}, Lvz/r;->E(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method private dataConversion(Ljava/lang/Class;)V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "DataConversion"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "convert"

    .line 35
    .line 36
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;"

    .line 37
    .line 38
    const/16 v3, 0xb8

    .line 39
    .line 40
    invoke-virtual {p1, v3, v0, v1, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private debug(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "\n"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method private dumpAdvancedDebugging()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "JIT Compiler Dump for: <<"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    .line 27
    .line 28
    .line 29
    move-object v2, v3

    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ">>\n-------------------------------\n"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "\n<END OF DUMP>\n"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lorg/mvel2/d;->x()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    :try_start_0
    invoke-static {}, Lorg/mvel2/util/m;->Q()Ljava/io/FileWriter;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->buildLog:Lorg/mvel2/util/s;

    .line 70
    .line 71
    invoke-virtual {v1}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    :cond_2
    return-void
.end method

.method private getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lorg/mvel2/ParserContext;->getVarOrInputTypeOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iput-object v5, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 3
    :cond_1
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 5
    :cond_2
    instance-of v0, v2, Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 6
    sget-boolean v7, Lorg/mvel2/d;->j:Z

    if-eqz v7, :cond_3

    const-string v7, "class"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    return-object v2

    .line 8
    :cond_3
    move-object v7, v2

    check-cast v7, Ljava/lang/Class;

    move v8, v6

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move v8, v4

    goto :goto_1

    :cond_5
    move v8, v4

    move-object v7, v5

    .line 10
    :goto_1
    invoke-static {v7}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_27

    if-eqz v7, :cond_6

    .line 11
    invoke-static {v7, v3}, Lorg/mvel2/util/n;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v9

    goto :goto_2

    :cond_6
    move-object v9, v5

    :goto_2
    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    .line 12
    invoke-interface {v9}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_7

    move-object v9, v5

    :cond_7
    const/16 v8, 0xb8

    const/16 v10, 0x19

    if-eqz v9, :cond_8

    .line 13
    invoke-static {}, Lyz/a;->a()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 14
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v11, v10, v6}, Lvz/r;->F(II)V

    .line 15
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 16
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v12, 0x3

    invoke-virtual {v11, v10, v12}, Lvz/r;->F(II)V

    .line 17
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "integration/GlobalListenerFactory"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(Ljava/lang/Object;Ljava/lang/String;L"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "integration/VariableResolverFactory;)V"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "notifyGetListeners"

    invoke-virtual {v11, v8, v12, v14, v13}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v2, v11, v12}, Lyz/a;->c(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 19
    :cond_8
    iget-boolean v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    const/4 v12, 0x2

    const-string v13, "this"

    if-eqz v11, :cond_c

    .line 20
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 21
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v0, v10, v12}, Lvz/r;->F(II)V

    .line 22
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    return-object v0

    .line 23
    :cond_9
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v11, :cond_b

    invoke-interface {v11, v3}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 24
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolverFactory;->isIndexedFactory()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, v3}, Lorg/mvel2/integration/VariableResolverFactory;->isTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    :try_start_0
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, v3}, Lorg/mvel2/integration/VariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->loadVariableByIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v2, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 27
    :catch_0
    new-instance v0, Lorg/mvel2/OptimizationFailure;

    invoke-direct {v0, v3}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_a
    :try_start_1
    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->loadVariableByName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, v3}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 30
    new-instance v0, Lorg/mvel2/OptimizationFailure;

    const-string v3, "critical error in JIT"

    invoke-direct {v0, v3, v2}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 31
    :cond_b
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v11, v10, v6}, Lvz/r;->F(II)V

    .line 32
    :cond_c
    instance-of v11, v9, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_d

    .line 33
    invoke-direct {v1, v2, v3, v7, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->optimizeFieldMethodProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_d
    const-string v11, "$"

    const/16 v14, 0xb9

    const/16 v15, 0xc0

    if-eqz v9, :cond_15

    .line 35
    iget-boolean v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    if-eqz v0, :cond_e

    .line 36
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v0, v10, v6}, Lvz/r;->F(II)V

    .line 37
    :cond_e
    :try_start_2
    move-object v0, v9

    check-cast v0, Ljava/lang/reflect/Method;

    sget-object v6, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->EMPTYARG:[Ljava/lang/Object;

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    iget-object v6, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v6, v8, :cond_f

    .line 39
    iget-object v6, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v15, v8}, Lvz/r;->E(ILjava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v10, v0

    goto/16 :goto_5

    .line 40
    :cond_f
    :goto_3
    move-object v6, v9

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    iput-object v6, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 41
    invoke-interface {v9}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 42
    iget-object v6, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v12, v9

    check-cast v12, Ljava/lang/reflect/Method;

    invoke-static {v12}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v14, v8, v10, v12}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 43
    :cond_10
    iget-object v6, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v12, v9

    check-cast v12, Ljava/lang/reflect/Method;

    invoke-static {v12}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb6

    invoke-virtual {v6, v13, v8, v10, v12}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 44
    :goto_4
    invoke-interface {v9}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 45
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 46
    new-instance v4, Lorg/mvel2/CompileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name collision between innerclass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; and bean accessor: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    invoke-direct {v4, v2, v3, v5}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 47
    :catch_4
    :cond_11
    throw v0

    .line 48
    :goto_5
    move-object v0, v9

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/mvel2/util/m;->z(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 49
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v15, v7}, Lvz/r;->E(ILjava/lang/String;)V

    .line 50
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 51
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v14, v7, v8, v0}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->EMPTYARG:[Ljava/lang/Object;

    invoke-virtual {v6, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    :goto_6
    invoke-static {}, Lyz/d;->e()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_12

    .line 54
    invoke-direct {v1, v9, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeOutNullHandler(Ljava/lang/reflect/Member;I)V

    goto :goto_7

    .line 55
    :cond_12
    invoke-static {}, Lyz/d;->b()Lyz/c;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    throw v5

    .line 56
    :cond_13
    :goto_7
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-static {v2}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    return-object v0

    .line 57
    :cond_14
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not access field: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v9, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v11, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v0

    .line 58
    :cond_15
    instance-of v6, v2, Ljava/util/Map;

    if-eqz v6, :cond_17

    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    iget-boolean v9, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    if-eqz v9, :cond_17

    .line 59
    :cond_16
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "java/util/Map"

    invoke-virtual {v0, v15, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 60
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v0, v3}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v4, "get"

    const-string v5, "(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v14, v2, v4, v5}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 63
    :cond_17
    iget-boolean v6, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    if-eqz v6, :cond_18

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 64
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v0, v10, v12}, Lvz/r;->F(II)V

    .line 65
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    return-object v0

    .line 66
    :cond_18
    const-string v6, "length"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->anyArrayCheck(Ljava/lang/Class;)V

    .line 68
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0xbe

    invoke-virtual {v0, v3}, Lvz/r;->j(I)V

    .line 69
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 70
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 71
    :cond_19
    sget-object v6, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 72
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1a

    .line 74
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    :cond_1a
    return-object v0

    .line 75
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->tryStaticAccess()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 76
    instance-of v0, v6, Ljava/lang/Class;

    if-eqz v0, :cond_1c

    .line 77
    move-object v0, v6

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    return-object v6

    .line 78
    :cond_1c
    instance-of v0, v6, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    .line 79
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeFunctionPointerStub(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object v6

    .line 80
    :cond_1d
    check-cast v6, Ljava/lang/reflect/Field;

    .line 81
    invoke-direct {v1, v2, v3, v7, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->optimizeFieldMethodProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1e
    if-eqz v0, :cond_23

    .line 82
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    :goto_8
    if-ge v4, v7, :cond_22

    aget-object v9, v6, v4

    .line 84
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 85
    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_9

    :cond_1f
    sget-boolean v2, Lorg/mvel2/d;->g:Z

    if-eqz v2, :cond_20

    .line 86
    :goto_9
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x57

    invoke-virtual {v0, v2}, Lvz/r;->j(I)V

    .line 87
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v2, v3, v4}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 89
    sget-object v0, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_20
    invoke-direct {v1, v0, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeFunctionPointerStub(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object v9

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 91
    :cond_22
    :try_start_4
    iget-object v4, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v4, v0, v5}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v0

    .line 93
    :cond_23
    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_a

    :cond_24
    sget-boolean v0, Lorg/mvel2/d;->g:Z

    if-eqz v0, :cond_25

    .line 94
    :goto_a
    invoke-direct/range {p0 .. p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_5
    :cond_25
    if-nez v2, :cond_26

    .line 95
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unresolvable property or identifier: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v0

    .line 96
    :cond_26
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not access: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; in class: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v0

    .line 97
    :cond_27
    invoke-static {v7}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to compileShared: custom accessor does not support producing bytecode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v5
.end method

.method private getBeanPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lyz/d;->f(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, p2, p1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCode(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private getCollectionProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    .line 17
    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 20
    .line 21
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    add-int/2addr v0, v2

    .line 25
    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 28
    .line 29
    .line 30
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 31
    .line 32
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 33
    .line 34
    const-string v5, "unterminated \'[\'"

    .line 35
    .line 36
    if-eq v3, v4, :cond_14

    .line 37
    .line 38
    const/16 v3, 0x5d

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lorg/mvel2/optimizers/AbstractOptimizer;->scanTo(C)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_13

    .line 45
    .line 46
    new-instance v3, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 49
    .line 50
    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 51
    .line 52
    sub-int/2addr v5, v0

    .line 53
    invoke-direct {v3, v4, v0, v5}, Ljava/lang/String;-><init>([CII)V

    .line 54
    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    return-object p2

    .line 59
    :cond_1
    iget-boolean p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 64
    .line 65
    const/16 v0, 0x19

    .line 66
    .line 67
    invoke-virtual {p2, v0, v2}, Lvz/r;->F(II)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 75
    .line 76
    invoke-static {p2, v0}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 81
    .line 82
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 85
    .line 86
    invoke-interface {p2, v0, v3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 91
    .line 92
    add-int/2addr v3, v2

    .line 93
    iput v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 94
    .line 95
    instance-of v2, p1, Ljava/util/Map;

    .line 96
    .line 97
    const-string v3, "get"

    .line 98
    .line 99
    const/16 v4, 0xb9

    .line 100
    .line 101
    const/16 v5, 0xc0

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 106
    .line 107
    const-string v2, "java/util/Map"

    .line 108
    .line 109
    invoke-virtual {v1, v5, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;)Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p2, :cond_3

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 128
    .line 129
    const-string v1, "(Ljava/lang/Object;)Ljava/lang/Object;"

    .line 130
    .line 131
    invoke-virtual {p2, v4, v2, v3, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    check-cast p1, Ljava/util/Map;

    .line 135
    .line 136
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :cond_4
    instance-of v2, p1, Ljava/util/List;

    .line 142
    .line 143
    const-class v6, Ljava/lang/Integer;

    .line 144
    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 148
    .line 149
    const-string v2, "java/util/List"

    .line 150
    .line 151
    invoke-virtual {v1, v5, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    invoke-direct {p0, p2, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 160
    .line 161
    const-string v1, "(I)Ljava/lang/Object;"

    .line 162
    .line 163
    invoke-virtual {p2, v4, v2, v3, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    check-cast p1, Ljava/util/List;

    .line 167
    .line 168
    invoke-static {v0, v6}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    return-object p1

    .line 183
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_f

    .line 192
    .line 193
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v2}, Lvz/y;->f(Ljava/lang/Class;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v5, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-direct {p0, p2, v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_e

    .line 228
    .line 229
    if-ne p2, v1, :cond_6

    .line 230
    .line 231
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 232
    .line 233
    const/16 v2, 0x2e

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 240
    .line 241
    if-ne p2, v1, :cond_7

    .line 242
    .line 243
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 244
    .line 245
    const/16 v2, 0x34

    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 252
    .line 253
    const/16 v2, 0x33

    .line 254
    .line 255
    if-ne p2, v1, :cond_8

    .line 256
    .line 257
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 264
    .line 265
    if-ne p2, v1, :cond_9

    .line 266
    .line 267
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 268
    .line 269
    const/16 v2, 0x31

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 272
    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_9
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 276
    .line 277
    if-ne p2, v1, :cond_a

    .line 278
    .line 279
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 280
    .line 281
    const/16 v2, 0x30

    .line 282
    .line 283
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 284
    .line 285
    .line 286
    goto :goto_0

    .line 287
    :cond_a
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 288
    .line 289
    if-ne p2, v1, :cond_b

    .line 290
    .line 291
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 292
    .line 293
    const/16 v2, 0x35

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_0

    .line 299
    :cond_b
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 300
    .line 301
    if-ne p2, v1, :cond_c

    .line 302
    .line 303
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 304
    .line 305
    const/16 v2, 0x2f

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 312
    .line 313
    if-ne p2, v1, :cond_d

    .line 314
    .line 315
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 318
    .line 319
    .line 320
    :cond_d
    :goto_0
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_e
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 325
    .line 326
    const/16 v1, 0x32

    .line 327
    .line 328
    invoke-virtual {p2, v1}, Lvz/r;->j(I)V

    .line 329
    .line 330
    .line 331
    :goto_1
    invoke-static {v0, v6}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    check-cast p2, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    return-object p1

    .line 346
    :cond_f
    instance-of v2, p1, Ljava/lang/CharSequence;

    .line 347
    .line 348
    if-eqz v2, :cond_11

    .line 349
    .line 350
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 351
    .line 352
    const-string v2, "java/lang/CharSequence"

    .line 353
    .line 354
    invoke-virtual {v1, v5, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    instance-of v1, v0, Ljava/lang/Integer;

    .line 358
    .line 359
    const-string v3, "(I)C"

    .line 360
    .line 361
    const-string v5, "charAt"

    .line 362
    .line 363
    if-eqz v1, :cond_10

    .line 364
    .line 365
    check-cast v0, Ljava/lang/Integer;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result p2

    .line 371
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 372
    .line 373
    .line 374
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 375
    .line 376
    invoke-virtual {p2, v4, v2, v5, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 380
    .line 381
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 382
    .line 383
    .line 384
    check-cast p1, Ljava/lang/CharSequence;

    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    return-object p1

    .line 399
    :cond_10
    invoke-direct {p0, p2, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 403
    .line 404
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    .line 405
    .line 406
    .line 407
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 408
    .line 409
    invoke-virtual {p2, v4, v2, v5, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 413
    .line 414
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 415
    .line 416
    .line 417
    check-cast p1, Ljava/lang/CharSequence;

    .line 418
    .line 419
    invoke-static {v0, v6}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object p2

    .line 423
    check-cast p2, Ljava/lang/Integer;

    .line 424
    .line 425
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 426
    .line 427
    .line 428
    move-result p2

    .line 429
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 430
    .line 431
    .line 432
    move-result p1

    .line 433
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    return-object p1

    .line 438
    :cond_11
    new-instance p2, Lorg/mvel2/ast/TypeDescriptor;

    .line 439
    .line 440
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 441
    .line 442
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 443
    .line 444
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 445
    .line 446
    invoke-direct {p2, v0, v2, v3, v1}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p2}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_12

    .line 454
    .line 455
    :try_start_0
    move-object v0, p1

    .line 456
    check-cast v0, Ljava/lang/Class;

    .line 457
    .line 458
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 459
    .line 460
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 461
    .line 462
    invoke-static {v0, p2, v1, v2}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    move-result-object p2

    .line 466
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .line 468
    .line 469
    return-object p2

    .line 470
    :catch_0
    :cond_12
    new-instance p2, Lorg/mvel2/CompileException;

    .line 471
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    const-string v1, "illegal use of []: unknown type: "

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 498
    .line 499
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 500
    .line 501
    invoke-direct {p2, p1, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 502
    .line 503
    .line 504
    throw p2

    .line 505
    :cond_13
    new-instance p1, Lorg/mvel2/CompileException;

    .line 506
    .line 507
    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 508
    .line 509
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 510
    .line 511
    invoke-direct {p1, v5, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 512
    .line 513
    .line 514
    throw p1

    .line 515
    :cond_14
    new-instance p1, Lorg/mvel2/CompileException;

    .line 516
    .line 517
    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 518
    .line 519
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 520
    .line 521
    invoke-direct {p1, v5, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 522
    .line 523
    .line 524
    throw p1
.end method

.method private getCollectionPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    :cond_0
    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 5
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 6
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 7
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const-string v5, "unterminated \'[\'"

    if-eq v3, v4, :cond_1b

    const/16 v3, 0x5d

    .line 8
    invoke-virtual {p0, v3}, Lorg/mvel2/optimizers/AbstractOptimizer;->scanTo(C)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 9
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr v5, v0

    invoke-direct {v3, v4, v0, v5}, Ljava/lang/String;-><init>([CII)V

    if-nez p1, :cond_1

    return-object p2

    .line 10
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p2}, Lorg/mvel2/util/m;->H0([C)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 11
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ctx:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p2, v0, v4}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 13
    instance-of v4, p1, Ljava/util/Map;

    const-string v5, "get"

    const/16 v6, 0xb9

    const/16 v7, 0xc0

    const/16 v8, 0x19

    if-eqz v4, :cond_5

    .line 14
    const-class v1, Ljava/util/Map;

    invoke-static {v1}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-direct {p0, v3, p1, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCode(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    iget-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v8, v2}, Lvz/r;->F(II)V

    .line 18
    :cond_3
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "java/util/Map"

    invoke-virtual {v1, v7, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 19
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 22
    :cond_4
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v1, "(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {p2, v6, v2, v5, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :cond_5
    instance-of v4, p1, Ljava/util/List;

    const-class v9, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 25
    const-class v1, Ljava/util/List;

    invoke-static {v1}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    invoke-direct {p0, v3, p1, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCode(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :cond_6
    iget-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    if-eqz v1, :cond_7

    .line 28
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v8, v2}, Lvz/r;->F(II)V

    .line 29
    :cond_7
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "java/util/List"

    invoke-virtual {v1, v7, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 30
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p2, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    .line 31
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v1, "(I)Ljava/lang/Object;"

    invoke-virtual {p2, v6, v2, v5, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-static {v0, v9}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 34
    const-class v1, Ljava/lang/reflect/Array;

    invoke-static {v1}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 35
    invoke-direct {p0, v3, p1, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCode(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_9
    iget-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    if-eqz v1, :cond_a

    .line 37
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v8, v2}, Lvz/r;->F(II)V

    .line 38
    :cond_a
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lvz/y;->f(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 39
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_13

    if-ne p2, v1, :cond_b

    .line 42
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    goto :goto_0

    .line 43
    :cond_b
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_c

    .line 44
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    goto :goto_0

    .line 45
    :cond_c
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x33

    if-ne p2, v1, :cond_d

    .line 46
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    goto :goto_0

    .line 47
    :cond_d
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_e

    .line 48
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    goto :goto_0

    .line 49
    :cond_e
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_f

    .line 50
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    goto :goto_0

    .line 51
    :cond_f
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_10

    .line 52
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    goto :goto_0

    .line 53
    :cond_10
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_11

    .line 54
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    goto :goto_0

    .line 55
    :cond_11
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_12

    .line 56
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 57
    :cond_12
    :goto_0
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    goto :goto_1

    .line 58
    :cond_13
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v1, 0x32

    invoke-virtual {p2, v1}, Lvz/r;->j(I)V

    .line 59
    :goto_1
    invoke-static {v0, v9}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_14
    instance-of v4, p1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_18

    .line 61
    const-class v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 62
    invoke-direct {p0, v3, p1, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCode(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :cond_15
    iget-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    if-eqz v1, :cond_16

    .line 64
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v8, v2}, Lvz/r;->F(II)V

    .line 65
    :cond_16
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "java/lang/CharSequence"

    invoke-virtual {v1, v7, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 66
    instance-of v1, v0, Ljava/lang/Integer;

    const-string v3, "(I)C"

    const-string v4, "charAt"

    if-eqz v1, :cond_17

    .line 67
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 68
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {p2, v6, v2, v4, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 70
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 71
    :cond_17
    invoke-direct {p0, p2, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    .line 72
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    .line 73
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {p2, v6, v2, v4, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 75
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 76
    :cond_18
    new-instance p2, Lorg/mvel2/ast/TypeDescriptor;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {p2, v0, v2, v3, v1}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    .line 77
    invoke-virtual {p2}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 78
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, p2, v1, v2}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p2

    .line 79
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 80
    :catch_0
    :cond_19
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal use of []: unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {p2, p1, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    .line 81
    :cond_1a
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {p1, v5, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    .line 82
    :cond_1b
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {p1, v5, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method private getContextClassLoader()Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer$a;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer$a;-><init>(Ljava/lang/ClassLoader;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public static getMVELClassLoader()Lorg/mvel2/util/k;
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->classLoader:Lorg/mvel2/util/k;

    .line 2
    .line 3
    return-object v0
.end method

.method private getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 2
    iget v4, v0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    iget-object v4, v0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v6, v4, v3

    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    invoke-static {v4, v3, v7}, Lorg/mvel2/util/m;->c([CIC)I

    move-result v4

    iput v4, v0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int v6, v4, v3

    if-le v6, v5, :cond_0

    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v8, v3, 0x1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v5

    invoke-direct {v6, v7, v8, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_0
    const-string v6, ""

    .line 3
    :goto_0
    iget v4, v0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr v4, v5

    iput v4, v0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    const-class v7, Ljava/lang/Object;

    const/4 v9, 0x0

    if-nez v4, :cond_1

    .line 5
    sget-object v4, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    .line 6
    sget-object v10, Lorg/mvel2/util/m;->b:[Ljava/lang/Class;

    move-object v13, v4

    move-object v14, v10

    const/4 v8, 0x0

    const/4 v11, 0x0

    goto/16 :goto_6

    .line 7
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v10, -0x1

    invoke-static {v4, v9, v10}, Lorg/mvel2/util/m;->y0([CII)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v11, v10, [Lorg/mvel2/compiler/ExecutableStatement;

    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v13, v12, [Ljava/lang/Object;

    .line 10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/Class;

    .line 11
    new-array v10, v10, [Ljava/lang/Object;

    move v15, v9

    .line 12
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_3

    .line 13
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    iget-object v5, v0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v8, v5}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lorg/mvel2/compiler/ExecutableStatement;

    aput-object v5, v11, v15

    iget-object v8, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object v9, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v5, v8, v8, v9}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v13, v15

    aput-object v5, v10, v15

    .line 14
    aget-object v5, v11, v15

    invoke-interface {v5}, Lorg/mvel2/compiler/ExecutableStatement;->isExplicitCast()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v11, v15

    invoke-interface {v5}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v14, v15

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 15
    :cond_3
    iget-object v5, v0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v5}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v12, :cond_9

    .line 16
    aget-object v8, v11, v5

    invoke-interface {v8}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v14, v5

    .line 17
    aget-object v8, v11, v5

    instance-of v9, v8, Lorg/mvel2/compiler/ExecutableLiteral;

    if-eqz v9, :cond_4

    check-cast v8, Lorg/mvel2/compiler/ExecutableLiteral;

    invoke-virtual {v8}, Lorg/mvel2/compiler/ExecutableLiteral;->getLiteral()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 18
    const-class v8, Lorg/mvel2/util/l;

    aput-object v8, v14, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v12, :cond_9

    .line 19
    aget-object v8, v14, v5

    if-eqz v8, :cond_6

    goto :goto_5

    .line 20
    :cond_6
    aget-object v8, v11, v5

    invoke-interface {v8}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v7, :cond_8

    .line 21
    aget-object v8, v13, v5

    if-nez v8, :cond_7

    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    :goto_4
    aput-object v8, v14, v5

    goto :goto_5

    .line 22
    :cond_8
    aget-object v8, v11, v5

    invoke-interface {v8}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v14, v5

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    move-object v8, v4

    move-object v4, v10

    .line 23
    :goto_6
    iget-boolean v5, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    const-string v10, "integration/VariableResolverFactory;)Ljava/lang/Object;"

    const-string v12, "(Ljava/lang/Object;L"

    const-string v15, "getValue"

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v5, :cond_11

    invoke-interface {v5, v2}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 24
    iget-object v5, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v5, v2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v5

    invoke-interface {v5}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 25
    instance-of v9, v5, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_a

    .line 26
    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 27
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    .line 28
    :cond_a
    instance-of v9, v5, Lorg/mvel2/util/MethodStub;

    if-eqz v9, :cond_b

    .line 29
    check-cast v5, Lorg/mvel2/util/MethodStub;

    invoke-virtual {v5}, Lorg/mvel2/util/MethodStub;->getClassReference()Ljava/lang/Class;

    move-result-object v1

    .line 30
    invoke-virtual {v5}, Lorg/mvel2/util/MethodStub;->getMethodName()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 31
    :goto_8
    iput-boolean v5, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    const/4 v9, 0x4

    goto/16 :goto_c

    .line 32
    :cond_b
    instance-of v3, v5, Lorg/mvel2/ast/b;

    if-eqz v3, :cond_f

    const/16 v3, 0x3a

    if-eqz v11, :cond_c

    .line 33
    array-length v4, v11

    if-eqz v4, :cond_c

    .line 34
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    array-length v4, v11

    invoke-direct {v0, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 36
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v6, 0xbd

    const-string v7, "java/lang/Object"

    invoke-virtual {v4, v6, v7}, Lvz/r;->E(ILjava/lang/String;)V

    .line 37
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v6, 0x4

    invoke-virtual {v4, v3, v6}, Lvz/r;->F(II)V

    const/4 v9, 0x0

    .line 38
    :goto_9
    array-length v3, v11

    if-ge v9, v3, :cond_d

    .line 39
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x19

    invoke-virtual {v3, v4, v6}, Lvz/r;->F(II)V

    .line 40
    invoke-direct {v0, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 41
    invoke-direct {v0, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->loadField(I)V

    .line 42
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lvz/r;->F(II)V

    .line 43
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v6}, Lvz/r;->l(II)V

    .line 44
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "compiler/ExecutableStatement"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb9

    invoke-virtual {v3, v7, v4, v15, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Lvz/r;->j(I)V

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x4

    goto :goto_9

    .line 46
    :cond_c
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lvz/r;->j(I)V

    .line 47
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v6, "[Ljava/lang/Object;"

    const/16 v7, 0xc0

    invoke-virtual {v4, v7, v6}, Lvz/r;->E(ILjava/lang/String;)V

    .line 48
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v6, 0x4

    invoke-virtual {v4, v3, v6}, Lvz/r;->F(II)V

    .line 49
    :cond_d
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v3}, Lorg/mvel2/integration/VariableResolverFactory;->isIndexedFactory()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v3, v2}, Lorg/mvel2/integration/VariableResolverFactory;->isTarget(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 50
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v3, v2}, Lorg/mvel2/integration/VariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->loadVariableByIndex(I)V

    goto :goto_a

    .line 51
    :cond_e
    invoke-direct {v0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->loadVariableByName(Ljava/lang/String;)V

    .line 52
    :goto_a
    const-class v2, Lorg/mvel2/ast/b;

    invoke-direct {v0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    .line 53
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {v3, v6, v4}, Lvz/r;->F(II)V

    .line 54
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v4, 0x2

    invoke-virtual {v3, v6, v4}, Lvz/r;->F(II)V

    .line 55
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v4, 0x3

    invoke-virtual {v3, v6, v4}, Lvz/r;->F(II)V

    .line 56
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v9, 0x4

    invoke-virtual {v3, v6, v9}, Lvz/r;->F(II)V

    .line 57
    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v2}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;L"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "call"

    const/16 v7, 0xb6

    invoke-virtual {v3, v7, v2, v6, v4}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    check-cast v5, Lorg/mvel2/ast/b;

    iget-object v2, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {v5, v1, v2, v3, v13}, Lorg/mvel2/ast/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 59
    :cond_f
    new-instance v3, Lorg/mvel2/OptimizationFailure;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempt to optimize a method call for a reference that does not point to a method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (reference is type: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_10
    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    const/4 v9, 0x4

    .line 60
    iget-object v5, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 61
    iget-object v5, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {v0, v5}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 62
    :cond_12
    :goto_c
    iget-object v5, v0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    if-eqz v5, :cond_13

    const/4 v9, 0x0

    const/16 v23, 0x0

    goto :goto_e

    :cond_13
    instance-of v5, v1, Ljava/lang/Class;

    if-eqz v5, :cond_14

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Class;

    :goto_d
    move/from16 v23, v5

    move-object/from16 v5, v17

    const/4 v9, 0x0

    goto :goto_e

    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    goto :goto_d

    .line 63
    :goto_e
    iput-object v9, v0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 64
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move/from16 v22, v23

    invoke-static/range {v17 .. v22}, Lorg/mvel2/util/m;->K([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 65
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    goto :goto_f

    :cond_15
    const/16 v17, 0x0

    :goto_f
    if-nez v9, :cond_17

    if-eqz v23, :cond_17

    .line 66
    const-class v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    move-object/from16 v24, v15

    const/4 v15, 0x0

    invoke-static {v14, v2, v5, v9, v15}, Lorg/mvel2/util/m;->J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 67
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    :cond_16
    :goto_10
    move-object/from16 v15, v17

    goto :goto_11

    :cond_17
    move-object/from16 v24, v15

    goto :goto_10

    :goto_11
    move-object/from16 p1, v9

    if-nez v9, :cond_18

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v5, v9, :cond_18

    instance-of v9, v1, Ljava/lang/Class;

    if-nez v9, :cond_18

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move/from16 v22, v23

    invoke-static/range {v17 .. v22}, Lorg/mvel2/util/m;->K([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 71
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    goto :goto_12

    :cond_18
    move-object/from16 v9, p1

    :cond_19
    :goto_12
    if-eqz v11, :cond_22

    if-eqz v9, :cond_22

    .line 72
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v14

    if-eqz v14, :cond_22

    array-length v14, v11

    move-object/from16 v17, v10

    array-length v10, v15

    if-ne v14, v10, :cond_1b

    array-length v10, v11

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    aget-object v10, v11, v10

    instance-of v10, v10, Lorg/mvel2/compiler/ExecutableAccessor;

    if-nez v10, :cond_1a

    goto :goto_14

    :cond_1a
    :goto_13
    move-object/from16 v18, v12

    goto/16 :goto_19

    :cond_1b
    const/4 v14, 0x1

    .line 73
    :goto_14
    array-length v10, v15

    new-array v10, v10, [Lorg/mvel2/compiler/ExecutableStatement;

    move-object/from16 v18, v12

    .line 74
    array-length v12, v15

    sub-int/2addr v12, v14

    const/4 v14, 0x0

    :goto_15
    if-ge v14, v12, :cond_1c

    .line 75
    aget-object v19, v11, v14

    aput-object v19, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    .line 76
    :cond_1c
    array-length v11, v15

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    aget-object v11, v15, v11

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 77
    const-string v14, "null"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    goto :goto_17

    .line 78
    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "new "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "[] {"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v12

    .line 79
    :goto_16
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_1f

    .line 80
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [C

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ge v11, v14, :cond_1e

    const-string v14, ","

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 82
    :cond_1f
    const-string v8, "}"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    :goto_17
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 84
    iget-object v8, v0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v6, v8}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lorg/mvel2/compiler/ExecutableStatement;

    aput-object v6, v10, v12

    .line 85
    array-length v6, v4

    array-length v8, v15

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    if-ne v6, v8, :cond_21

    .line 86
    array-length v6, v15

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 87
    :goto_18
    array-length v11, v4

    if-ge v8, v11, :cond_20

    aget-object v11, v4, v8

    aput-object v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 88
    :cond_20
    array-length v4, v15

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    array-length v11, v15

    sub-int/2addr v11, v8

    aget-object v8, v15, v11

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    const/4 v11, 0x0

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v4

    move-object v4, v6

    :cond_21
    move-object v11, v10

    goto :goto_19

    :cond_22
    move-object/from16 v17, v10

    goto/16 :goto_13

    .line 89
    :goto_19
    iget-object v6, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v11, :cond_24

    .line 90
    array-length v8, v11

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v8, :cond_24

    aget-object v12, v11, v10

    .line 91
    instance-of v14, v12, Lorg/mvel2/compiler/ExecutableLiteral;

    if-eqz v14, :cond_23

    goto :goto_1b

    .line 92
    :cond_23
    iget-object v14, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    .line 93
    :cond_24
    iget-boolean v8, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    if-eqz v8, :cond_25

    .line 94
    iget-object v8, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v10, 0x1

    const/16 v12, 0x19

    invoke-virtual {v8, v12, v10}, Lvz/r;->F(II)V

    :cond_25
    if-nez v9, :cond_2a

    .line 95
    new-instance v4, Lorg/mvel2/util/s;

    invoke-direct {v4}, Lorg/mvel2/util/s;-><init>()V

    if-eqz v15, :cond_28

    const/4 v9, 0x0

    .line 96
    :goto_1c
    array-length v6, v13

    if-ge v9, v6, :cond_28

    .line 97
    aget-object v6, v15, v9

    if-eqz v6, :cond_26

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1d

    :cond_26
    const/4 v6, 0x0

    :goto_1d
    invoke-virtual {v4, v6}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 98
    array-length v6, v13

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v9, v6, :cond_27

    const-string v6, ", "

    invoke-virtual {v4, v6}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 99
    :cond_28
    const-string v6, "size"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    array-length v6, v13

    if-nez v6, :cond_29

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 100
    invoke-direct {v0, v5}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->anyArrayCheck(Ljava/lang/Class;)V

    .line 101
    iget-object v2, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0xbe

    invoke-virtual {v2, v3}, Lvz/r;->j(I)V

    .line 102
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 103
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 104
    :cond_29
    new-instance v1, Lorg/mvel2/CompileException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to resolve method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") [arglength="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v13

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v1, v2, v4, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v1

    .line 105
    :cond_2a
    invoke-static {v9}, Lorg/mvel2/util/m;->V(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v11, :cond_2d

    const/4 v3, 0x0

    .line 106
    :goto_1e
    array-length v5, v11

    if-ge v3, v5, :cond_2e

    .line 107
    aget-object v5, v11, v3

    invoke-interface {v5}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownIngressType()Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_2b

    .line 108
    aget-object v8, v15, v3

    invoke-interface {v5, v8}, Lorg/mvel2/compiler/ExecutableStatement;->setKnownIngressType(Ljava/lang/Class;)V

    .line 109
    invoke-interface {v5}, Lorg/mvel2/compiler/ExecutableStatement;->computeTypeConversionRule()V

    .line 110
    :cond_2b
    invoke-interface {v5}, Lorg/mvel2/compiler/ExecutableStatement;->isConvertableIngressEgress()Z

    move-result v5

    if-nez v5, :cond_2c

    array-length v5, v13

    if-ge v3, v5, :cond_2c

    .line 111
    aget-object v5, v13, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v8

    invoke-static {v15, v3, v8}, Lorg/mvel2/util/t;->b([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v13, v3

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v3, 0x0

    .line 112
    :goto_1f
    array-length v5, v13

    if-ge v3, v5, :cond_2e

    .line 113
    aget-object v5, v13, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v8

    invoke-static {v15, v3, v8}, Lorg/mvel2/util/t;->b([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 114
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 115
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/16 v8, 0xb8

    if-nez v5, :cond_31

    .line 116
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2f

    .line 117
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v3, v5, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 118
    :cond_2f
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc0

    invoke-virtual {v4, v6, v5}, Lvz/r;->E(ILjava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 120
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb9

    invoke-virtual {v4, v7, v3, v5, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 121
    :cond_30
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb6

    invoke-virtual {v4, v7, v3, v5, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_20
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 123
    iget v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->stacksize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->stacksize:I

    const/4 v4, 0x1

    goto/16 :goto_2c

    .line 124
    :cond_31
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_32

    .line 125
    iget-object v5, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc0

    invoke-virtual {v5, v10, v9}, Lvz/r;->E(ILjava/lang/String;)V

    .line 126
    :cond_32
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v5, v5, v9

    .line 127
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v9

    if-eqz v9, :cond_35

    if-eqz v11, :cond_33

    .line 128
    array-length v9, v11

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    sub-int/2addr v12, v10

    if-ne v9, v12, :cond_35

    .line 129
    :cond_33
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    new-array v10, v9, [Lorg/mvel2/compiler/ExecutableStatement;

    if-eqz v11, :cond_34

    .line 130
    array-length v12, v11

    const/4 v14, 0x0

    invoke-static {v11, v14, v10, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_21
    const/4 v11, 0x1

    goto :goto_22

    :cond_34
    const/4 v14, 0x0

    goto :goto_21

    :goto_22
    sub-int/2addr v9, v11

    .line 131
    new-instance v11, Lorg/mvel2/compiler/ExecutableLiteral;

    invoke-static {v5, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v11, v5}, Lorg/mvel2/compiler/ExecutableLiteral;-><init>(Ljava/lang/Object;)V

    aput-object v11, v10, v9

    move-object v11, v10

    :cond_35
    const/4 v5, 0x0

    :goto_23
    if-eqz v11, :cond_48

    .line 132
    array-length v9, v11

    if-ge v5, v9, :cond_48

    .line 133
    aget-object v9, v11, v5

    instance-of v10, v9, Lorg/mvel2/compiler/ExecutableLiteral;

    if-eqz v10, :cond_41

    .line 134
    check-cast v9, Lorg/mvel2/compiler/ExecutableLiteral;

    .line 135
    invoke-virtual {v9}, Lorg/mvel2/compiler/ExecutableLiteral;->getLiteral()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_36

    .line 136
    iget-object v9, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lvz/r;->j(I)V

    goto/16 :goto_26

    .line 137
    :cond_36
    aget-object v10, v15, v5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v12, :cond_37

    invoke-virtual {v9}, Lorg/mvel2/compiler/ExecutableLiteral;->intOptimized()Z

    move-result v10

    if-eqz v10, :cond_37

    .line 138
    invoke-virtual {v9}, Lorg/mvel2/compiler/ExecutableLiteral;->getInteger32()I

    move-result v9

    invoke-direct {v0, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    goto/16 :goto_26

    .line 139
    :cond_37
    aget-object v10, v15, v5

    if-ne v10, v12, :cond_38

    aget-object v12, v4, v5

    instance-of v14, v12, Ljava/lang/Integer;

    if-eqz v14, :cond_38

    .line 140
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v0, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    goto/16 :goto_26

    .line 141
    :cond_38
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v12, :cond_3a

    .line 142
    invoke-virtual {v9}, Lorg/mvel2/compiler/ExecutableLiteral;->getLiteral()Ljava/lang/Object;

    move-result-object v9

    const-class v10, Ljava/lang/Boolean;

    invoke-static {v9, v10}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 143
    iget-object v10, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    if-eqz v9, :cond_39

    const/4 v9, 0x4

    goto :goto_24

    :cond_39
    const/4 v9, 0x3

    :goto_24
    invoke-virtual {v10, v9}, Lvz/r;->j(I)V

    goto/16 :goto_26

    .line 144
    :cond_3a
    invoke-virtual {v9}, Lorg/mvel2/compiler/ExecutableLiteral;->getLiteral()Ljava/lang/Object;

    move-result-object v9

    .line 145
    aget-object v10, v15, v5

    if-ne v10, v7, :cond_3d

    .line 146
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lorg/mvel2/util/m;->m0(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 147
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v12, Ljava/lang/Integer;

    if-ne v10, v12, :cond_3b

    .line 148
    move-object v10, v9

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v0, v10}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    goto :goto_25

    .line 149
    :cond_3b
    iget-object v10, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v10, v9}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 150
    :goto_25
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    goto :goto_26

    .line 151
    :cond_3c
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_3f

    .line 152
    iget-object v10, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v10, v9}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 153
    invoke-direct {v0, v7}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    goto :goto_26

    .line 154
    :cond_3d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 155
    aget-object v10, v15, v5

    invoke-static {v9, v10}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .line 156
    instance-of v12, v10, Ljava/lang/Class;

    if-eqz v12, :cond_3e

    .line 157
    check-cast v10, Ljava/lang/Class;

    invoke-direct {v0, v10}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    goto :goto_26

    .line 158
    :cond_3e
    iget-object v10, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    aget-object v12, v15, v5

    invoke-static {v9, v12}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 159
    aget-object v10, v15, v5

    invoke-static {v10}, Lorg/mvel2/util/m;->m0(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 160
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    :cond_3f
    :goto_26
    move-object/from16 v12, v17

    move-object/from16 v10, v18

    const/16 v8, 0xc0

    move-object/from16 v17, v7

    goto/16 :goto_2a

    .line 161
    :cond_40
    new-instance v1, Lorg/mvel2/optimizers/OptimizationNotSupported;

    invoke-direct {v1}, Lorg/mvel2/optimizers/OptimizationNotSupported;-><init>()V

    throw v1

    .line 162
    :cond_41
    iget-object v9, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v10, 0x0

    const/16 v12, 0x19

    invoke-virtual {v9, v12, v10}, Lvz/r;->F(II)V

    .line 163
    iget-object v9, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    iget-object v12, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "L"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "compiler/ExecutableStatement;"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0xb4

    invoke-virtual {v9, v14, v12, v10, v8}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    .line 164
    iget-object v8, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v9, 0x2

    const/16 v10, 0x19

    invoke-virtual {v8, v10, v9}, Lvz/r;->F(II)V

    .line 165
    iget-object v8, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v12, 0x3

    invoke-virtual {v8, v10, v12}, Lvz/r;->F(II)V

    .line 166
    iget-object v8, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-class v14, Lorg/mvel2/compiler/ExecutableStatement;

    invoke-static {v14}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v18

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v17

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 p2, v6

    move-object/from16 v17, v7

    move-object/from16 v6, v24

    const/16 v7, 0xb9

    invoke-virtual {v8, v7, v14, v6, v9}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    aget-object v7, v15, v5

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    const-string v8, "convert"

    const-string v9, "DataConversion"

    const-class v14, Ljava/lang/String;

    if-eqz v7, :cond_44

    .line 168
    aget-object v7, v4, v5

    move-object/from16 v24, v6

    if-eqz v7, :cond_42

    aget-object v6, v15, v5

    if-eq v6, v14, :cond_43

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 169
    :cond_42
    aget-object v6, v15, v5

    invoke-direct {v0, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    .line 170
    iget-object v6, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;"

    const/16 v14, 0xb8

    invoke-virtual {v6, v14, v7, v8, v9}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_43
    aget-object v6, v15, v5

    invoke-direct {v0, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    :goto_27
    const/16 v8, 0xc0

    goto :goto_29

    :cond_44
    move-object/from16 v24, v6

    .line 172
    aget-object v6, v4, v5

    if-eqz v6, :cond_47

    aget-object v7, v15, v5

    if-eq v7, v14, :cond_45

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_45

    goto :goto_28

    .line 173
    :cond_45
    aget-object v6, v15, v5

    if-ne v6, v14, :cond_46

    .line 174
    iget-object v6, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v7, "valueOf"

    const-string v8, "(Ljava/lang/Object;)Ljava/lang/String;"

    const-string v9, "java/lang/String"

    const/16 v14, 0xb8

    invoke-virtual {v6, v14, v9, v7, v8}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 175
    :cond_46
    iget-object v7, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v6}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xc0

    invoke-virtual {v7, v8, v6}, Lvz/r;->E(ILjava/lang/String;)V

    goto :goto_29

    .line 176
    :cond_47
    :goto_28
    aget-object v6, v15, v5

    invoke-direct {v0, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    .line 177
    iget-object v6, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;"

    const/16 v14, 0xb8

    invoke-virtual {v6, v14, v7, v8, v9}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v6, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    aget-object v7, v15, v5

    invoke-static {v7}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc0

    invoke-virtual {v6, v8, v7}, Lvz/r;->E(ILjava/lang/String;)V

    :goto_29
    move/from16 v6, p2

    :goto_2a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v18, v10

    move-object/from16 v7, v17

    const/16 v8, 0xb8

    move-object/from16 v17, v12

    goto/16 :goto_23

    .line 179
    :cond_48
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_49

    .line 180
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb8

    invoke-virtual {v4, v7, v3, v5, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 181
    :cond_49
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 182
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb9

    invoke-virtual {v4, v7, v3, v5, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 183
    :cond_4a
    iget-object v4, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb6

    invoke-virtual {v4, v7, v3, v5, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_2b
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 185
    iget v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->stacksize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->stacksize:I

    .line 186
    :goto_2c
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v3

    invoke-static {v15, v13, v3}, Lorg/mvel2/util/t;->a([Ljava/lang/Class;[Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    invoke-static {}, Lyz/d;->d()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 188
    invoke-direct {v0, v2, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeOutNullHandler(Ljava/lang/reflect/Member;I)V

    if-eqz v1, :cond_4b

    goto :goto_2d

    .line 189
    :cond_4b
    invoke-static {}, Lyz/d;->a()Lyz/c;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    const/4 v1, 0x0

    throw v1

    .line 190
    :cond_4c
    :goto_2d
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    return-object v1
.end method

.method private getWithProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    const/4 v1, 0x0

    const/16 v2, 0x19

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v0, v2, v3}, Lvz/r;->F(II)V

    .line 3
    iput-boolean v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr v5, v3

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 5
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/lit8 v7, v0, 0x1

    .line 6
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const/16 v6, 0x7b

    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v4, v0, v5, v6, v8}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result v0

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 8
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int v8, v0, v7

    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ingressType:Ljava/lang/Class;

    iget-object v11, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static/range {v6 .. v11}, Lorg/mvel2/ast/WithNode;->compileWithExpressions([CIILjava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserContext;)[Lorg/mvel2/ast/WithNode$ParmValuePair;

    move-result-object v0

    array-length v4, v0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 9
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v8, 0x59

    invoke-virtual {v7, v8}, Lvz/r;->j(I)V

    .line 10
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    iget v8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compileDepth:I

    add-int/lit8 v8, v8, 0x5

    const/16 v9, 0x3a

    invoke-virtual {v7, v9, v8}, Lvz/r;->F(II)V

    .line 11
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {v6, p1, v7}, Lorg/mvel2/ast/WithNode$ParmValuePair;->eval(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 12
    invoke-virtual {v6}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getSetExpression()Ljava/io/Serializable;

    move-result-object v7

    if-nez v7, :cond_2

    .line 13
    invoke-virtual {v6}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getStatement()Lorg/mvel2/compiler/ExecutableStatement;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->addSubstatement(Lorg/mvel2/compiler/ExecutableStatement;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 14
    :cond_2
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getSetExpression()Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lorg/mvel2/compiler/ExecutableStatement;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v7, v2, v1}, Lvz/r;->F(II)V

    .line 16
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    iget-object v8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "L"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "compiler/ExecutableStatement;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v8, v9, v10}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    iget v8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compileDepth:I

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v7, v2, v8}, Lvz/r;->F(II)V

    .line 18
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v8, 0x2

    invoke-virtual {v7, v2, v8}, Lvz/r;->F(II)V

    .line 19
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v8, 0x3

    invoke-virtual {v7, v2, v8}, Lvz/r;->F(II)V

    .line 20
    invoke-virtual {v6}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getStatement()Lorg/mvel2/compiler/ExecutableStatement;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->addSubstatement(Lorg/mvel2/compiler/ExecutableStatement;)Ljava/lang/Object;

    .line 21
    iget-object v6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "compiler/ExecutableStatement"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Ljava/lang/Object;Ljava/lang/Object;L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb9

    const-string v10, "setValue"

    invoke-virtual {v6, v9, v7, v10, v8}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v7, 0x57

    invoke-virtual {v6, v7}, Lvz/r;->j(I)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-object p1
.end method

.method private getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-class p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    const-class p1, Ljava/lang/Integer;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    const-class p1, Ljava/lang/Float;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    const-class p1, Ljava/lang/Double;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    if-ne p1, v0, :cond_4

    .line 32
    .line 33
    const-class p1, Ljava/lang/Short;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    if-ne p1, v0, :cond_5

    .line 39
    .line 40
    const-class p1, Ljava/lang/Long;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    if-ne p1, v0, :cond_6

    .line 46
    .line 47
    const-class p1, Ljava/lang/Byte;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-ne p1, v0, :cond_7

    .line 53
    .line 54
    const-class p1, Ljava/lang/Character;

    .line 55
    .line 56
    :cond_7
    return-object p1
.end method

.method private intPush(I)V
    .locals 5

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    if-ge p1, v0, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eqz p1, :cond_5

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    if-eq p1, v2, :cond_4

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v4, 0x5

    .line 15
    if-eq p1, v2, :cond_3

    .line 16
    .line 17
    if-eq p1, v1, :cond_2

    .line 18
    .line 19
    if-eq p1, v3, :cond_1

    .line 20
    .line 21
    if-eq p1, v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Lvz/r;->j(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Lvz/r;->j(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lvz/r;->j(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    const/16 v0, -0x7f

    .line 64
    .line 65
    if-le p1, v0, :cond_7

    .line 66
    .line 67
    const/16 v0, 0x80

    .line 68
    .line 69
    if-ge p1, v0, :cond_7

    .line 70
    .line 71
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 72
    .line 73
    const/16 v1, 0x10

    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Lvz/r;->l(II)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_7
    const/16 v0, 0x7fff

    .line 80
    .line 81
    if-le p1, v0, :cond_8

    .line 82
    .line 83
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_8
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 94
    .line 95
    const/16 v1, 0x11

    .line 96
    .line 97
    invoke-virtual {v0, v1, p1}, Lvz/r;->l(II)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method private ldcClassConstant(Ljava/lang/Class;)V
    .locals 6

    .line 1
    sget v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 17
    .line 18
    const-string v0, "forName"

    .line 19
    .line 20
    const-string v1, "(Ljava/lang/String;)Ljava/lang/Class;"

    .line 21
    .line 22
    const/16 v2, 0xb8

    .line 23
    .line 24
    const-string v3, "java/lang/Class"

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3, v0, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lvz/q;

    .line 30
    .line 31
    invoke-direct {p1}, Lvz/q;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 35
    .line 36
    const/16 v1, 0xa7

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lvz/r;->n(ILvz/q;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 42
    .line 43
    const/16 v1, 0xbb

    .line 44
    .line 45
    const-string v2, "java/lang/NoClassDefFoundError"

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 51
    .line 52
    const/16 v1, 0x5a

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 58
    .line 59
    const/16 v1, 0x5f

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 65
    .line 66
    const-string v1, "getMessage"

    .line 67
    .line 68
    const-string v3, "()Ljava/lang/String;"

    .line 69
    .line 70
    const/16 v4, 0xb6

    .line 71
    .line 72
    const-string v5, "java/lang/Throwable"

    .line 73
    .line 74
    invoke-virtual {v0, v4, v5, v1, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 78
    .line 79
    const-string v1, "<init>"

    .line 80
    .line 81
    const-string v3, "(Ljava/lang/String;)V"

    .line 82
    .line 83
    const/16 v4, 0xb7

    .line 84
    .line 85
    invoke-virtual {v0, v4, v2, v1, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 89
    .line 90
    const/16 v1, 0xbf

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lvz/r;->o(Lvz/q;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 102
    .line 103
    invoke-static {p1}, Lvz/y;->m(Ljava/lang/Class;)Lvz/y;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method private loadClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getContextClassLoader()Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->classLoader:Lorg/mvel2/util/k;

    .line 8
    .line 9
    array-length v1, p2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {v0, p1, p2, v2, v1}, Lorg/mvel2/util/k;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer$a;->a(Ljava/lang/String;[B)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method

.method private loadField(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lvz/r;->F(II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "p"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "L"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget-object v3, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "compiler/ExecutableStatement;"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/16 v3, 0xb4

    .line 55
    .line 56
    invoke-virtual {v0, v3, v1, p1, v2}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private loadVariableByIndex(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-virtual {v0, v1, v2}, Lvz/r;->F(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "integration/VariableResolverFactory"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "(I)L"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget-object v3, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, "integration/VariableResolver;"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/16 v3, 0xb9

    .line 63
    .line 64
    const-string v4, "getIndexedVariableResolver"

    .line 65
    .line 66
    invoke-virtual {p1, v3, v0, v4, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, "integration/VariableResolver"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "getValue"

    .line 94
    .line 95
    const-string v2, "()Ljava/lang/Object;"

    .line 96
    .line 97
    invoke-virtual {p1, v3, v0, v1, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-class p1, Ljava/lang/Object;

    .line 101
    .line 102
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 103
    .line 104
    return-void
.end method

.method private loadVariableByName(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-virtual {v0, v1, v2}, Lvz/r;->F(II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "integration/VariableResolverFactory"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "(Ljava/lang/String;)L"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v3, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, "integration/VariableResolver;"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/16 v3, 0xb9

    .line 65
    .line 66
    const-string v4, "getVariableResolver"

    .line 67
    .line 68
    invoke-virtual {p1, v3, v0, v4, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "integration/VariableResolver"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "getValue"

    .line 96
    .line 97
    const-string v2, "()Ljava/lang/Object;"

    .line 98
    .line 99
    invoke-virtual {p1, v3, v0, v1, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-class p1, Ljava/lang/Object;

    .line 103
    .line 104
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 105
    .line 106
    return-void
.end method

.method private optimizeFieldMethodProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    move-object v0, p4

    .line 2
    check-cast v0, Ljava/lang/reflect/Field;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p4}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/lit8 v0, v0, 0x8

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {p4}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    and-int/lit8 p2, p2, 0x10

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    instance-of p2, p1, Ljava/lang/String;

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    move-object p2, p4

    .line 31
    check-cast p2, Ljava/lang/reflect/Field;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    :cond_0
    move-object p1, p4

    .line 44
    check-cast p1, Ljava/lang/reflect/Field;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lyz/d;->e()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    invoke-direct {p0, p4, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeOutNullHandler(Ljava/lang/reflect/Member;I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-object p1

    .line 72
    :cond_2
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 73
    .line 74
    invoke-interface {p4}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-static {p3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-interface {p4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move-object v3, p4

    .line 87
    check-cast v3, Ljava/lang/reflect/Field;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iput-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 94
    .line 95
    invoke-static {v3}, Lvz/y;->f(Ljava/lang/Class;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/16 v4, 0xb2

    .line 100
    .line 101
    invoke-virtual {p2, v4, p3, v0, v3}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 106
    .line 107
    const/16 v3, 0xc0

    .line 108
    .line 109
    invoke-static {p3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0, v3, v4}, Lvz/r;->E(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 117
    .line 118
    invoke-static {p3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    move-object v3, p4

    .line 123
    check-cast v3, Ljava/lang/reflect/Field;

    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iput-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 130
    .line 131
    invoke-static {v3}, Lvz/y;->f(Ljava/lang/Class;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const/16 v4, 0xb4

    .line 136
    .line 137
    invoke-virtual {v0, v4, p3, p2, v3}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_0
    move-object p2, p4

    .line 141
    check-cast p2, Ljava/lang/reflect/Field;

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 148
    .line 149
    invoke-static {}, Lyz/d;->e()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_5

    .line 154
    .line 155
    if-eqz p1, :cond_4

    .line 156
    .line 157
    invoke-direct {p0, p4, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeOutNullHandler(Ljava/lang/reflect/Member;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    invoke-static {}, Lyz/d;->b()Lyz/c;

    .line 162
    .line 163
    .line 164
    invoke-interface {p4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    throw v2

    .line 168
    :cond_5
    :goto_1
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 169
    .line 170
    invoke-static {p2}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iput-object p2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 175
    .line 176
    return-object p1
.end method

.method private propHandlerByteCode(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p3}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string p2, "unable to compileShared: custom accessor does not support producing bytecode: "

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method private propHandlerByteCodePut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p3}, Lyz/d;->c(Ljava/lang/Class;)Lyz/c;

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string p2, "unable to compileShared: custom accessor does not support producing bytecode: "

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public static setMVELClassLoader(Lorg/mvel2/util/k;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->classLoader:Lorg/mvel2/util/k;

    .line 2
    .line 3
    return-void
.end method

.method public static toPrimitiveTypeOperand(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xa

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const/16 p0, 0xb

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x7

    .line 20
    return p0

    .line 21
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    if-ne p0, v0, :cond_3

    .line 24
    .line 25
    const/4 p0, 0x6

    .line 26
    return p0

    .line 27
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    if-ne p0, v0, :cond_4

    .line 30
    .line 31
    const/16 p0, 0x9

    .line 32
    .line 33
    return p0

    .line 34
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    if-ne p0, v0, :cond_5

    .line 37
    .line 38
    const/16 p0, 0x8

    .line 39
    .line 40
    return p0

    .line 41
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    if-ne p0, v0, :cond_6

    .line 44
    .line 45
    const/4 p0, 0x5

    .line 46
    return p0

    .line 47
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    if-ne p0, v0, :cond_7

    .line 50
    .line 51
    const/4 p0, 0x4

    .line 52
    return p0

    .line 53
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "Non-primitive type passed to toPrimitiveTypeOperand: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method private unwrapPrimitive(Ljava/lang/Class;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    const/16 v1, 0xb6

    .line 4
    .line 5
    const/16 v2, 0xc0

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 10
    .line 11
    const-string v0, "java/lang/Boolean"

    .line 12
    .line 13
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 17
    .line 18
    const-string v2, "booleanValue"

    .line 19
    .line 20
    const-string v3, "()Z"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 32
    .line 33
    const-string v0, "java/lang/Integer"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 39
    .line 40
    const-string v2, "intValue"

    .line 41
    .line 42
    const-string v3, "()I"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 54
    .line 55
    const-string v0, "java/lang/Float"

    .line 56
    .line 57
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 61
    .line 62
    const-string v2, "floatValue"

    .line 63
    .line 64
    const-string v3, "()F"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 75
    .line 76
    const-string v0, "java/lang/Double"

    .line 77
    .line 78
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 82
    .line 83
    const-string v2, "doubleValue"

    .line 84
    .line 85
    const-string v3, "()D"

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    if-ne p1, v0, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 96
    .line 97
    const-string v0, "java/lang/Short"

    .line 98
    .line 99
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 103
    .line 104
    const-string v2, "shortValue"

    .line 105
    .line 106
    const-string v3, "()S"

    .line 107
    .line 108
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 113
    .line 114
    if-ne p1, v0, :cond_5

    .line 115
    .line 116
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 117
    .line 118
    const-string v0, "java/lang/Long"

    .line 119
    .line 120
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 124
    .line 125
    const-string v2, "longValue"

    .line 126
    .line 127
    const-string v3, "()J"

    .line 128
    .line 129
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 134
    .line 135
    if-ne p1, v0, :cond_6

    .line 136
    .line 137
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 138
    .line 139
    const-string v0, "java/lang/Byte"

    .line 140
    .line 141
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 145
    .line 146
    const-string v2, "byteValue"

    .line 147
    .line 148
    const-string v3, "()B"

    .line 149
    .line 150
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    if-ne p1, v0, :cond_7

    .line 157
    .line 158
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 159
    .line 160
    const-string v0, "java/lang/Character"

    .line 161
    .line 162
    invoke-virtual {p1, v2, v0}, Lvz/r;->E(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 166
    .line 167
    const-string v2, "charValue"

    .line 168
    .line 169
    const-string v3, "()C"

    .line 170
    .line 171
    invoke-virtual {p1, v1, v0, v2, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    :goto_0
    return-void
.end method

.method private visitConstantClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-class p1, Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 12
    .line 13
    invoke-static {p1}, Lorg/mvel2/util/p;->i(Ljava/lang/Class;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "."

    .line 22
    .line 23
    const-string v2, "/"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "TYPE"

    .line 30
    .line 31
    const-string v2, "Ljava/lang/Class;"

    .line 32
    .line 33
    const/16 v3, 0xb2

    .line 34
    .line 35
    invoke-virtual {v0, v3, p1, v1, v2}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 40
    .line 41
    invoke-static {p1}, Lvz/y;->m(Ljava/lang/Class;)Lvz/y;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private wrapPrimitive(Ljava/lang/Class;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->OPCODES_VERSION:I

    const/16 v3, 0x30

    const-class v4, Ljava/lang/Long;

    const-class v5, Ljava/lang/Short;

    const-class v6, Ljava/lang/Double;

    const-class v7, Ljava/lang/Float;

    const-class v8, Ljava/lang/Integer;

    const-class v9, Ljava/lang/Boolean;

    const-string v10, "java/lang/Boolean"

    const-string v11, "java/lang/Integer"

    const-string v12, "java/lang/Double"

    const-string v13, "java/lang/Short"

    const-string v14, "java/lang/Byte"

    const-string v15, "java/lang/Character"

    move-object/from16 v16, v10

    const-string v10, "java/lang/Float"

    if-ne v2, v3, :cond_f

    .line 2
    const-string v2, "** Using 1.4 Bytecode **"

    invoke-direct {v0, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "SWAP"

    move-object/from16 v17, v11

    const-string v11, "DUP X1"

    move-object/from16 v18, v12

    const-string v12, "<init>"

    move-object/from16 v19, v13

    const/16 v13, 0xbb

    if-eq v1, v2, :cond_e

    if-ne v1, v9, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_d

    if-ne v1, v8, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_c

    if-ne v1, v7, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_b

    if-ne v1, v6, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_a

    if-ne v1, v5, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_9

    if-ne v1, v4, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_8

    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    const-class v2, Ljava/lang/Character;

    if-ne v1, v2, :cond_1f

    .line 11
    :cond_7
    const-string v1, "NEW java/lang/Character"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 12
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v13, v15}, Lvz/r;->E(ILjava/lang/String;)V

    .line 13
    invoke-direct {v0, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 14
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 15
    invoke-direct {v0, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 16
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 17
    const-string v1, "INVOKESPECIAL java/lang/Character.<init>::(C)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 18
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(C)V"

    const/16 v3, 0xb7

    invoke-virtual {v1, v3, v15, v12, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 19
    :cond_8
    :goto_0
    const-string v1, "NEW java/lang/Byte"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 20
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v13, v14}, Lvz/r;->E(ILjava/lang/String;)V

    .line 21
    invoke-direct {v0, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 22
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 23
    invoke-direct {v0, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 24
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 25
    const-string v1, "INVOKESPECIAL java/lang/Byte.<init>::(B)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 26
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(B)V"

    const/16 v3, 0xb7

    invoke-virtual {v1, v3, v14, v12, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 27
    :cond_9
    :goto_1
    const-string v1, "NEW java/lang/Long"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 28
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "java/lang/Long"

    invoke-virtual {v1, v13, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 29
    invoke-direct {v0, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 30
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 31
    invoke-direct {v0, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 32
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 33
    const-string v1, "INVOKESPECIAL java/lang/Long.<init>::(L)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 34
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(L)V"

    const/16 v3, 0xb7

    invoke-virtual {v1, v3, v10, v12, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 35
    :cond_a
    :goto_2
    const-string v1, "NEW java/lang/Short"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 36
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    move-object/from16 v2, v19

    invoke-virtual {v1, v13, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 37
    invoke-direct {v0, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 38
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x5a

    invoke-virtual {v1, v4}, Lvz/r;->j(I)V

    .line 39
    invoke-direct {v0, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 40
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Lvz/r;->j(I)V

    .line 41
    const-string v1, "INVOKESPECIAL java/lang/Short.<init>::(S)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 42
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v3, "(S)V"

    const/16 v4, 0xb7

    invoke-virtual {v1, v4, v2, v12, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 43
    :cond_b
    :goto_3
    const-string v1, "NEW java/lang/Double"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 44
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    move-object/from16 v3, v18

    invoke-virtual {v1, v13, v3}, Lvz/r;->E(ILjava/lang/String;)V

    .line 45
    const-string v1, "DUP X2"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 46
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 47
    const-string v1, "DUP X2"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 48
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 49
    const-string v1, "POP"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 50
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 51
    const-string v1, "INVOKESPECIAL java/lang/Double.<init>::(D)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 52
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(D)V"

    const/16 v4, 0xb7

    invoke-virtual {v1, v4, v3, v12, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 53
    :cond_c
    :goto_4
    const-string v1, "NEW java/lang/Float"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 54
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v1, v13, v10}, Lvz/r;->E(ILjava/lang/String;)V

    .line 55
    invoke-direct {v0, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 56
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 57
    invoke-direct {v0, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 58
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 59
    const-string v1, "INVOKESPECIAL java/lang/Float.<init>::(F)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 60
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(F)V"

    const/16 v3, 0xb7

    invoke-virtual {v1, v3, v10, v12, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 61
    :cond_d
    :goto_5
    const-string v1, "NEW java/lang/Integer"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 62
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    move-object/from16 v2, v17

    invoke-virtual {v1, v13, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 63
    invoke-direct {v0, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 64
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x5a

    invoke-virtual {v1, v4}, Lvz/r;->j(I)V

    .line 65
    invoke-direct {v0, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 66
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Lvz/r;->j(I)V

    .line 67
    const-string v1, "INVOKESPECIAL java/lang/Integer.<init>::(I)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 68
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v3, "(I)V"

    const/16 v4, 0xb7

    invoke-virtual {v1, v4, v2, v12, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 69
    :cond_e
    :goto_6
    const-string v1, "NEW java/lang/Boolean"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 70
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    move-object/from16 v2, v16

    invoke-virtual {v1, v13, v2}, Lvz/r;->E(ILjava/lang/String;)V

    .line 71
    invoke-direct {v0, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 72
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x5a

    invoke-virtual {v1, v4}, Lvz/r;->j(I)V

    .line 73
    invoke-direct {v0, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 74
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Lvz/r;->j(I)V

    .line 75
    const-string v1, "INVOKESPECIAL java/lang/Boolean.<init>::(Z)V"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 76
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v3, "(Z)V"

    const/16 v4, 0xb7

    invoke-virtual {v1, v4, v2, v12, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_f
    move-object v3, v12

    move-object v2, v13

    move-object v12, v11

    move-object/from16 v11, v16

    .line 77
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v11, "valueOf"

    move-object/from16 v17, v12

    const/16 v12, 0xb8

    if-eq v1, v13, :cond_1e

    if-ne v1, v9, :cond_10

    goto/16 :goto_d

    .line 78
    :cond_10
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v9, :cond_1d

    if-ne v1, v8, :cond_11

    goto/16 :goto_c

    .line 79
    :cond_11
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v8, :cond_1c

    if-ne v1, v7, :cond_12

    goto/16 :goto_b

    .line 80
    :cond_12
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v7, :cond_1b

    if-ne v1, v6, :cond_13

    goto :goto_a

    .line 81
    :cond_13
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_1a

    if-ne v1, v5, :cond_14

    goto :goto_9

    .line 82
    :cond_14
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_19

    if-ne v1, v4, :cond_15

    goto :goto_8

    .line 83
    :cond_15
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_18

    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_16

    goto :goto_7

    .line 84
    :cond_16
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_17

    const-class v2, Ljava/lang/Character;

    if-ne v1, v2, :cond_1f

    .line 85
    :cond_17
    const-string v1, "INVOKESTATIC java/lang/Character.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 86
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(C)Ljava/lang/Character;"

    invoke-virtual {v1, v12, v15, v11, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 87
    :cond_18
    :goto_7
    const-string v1, "INVOKESTATIC java/lang/Byte.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 88
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(B)Ljava/lang/Byte;"

    invoke-virtual {v1, v12, v14, v11, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 89
    :cond_19
    :goto_8
    const-string v1, "INVOKESTATIC java/lang/Long.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 90
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "java/lang/Long"

    const-string v3, "(J)Ljava/lang/Long;"

    invoke-virtual {v1, v12, v2, v11, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 91
    :cond_1a
    :goto_9
    const-string v1, "INVOKESTATIC java/lang/Short.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 92
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v3, "(S)Ljava/lang/Short;"

    invoke-virtual {v1, v12, v2, v11, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 93
    :cond_1b
    :goto_a
    const-string v1, "INVOKESTATIC java/lang/Double.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 94
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(D)Ljava/lang/Double;"

    invoke-virtual {v1, v12, v3, v11, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 95
    :cond_1c
    :goto_b
    const-string v1, "INVOKESTATIC java/lang/Float.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 96
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(F)Ljava/lang/Float;"

    invoke-virtual {v1, v12, v10, v11, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 97
    :cond_1d
    :goto_c
    const-string v1, "INVOKESTATIC java/lang/Integer.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 98
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(I)Ljava/lang/Integer;"

    move-object/from16 v3, v17

    invoke-virtual {v1, v12, v3, v11, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 99
    :cond_1e
    :goto_d
    const-string v1, "INVOKESTATIC java/lang/Boolean.valueOf"

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->debug(Ljava/lang/String;)Z

    .line 100
    iget-object v1, v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v2, "(Z)Ljava/lang/Boolean;"

    move-object/from16 v3, v16

    invoke-virtual {v1, v12, v3, v11, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_e
    return-void
.end method

.method private writeFunctionPointerStub(Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 5
    .line 6
    const-string v0, "getMethods"

    .line 7
    .line 8
    const-string v1, "()[Ljava/lang/reflect/Method;"

    .line 9
    .line 10
    const/16 v2, 0xb6

    .line 11
    .line 12
    const-string v3, "java/lang/Class"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v3, v0, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 18
    .line 19
    const/16 v0, 0x3a

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    invoke-virtual {p1, v0, v1}, Lvz/r;->F(II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    invoke-virtual {p1, v3}, Lvz/r;->j(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 32
    .line 33
    const/16 v3, 0x36

    .line 34
    .line 35
    const/4 v4, 0x5

    .line 36
    invoke-virtual {p1, v3, v4}, Lvz/r;->F(II)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 40
    .line 41
    const/16 v5, 0x19

    .line 42
    .line 43
    invoke-virtual {p1, v5, v1}, Lvz/r;->F(II)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 47
    .line 48
    const/16 v6, 0xbe

    .line 49
    .line 50
    invoke-virtual {p1, v6}, Lvz/r;->j(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 54
    .line 55
    const/4 v6, 0x6

    .line 56
    invoke-virtual {p1, v3, v6}, Lvz/r;->F(II)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lvz/q;

    .line 60
    .line 61
    invoke-direct {p1}, Lvz/q;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 65
    .line 66
    const/16 v7, 0xa7

    .line 67
    .line 68
    invoke-virtual {v3, v7, p1}, Lvz/r;->n(ILvz/q;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lvz/q;

    .line 72
    .line 73
    invoke-direct {v3}, Lvz/q;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 77
    .line 78
    invoke-virtual {v7, v3}, Lvz/r;->o(Lvz/q;)V

    .line 79
    .line 80
    .line 81
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 82
    .line 83
    invoke-virtual {v7, v5, v1}, Lvz/r;->F(II)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 87
    .line 88
    const/16 v7, 0x15

    .line 89
    .line 90
    invoke-virtual {v1, v7, v4}, Lvz/r;->F(II)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 94
    .line 95
    const/16 v8, 0x32

    .line 96
    .line 97
    invoke-virtual {v1, v8}, Lvz/r;->j(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 101
    .line 102
    const/4 v8, 0x4

    .line 103
    invoke-virtual {v1, v0, v8}, Lvz/r;->F(II)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lvz/q;

    .line 107
    .line 108
    invoke-direct {v0}, Lvz/q;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lvz/r;->o(Lvz/q;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {v0, p2}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 126
    .line 127
    invoke-virtual {p2, v5, v8}, Lvz/r;->F(II)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 131
    .line 132
    const-string v0, "getName"

    .line 133
    .line 134
    const-string v1, "()Ljava/lang/String;"

    .line 135
    .line 136
    const-string v9, "java/lang/reflect/Method"

    .line 137
    .line 138
    invoke-virtual {p2, v2, v9, v0, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 142
    .line 143
    const-string v0, "equals"

    .line 144
    .line 145
    const-string v1, "(Ljava/lang/Object;)Z"

    .line 146
    .line 147
    const-string v9, "java/lang/String"

    .line 148
    .line 149
    invoke-virtual {p2, v2, v9, v0, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance p2, Lvz/q;

    .line 153
    .line 154
    invoke-direct {p2}, Lvz/q;-><init>()V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 158
    .line 159
    const/16 v1, 0x99

    .line 160
    .line 161
    invoke-virtual {v0, v1, p2}, Lvz/r;->n(ILvz/q;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lvz/q;

    .line 165
    .line 166
    invoke-direct {v0}, Lvz/q;-><init>()V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Lvz/r;->o(Lvz/q;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 175
    .line 176
    invoke-virtual {v0, v5, v8}, Lvz/r;->F(II)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 180
    .line 181
    const/16 v1, 0xb0

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 187
    .line 188
    invoke-virtual {v0, p2}, Lvz/r;->o(Lvz/q;)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 192
    .line 193
    const/4 v0, 0x1

    .line 194
    invoke-virtual {p2, v4, v0}, Lvz/r;->i(II)V

    .line 195
    .line 196
    .line 197
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Lvz/r;->o(Lvz/q;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 203
    .line 204
    invoke-virtual {p1, v7, v4}, Lvz/r;->F(II)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 208
    .line 209
    invoke-virtual {p1, v7, v6}, Lvz/r;->F(II)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 213
    .line 214
    const/16 p2, 0xa1

    .line 215
    .line 216
    invoke-virtual {p1, p2, v3}, Lvz/r;->n(ILvz/q;)V

    .line 217
    .line 218
    .line 219
    new-instance p1, Lvz/q;

    .line 220
    .line 221
    invoke-direct {p1}, Lvz/q;-><init>()V

    .line 222
    .line 223
    .line 224
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 225
    .line 226
    invoke-virtual {p2, p1}, Lvz/r;->o(Lvz/q;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Lvz/r;->j(I)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method private writeLiteralOrSubexpression(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    .line 3
    instance-of v0, p1, Lorg/mvel2/compiler/ExecutableLiteral;

    if-eqz v0, :cond_4

    .line 4
    check-cast p1, Lorg/mvel2/compiler/ExecutableLiteral;

    invoke-virtual {p1}, Lorg/mvel2/compiler/ExecutableLiteral;->getLiteral()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    .line 5
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lvz/r;->j(I)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 7
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lorg/mvel2/compiler/ExecutableLiteral;->getInteger32()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_3

    .line 9
    invoke-static {v0, p2}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p3, p2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeOutLiteralWrapped(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "was expecting type: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; but found type: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    .line 12
    :cond_3
    invoke-direct {p0, p3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeOutLiteralWrapped(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->literal:Z

    .line 14
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->addSubstatement(Lorg/mvel2/compiler/ExecutableStatement;)Ljava/lang/Object;

    if-nez p3, :cond_5

    .line 15
    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p3

    :cond_5
    if-eqz p2, :cond_7

    if-eq p3, p2, :cond_7

    .line 16
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    .line 17
    invoke-direct {p0, p3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    .line 18
    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    goto :goto_1

    .line 19
    :cond_6
    new-instance p1, Lorg/mvel2/OptimizationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot optimize expression: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": cannot determine ingress type for primitive output"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-object p3
.end method

.method private writeOutLiteralWrapped(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 85
    .line 86
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    instance-of v0, p1, Ljava/lang/Character;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 115
    .line 116
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    instance-of v0, p1, Ljava/lang/Byte;

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 130
    .line 131
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->wrapPrimitive(Ljava/lang/Class;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_0
    return-void
.end method

.method private writeOutNullHandler(Ljava/lang/reflect/Member;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 2
    .line 3
    const/16 v1, 0x59

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lvz/r;->j(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lvz/q;

    .line 9
    .line 10
    invoke-direct {v0}, Lvz/q;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 14
    .line 15
    const/16 v2, 0xc7

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lvz/r;->n(ILvz/q;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 21
    .line 22
    const/16 v2, 0x57

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lvz/r;->j(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/16 v3, 0x19

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lvz/r;->F(II)V

    .line 33
    .line 34
    .line 35
    const-string v1, "integration/PropertyHandler;"

    .line 36
    .line 37
    const-string v2, "L"

    .line 38
    .line 39
    const/16 v4, 0xb4

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    iput-boolean v5, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propNull:Z

    .line 45
    .line 46
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 47
    .line 48
    iget-object v6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "nullPropertyHandler"

    .line 71
    .line 72
    invoke-virtual {p2, v4, v6, v2, v1}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iput-boolean v5, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->methNull:Z

    .line 77
    .line 78
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 79
    .line 80
    iget-object v6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "nullMethodHandler"

    .line 103
    .line 104
    invoke-virtual {p2, v4, v6, v2, v1}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p2, p1}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 117
    .line 118
    invoke-virtual {p1, v3, v5}, Lvz/r;->F(II)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 122
    .line 123
    const/4 p2, 0x3

    .line 124
    invoke-virtual {p1, v3, p2}, Lvz/r;->F(II)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 128
    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, "integration/PropertyHandler"

    .line 140
    .line 141
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v2, "(Ljava/lang/String;Ljava/lang/Object;L"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, "integration/VariableResolverFactory;)Ljava/lang/Object;"

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const/16 v2, 0xb9

    .line 173
    .line 174
    const-string v3, "getProperty"

    .line 175
    .line 176
    invoke-virtual {p1, v2, p2, v3, v1}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lvz/r;->o(Lvz/q;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method


# virtual methods
.method public arrayStore(Ljava/lang/Class;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 12
    .line 13
    const/16 v0, 0x4f

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 24
    .line 25
    const/16 v0, 0x55

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    const/16 v1, 0x54

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lvz/r;->j(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    if-ne p1, v0, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 48
    .line 49
    const/16 v0, 0x52

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    if-ne p1, v0, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 60
    .line 61
    const/16 v0, 0x51

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    if-ne p1, v0, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 72
    .line 73
    const/16 v0, 0x56

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    if-ne p1, v0, :cond_6

    .line 82
    .line 83
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 84
    .line 85
    const/16 v0, 0x50

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    if-ne p1, v0, :cond_8

    .line 94
    .line 95
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lvz/r;->j(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 102
    .line 103
    const/16 v0, 0x53

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lvz/r;->j(I)V

    .line 106
    .line 107
    .line 108
    :cond_8
    :goto_0
    return-void
.end method

.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ASM"

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultOptPass()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->val:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/mvel2/util/i;

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
    invoke-direct {v0, v1}, Lorg/mvel2/util/i;-><init>(Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->classLoader:Lorg/mvel2/util/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public isLiteralOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->literal:Z

    .line 2
    .line 3
    return v0
.end method

.method public optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->time:J

    .line 6
    .line 7
    iget-object p8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez p8, :cond_0

    .line 10
    .line 11
    new-instance p8, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 17
    .line 18
    :cond_0
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 19
    .line 20
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 21
    .line 22
    add-int/2addr p4, p3

    .line 23
    iput p4, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 24
    .line 25
    sub-int/2addr p4, p3

    .line 26
    iput p4, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 27
    .line 28
    const/4 p3, 0x1

    .line 29
    iput-boolean p3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    iput-object p3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->val:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 35
    .line 36
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 37
    .line 38
    iput-object p5, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object p6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 43
    .line 44
    iput-object p9, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ingressType:Ljava/lang/Class;

    .line 45
    .line 46
    iget-boolean p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->noinit:Z

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initJIT()V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compileAccessor()Lorg/mvel2/compiler/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;
    .locals 6

    .line 1
    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 2
    .line 3
    iput p5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 4
    .line 5
    iput p5, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 6
    .line 7
    add-int v0, p5, p6

    .line 8
    .line 9
    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 10
    .line 11
    iput p6, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 12
    .line 13
    iput-object p3, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 14
    .line 15
    new-instance p6, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object p7, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p8, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p9, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 27
    .line 28
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 29
    .line 30
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initJIT()V

    .line 31
    .line 32
    .line 33
    const/4 p6, 0x1

    .line 34
    iput-boolean p6, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->literal:Z

    .line 35
    .line 36
    invoke-direct {p0, p2, p3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_finishJIT()V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initializeAccessor()Lorg/mvel2/compiler/a;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz p4, :cond_0

    .line 47
    .line 48
    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 49
    .line 50
    if-le v5, p5, :cond_0

    .line 51
    .line 52
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/a;

    .line 53
    .line 54
    move-object v0, p2

    .line 55
    move-object v1, p1

    .line 56
    move-object v3, p4

    .line 57
    move v4, p5

    .line 58
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/optimizers/impl/refl/nodes/a;-><init>(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;[CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-object p2

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-object v2

    .line 65
    :goto_0
    new-instance p2, Lorg/mvel2/OptimizationFailure;

    .line 66
    .line 67
    const-string p3, "could not optimize collection"

    .line 68
    .line 69
    invoke-direct {p2, p3, p1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method public optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initJIT()V

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    .line 3
    iput v2, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iput v2, v1, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int v5, v2, p4

    .line 4
    iput v5, v1, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr v5, v2

    .line 5
    iput v5, v1, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 6
    iput-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ctx:Ljava/lang/Object;

    move-object/from16 v5, p6

    .line 7
    iput-object v5, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    .line 8
    iput-object v4, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 9
    iput-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 10
    invoke-static/range {p2 .. p4}, Lorg/mvel2/util/m;->g([CII)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 11
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7}, Lorg/mvel2/util/m;->w0([C)Ljava/util/List;

    move-result-object v7

    .line 12
    const-string v9, "<init>"

    const/16 v11, 0xbb

    const/16 v12, 0x59

    const-string v13, ""

    if-eqz v7, :cond_f

    .line 13
    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, [C

    .line 14
    iget-object v14, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    invoke-static {v10, v0}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lorg/mvel2/compiler/ExecutableStatement;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 15
    :cond_0
    new-instance v10, Ljava/lang/String;

    iget v14, v1, Lorg/mvel2/compiler/AbstractParser;->length:I

    const/16 v15, 0x28

    invoke-static {v15, v2, v14, v8}, Lorg/mvel2/util/b;->a(CII[C)I

    move-result v2

    invoke-static {v8, v6, v2}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v4, v10, v0}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v2

    .line 16
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v2}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Lvz/r;->E(ILjava/lang/String;)V

    .line 17
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v10, v12}, Lvz/r;->j(I)V

    .line 18
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    new-array v11, v10, [Ljava/lang/Object;

    .line 19
    iget-object v14, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v6

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lorg/mvel2/compiler/ExecutableStatement;

    add-int/lit8 v16, v15, 0x1

    .line 20
    invoke-interface {v6, v3, v4}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v11, v15

    move/from16 v15, v16

    const/4 v6, 0x0

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v3

    invoke-static {v11, v2, v3}, Lorg/mvel2/util/m;->N([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-nez v3, :cond_4

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :cond_2
    :goto_2
    if-ge v6, v10, :cond_3

    .line 23
    aget-object v3, v11, v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v10, :cond_2

    .line 24
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 25
    :cond_3
    new-instance v3, Lorg/mvel2/CompileException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {v3, v0, v2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v3

    .line 26
    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 27
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v10, 0x0

    .line 28
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_d

    .line 29
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-ge v10, v14, :cond_5

    .line 30
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v10

    .line 31
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v10, v14, :cond_6

    .line 32
    invoke-static {v4}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 33
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v10

    invoke-direct {v1, v4, v6}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->createArray(Ljava/lang/Class;I)V

    move v6, v10

    goto :goto_4

    :cond_5
    if-ltz v6, :cond_c

    if-eqz v4, :cond_c

    :cond_6
    :goto_4
    if-ltz v6, :cond_7

    .line 34
    iget-object v14, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v14, v12}, Lvz/r;->j(I)V

    sub-int v14, v10, v6

    .line 35
    invoke-direct {v1, v14}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->intPush(I)V

    .line 36
    :cond_7
    iget-object v14, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v15, 0x19

    const/4 v12, 0x0

    invoke-virtual {v14, v15, v12}, Lvz/r;->F(II)V

    .line 37
    iget-object v14, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    iget-object v12, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->className:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    const-string v7, "p"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "L"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "compiler/ExecutableStatement;"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xb4

    invoke-virtual {v14, v15, v12, v7, v0}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v7, 0x2

    const/16 v12, 0x19

    invoke-virtual {v0, v12, v7}, Lvz/r;->F(II)V

    .line 39
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v7, 0x3

    invoke-virtual {v0, v12, v7}, Lvz/r;->F(II)V

    .line 40
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "compiler/ExecutableStatement"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "getValue"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(Ljava/lang/Object;L"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "integration/VariableResolverFactory;)Ljava/lang/Object;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb9

    invoke-virtual {v0, v15, v7, v12, v14}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {v1, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v4

    .line 42
    :goto_5
    aget-object v7, v11, v10

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 43
    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    .line 44
    iget-object v7, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "DataConversion"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "convert"

    const-string v12, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;"

    move-object/from16 v18, v11

    const/16 v11, 0xb8

    invoke-virtual {v7, v11, v14, v15, v12}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 46
    invoke-direct {v1, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    goto :goto_6

    .line 47
    :cond_9
    iget-object v7, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v0}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0xc0

    invoke-virtual {v7, v11, v0}, Lvz/r;->E(ILjava/lang/String;)V

    goto :goto_6

    :cond_a
    move-object/from16 v18, v11

    .line 48
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v4}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xc0

    invoke-virtual {v0, v11, v7}, Lvz/r;->E(ILjava/lang/String;)V

    :goto_6
    if-ltz v6, :cond_b

    .line 49
    invoke-virtual {v1, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->arrayStore(Ljava/lang/Class;)V

    :cond_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v7, v17

    move-object/from16 v11, v18

    const/16 v12, 0x59

    goto/16 :goto_3

    .line 50
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect argument count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_d
    iget-object v0, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v2}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lvz/y;->d(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb7

    invoke-virtual {v0, v4, v2, v9, v3}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_finishJIT()V

    .line 53
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initializeAccessor()Lorg/mvel2/compiler/a;

    move-result-object v4

    .line 54
    array-length v0, v5

    const/4 v2, 0x1

    if-le v0, v2, :cond_e

    aget-object v0, v5, v2

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 55
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/a;

    aget-object v3, v5, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v5, v6

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lorg/mvel2/optimizers/impl/refl/nodes/a;-><init>(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;[CII)V

    return-object v0

    :cond_e
    return-object v4

    .line 56
    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v3, p1

    invoke-static {v4, v0, v3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v0}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Lvz/r;->E(ILjava/lang/String;)V

    .line 58
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x59

    invoke-virtual {v2, v4}, Lvz/r;->j(I)V

    .line 59
    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->EMPTYCLS:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 60
    iget-object v4, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-static {v0}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lvz/y;->d(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb7

    invoke-virtual {v4, v6, v0, v9, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_finishJIT()V

    .line 62
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initializeAccessor()Lorg/mvel2/compiler/a;

    move-result-object v4

    .line 63
    array-length v0, v5

    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    aget-object v0, v5, v2

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 64
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/a;

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v5, v6

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lorg/mvel2/optimizers/impl/refl/nodes/a;-><init>(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;[CII)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_10
    return-object v4

    .line 65
    :goto_7
    new-instance v2, Lorg/mvel2/OptimizationFailure;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not optimize construtor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 66
    :catch_1
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class or class reference not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {v0, v2, v8, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0
.end method

.method public optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/a;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p9

    .line 1
    const-string v7, ": to "

    const-class v8, Ljava/lang/reflect/Array;

    const-class v9, Ljava/util/List;

    const-class v10, Ljava/util/Map;

    iput-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 2
    iput v4, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iput v4, v1, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int v11, v4, p4

    .line 3
    iput v11, v1, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 4
    iput v11, v1, Lorg/mvel2/compiler/AbstractParser;->length:I

    const/4 v11, 0x1

    .line 5
    iput-boolean v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->first:Z

    move-object/from16 v12, p10

    .line 6
    iput-object v12, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ingressType:Ljava/lang/Class;

    .line 7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compiledInputs:Ljava/util/ArrayList;

    move-object/from16 v13, p5

    .line 8
    iput-object v13, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ctx:Ljava/lang/Object;

    move-object/from16 v14, p6

    .line 9
    iput-object v14, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->thisRef:Ljava/lang/Object;

    move-object/from16 v14, p7

    .line 10
    iput-object v14, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 11
    new-instance v14, Lorg/mvel2/compiler/PropertyVerifier;

    iput-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v14, v3, v2}, Lorg/mvel2/compiler/PropertyVerifier;-><init>([CLorg/mvel2/ParserContext;)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->findLastUnion()I

    move-result v15

    const/4 v6, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    if-eq v15, v6, :cond_0

    .line 13
    invoke-static {v3, v11, v15}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, v16

    .line 14
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initJIT2()V

    if-eqz v3, :cond_1

    .line 15
    iget v13, v1, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 16
    iget-object v15, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 17
    iput-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    array-length v11, v3

    iput v11, v1, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput v11, v1, Lorg/mvel2/compiler/AbstractParser;->length:I

    const/4 v11, 0x1

    .line 18
    iput-boolean v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    .line 19
    iput-boolean v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->noinit:Z

    .line 20
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->compileAccessor()Lorg/mvel2/compiler/a;

    .line 21
    iget-object v6, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->val:Ljava/lang/Object;

    .line 22
    iput-object v15, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 23
    array-length v15, v3

    add-int/2addr v15, v4

    add-int/2addr v15, v11

    iput v15, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 24
    array-length v3, v3

    sub-int/2addr v13, v3

    sub-int/2addr v13, v11

    iput v13, v1, Lorg/mvel2/compiler/AbstractParser;->length:I

    add-int/2addr v15, v13

    .line 25
    iput v15, v1, Lorg/mvel2/compiler/AbstractParser;->end:I

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    .line 26
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v6, 0x19

    invoke-virtual {v3, v6, v11}, Lvz/r;->F(II)V

    move-object v6, v13

    .line 27
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 28
    iget-boolean v3, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_10

    const-string v11, "could not generate accessor"

    const-string v13, "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v15, "put"

    const-string v12, "java/util/Map"

    move-object/from16 v17, v7

    if-eqz v3, :cond_10

    .line 29
    :try_start_1
    iget v3, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 30
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->whiteSpaceSkip()V

    .line 31
    iget v7, v1, Lorg/mvel2/compiler/AbstractParser;->end:I
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    const-string v4, "unterminated \'[\'"

    if-eq v3, v7, :cond_f

    const/16 v7, 0x5d

    .line 32
    :try_start_2
    invoke-virtual {v1, v7}, Lorg/mvel2/optimizers/AbstractOptimizer;->scanTo(C)Z

    move-result v7

    if-nez v7, :cond_e

    .line 33
    new-instance v4, Ljava/lang/String;

    iget-object v7, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    move-object/from16 v18, v11

    iget v11, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr v11, v3

    invoke-direct {v4, v7, v3, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 34
    iget-object v4, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xc0

    invoke-virtual {v4, v11, v7}, Lvz/r;->E(ILjava/lang/String;)V

    .line 35
    instance-of v4, v6, Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 36
    sget-boolean v4, Lorg/mvel2/d;->h:Z

    if-eqz v4, :cond_2

    invoke-static {v10}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-direct {v1, v3, v6, v10, v5}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCodePut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move/from16 v7, p3

    :goto_3
    move-object v5, v2

    :goto_4
    move-object v2, v0

    goto/16 :goto_17

    :catch_1
    move-exception v0

    move/from16 v7, p3

    :goto_5
    move-object v5, v2

    :goto_6
    move-object v2, v0

    goto/16 :goto_18

    .line 38
    :cond_2
    move-object v4, v6

    check-cast v4, Ljava/util/Map;

    iget-object v7, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v3, v6, v7}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v14}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object v7

    iput-object v7, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-static {v5, v7}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;)Ljava/lang/Class;

    .line 40
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x19

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v6}, Lvz/r;->F(II)V

    if-eqz v5, :cond_3

    .line 41
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 42
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->dataConversion(Ljava/lang/Class;)V

    .line 43
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    .line 44
    :cond_3
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0xb9

    invoke-virtual {v3, v4, v12, v15, v13}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x57

    invoke-virtual {v3, v4}, Lvz/r;->j(I)V

    .line 46
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x19

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lvz/r;->F(II)V

    goto :goto_2

    .line 47
    :cond_4
    instance-of v4, v6, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    const-class v7, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 48
    :try_start_3
    sget-boolean v4, Lorg/mvel2/d;->h:Z

    if-eqz v4, :cond_5

    invoke-static {v9}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 49
    invoke-direct {v1, v3, v6, v9, v5}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCodePut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_2

    .line 50
    :cond_5
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    iget-object v8, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v3, v6, v8, v7}, Lorg/mvel2/d;->m(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v14}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object v7

    iput-object v7, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-static {v5, v7}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;)Ljava/lang/Class;

    .line 52
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    .line 53
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x19

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v6}, Lvz/r;->F(II)V

    if-eqz v5, :cond_6

    .line 54
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 55
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->dataConversion(Ljava/lang/Class;)V

    .line 56
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {v1, v3}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    .line 57
    :cond_6
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const-string v4, "java/util/List"

    const-string v5, "set"

    const-string v6, "(ILjava/lang/Object;)Ljava/lang/Object;"

    const/16 v7, 0xb9

    invoke-virtual {v3, v7, v4, v5, v6}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x19

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lvz/r;->F(II)V

    goto/16 :goto_2

    .line 59
    :cond_7
    sget-boolean v4, Lorg/mvel2/d;->h:Z

    if-eqz v4, :cond_8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v6, v4, v5}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCodePut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 61
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 62
    sget-boolean v4, Lorg/mvel2/d;->h:Z

    if-eqz v4, :cond_9

    invoke-static {v8}, Lyz/d;->f(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 63
    invoke-direct {v1, v3, v6, v8, v5}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->propHandlerByteCodePut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 64
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 65
    iget-object v8, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v3, v6, v8}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v8

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v3, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->writeLiteralOrSubexpression(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    .line 67
    instance-of v3, v8, Ljava/lang/Integer;

    if-nez v3, :cond_a

    .line 68
    invoke-direct {v1, v7}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->dataConversion(Ljava/lang/Class;)V

    .line 69
    invoke-static {v8, v7}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 70
    invoke-direct {v1, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    .line 71
    :cond_a
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v7, 0x19

    const/4 v9, 0x4

    invoke-virtual {v3, v7, v9}, Lvz/r;->F(II)V

    .line 72
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {v1, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    goto :goto_7

    .line 73
    :cond_b
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 74
    invoke-direct {v1, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->dataConversion(Ljava/lang/Class;)V

    .line 75
    :cond_c
    :goto_7
    invoke-virtual {v1, v4}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->arrayStore(Ljava/lang/Class;)V

    .line 76
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v5, v4}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x19

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lvz/r;->F(II)V

    goto/16 :goto_2

    .line 78
    :goto_8
    iput-boolean v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    .line 79
    iput-boolean v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->noinit:Z

    .line 80
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_finishJIT()V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    :try_start_4
    iput-boolean v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    .line 82
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initializeAccessor()Lorg/mvel2/compiler/a;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v2

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 83
    :try_start_5
    new-instance v4, Lorg/mvel2/CompileException;

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 v7, p3

    move-object/from16 v8, v18

    :try_start_6
    invoke-direct {v4, v8, v5, v7, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v4

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_5

    :cond_d
    move/from16 v7, p3

    .line 84
    new-instance v3, Lorg/mvel2/PropertyAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot bind to collection property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    iget-object v8, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": not a recognized collection type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v3, v4, v5, v7, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v3

    :cond_e
    move/from16 v7, p3

    move-object v3, v4

    .line 85
    new-instance v4, Lorg/mvel2/PropertyAccessException;

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v4, v3, v5, v7, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v4

    :cond_f
    move/from16 v7, p3

    move-object v3, v4

    .line 86
    new-instance v4, Lorg/mvel2/PropertyAccessException;

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v4, v3, v5, v7, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v4

    :catch_5
    move-exception v0

    move v7, v4

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move v7, v4

    goto/16 :goto_5

    :cond_10
    move v7, v4

    move-object v8, v11

    .line 87
    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v9, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v10, v1, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr v10, v9

    invoke-direct {v3, v4, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v5, :cond_11

    move-object/from16 v9, v16

    goto :goto_9

    :cond_11
    move-object/from16 v9, p10

    :goto_9
    invoke-static {v4, v3, v9}, Lorg/mvel2/util/n;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v4

    .line 89
    invoke-static {}, Lyz/a;->b()Z

    move-result v9
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v10, 0x3

    if-eqz v9, :cond_12

    .line 90
    :try_start_7
    iget-object v9, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v11, 0x1

    const/16 v14, 0x19

    invoke-virtual {v9, v14, v11}, Lvz/r;->F(II)V

    .line 91
    iget-object v9, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v9, v3}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 92
    iget-object v9, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v9, v14, v10}, Lvz/r;->F(II)V

    .line 93
    iget-object v9, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v11, 0x4

    invoke-virtual {v9, v14, v11}, Lvz/r;->F(II)V

    .line 94
    iget-object v9, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "integration/GlobalListenerFactory"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "notifySetListeners"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Ljava/lang/Object;Ljava/lang/String;L"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "integration/VariableResolverFactory;Ljava/lang/Object;)V"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xb8

    invoke-virtual {v9, v10, v11, v14, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {v6, v3, v2, v5}, Lyz/a;->d(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_6

    .line 96
    :cond_12
    :goto_a
    instance-of v2, v4, Ljava/lang/reflect/Field;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    const-string v9, "cannot convert type: "

    const/16 v11, 0xc7

    if-eqz v2, :cond_17

    .line 97
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    .line 98
    check-cast v4, Ljava/lang/reflect/Field;

    .line 99
    new-instance v2, Lvz/q;

    invoke-direct {v2}, Lvz/q;-><init>()V

    .line 100
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    const/16 v13, 0xb5

    if-eqz v12, :cond_14

    .line 101
    iget-object v12, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v14, 0x3a

    const/4 v15, 0x5

    invoke-virtual {v12, v14, v15}, Lvz/r;->F(II)V

    .line 102
    iget-object v12, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v10, 0x4

    const/16 v14, 0x19

    invoke-virtual {v12, v14, v10}, Lvz/r;->F(II)V

    if-nez v5, :cond_13

    .line 103
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/mvel2/util/n;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 104
    :cond_13
    new-instance v10, Lvz/q;

    invoke-direct {v10}, Lvz/q;-><init>()V

    .line 105
    iget-object v12, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v12, v11, v10}, Lvz/r;->n(ILvz/q;)V

    .line 106
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v12, 0x19

    invoke-virtual {v11, v12, v15}, Lvz/r;->F(II)V

    .line 107
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lvz/r;->j(I)V

    .line 108
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lvz/y;->f(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v12, v3, v14}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v12, 0xa7

    invoke-virtual {v11, v12, v2}, Lvz/r;->n(ILvz/q;)V

    .line 110
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v11, v10}, Lvz/r;->o(Lvz/q;)V

    .line 111
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v12, 0x19

    invoke-virtual {v11, v12, v15}, Lvz/r;->F(II)V

    .line 112
    iget-object v11, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v14, 0x4

    invoke-virtual {v11, v12, v14}, Lvz/r;->F(II)V

    .line 113
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    move-object/from16 v16, v10

    goto :goto_b

    .line 114
    :cond_14
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v11, 0x19

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Lvz/r;->F(II)V

    .line 115
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    :goto_b
    if-nez v16, :cond_16

    if-eqz v5, :cond_16

    .line 116
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 117
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 118
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->dataConversion(Ljava/lang/Class;)V

    .line 119
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v5, v9}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 120
    :cond_15
    new-instance v2, Lorg/mvel2/CompileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v17

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v2, v3, v4, v7}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2

    .line 121
    :cond_16
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :goto_c
    iget-object v5, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lvz/y;->f(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v13, v6, v3, v4}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v3, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v3, v2}, Lvz/r;->o(Lvz/q;)V

    .line 124
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0x19

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lvz/r;->F(II)V

    :goto_d
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_17
    move-object/from16 v10, v17

    if-eqz v4, :cond_1d

    .line 125
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0xc0

    invoke-virtual {v2, v12, v3}, Lvz/r;->E(ILjava/lang/String;)V

    .line 126
    check-cast v4, Ljava/lang/reflect/Method;

    .line 127
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0x19

    const/4 v12, 0x4

    invoke-virtual {v2, v3, v12}, Lvz/r;->F(II)V

    .line 128
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 129
    new-instance v3, Lvz/q;

    invoke-direct {v3}, Lvz/q;-><init>()V

    if-eqz v5, :cond_1a

    .line 130
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 131
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v2, v11}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 132
    invoke-direct {v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->dataConversion(Ljava/lang/Class;)V

    .line 133
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 134
    invoke-direct {v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    goto :goto_e

    .line 135
    :cond_18
    invoke-direct {v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V

    .line 136
    :goto_e
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v2, v2, v9

    invoke-static {v5, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v5, 0x1

    :try_start_9
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9
    :try_end_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_9

    :try_start_a
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    :goto_f
    move-object v2, v0

    goto :goto_11

    :goto_10
    move-object v2, v0

    goto :goto_12

    :catch_9
    move-exception v0

    goto :goto_f

    :goto_11
    move-object/from16 v5, p1

    goto/16 :goto_17

    :catch_a
    move-exception v0

    goto :goto_10

    :goto_12
    move-object/from16 v5, p1

    goto/16 :goto_18

    .line 137
    :cond_19
    new-instance v2, Lorg/mvel2/CompileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v2, v3, v4, v7}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2

    .line 138
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_1c

    if-nez v5, :cond_1b

    .line 139
    invoke-static {v2}, Lorg/mvel2/util/n;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 140
    :cond_1b
    new-instance v9, Lvz/q;

    invoke-direct {v9}, Lvz/q;-><init>()V

    .line 141
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v10, v11, v9}, Lvz/r;->n(ILvz/q;)V

    .line 142
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lvz/r;->j(I)V

    .line 143
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb6

    invoke-virtual {v10, v14, v11, v12, v13}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v11, 0xa7

    invoke-virtual {v10, v11, v3}, Lvz/r;->n(ILvz/q;)V

    .line 145
    iget-object v10, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v10, v9}, Lvz/r;->o(Lvz/q;)V

    .line 146
    iget-object v9, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v10, 0x19

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Lvz/r;->F(II)V

    .line 147
    invoke-direct {v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->unwrapPrimitive(Ljava/lang/Class;)V

    :goto_13
    const/4 v2, 0x1

    goto :goto_14

    .line 148
    :cond_1c
    invoke-direct {v1, v2}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->checkcast(Ljava/lang/Class;)V
    :try_end_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_13

    .line 149
    :goto_14
    :try_start_b
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v2, v9
    :try_end_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_b

    :try_start_c
    invoke-virtual {v4, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_15
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lvz/y;->i(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0xb6

    invoke-virtual {v2, v9, v5, v6, v4}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v2, v3}, Lvz/r;->o(Lvz/q;)V

    .line 152
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v3, 0x19

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lvz/r;->F(II)V

    goto/16 :goto_d

    :catch_b
    move-exception v0

    goto/16 :goto_f

    :catch_c
    move-exception v0

    goto/16 :goto_10

    .line 153
    :cond_1d
    instance-of v2, v6, Ljava/util/Map;

    if-eqz v2, :cond_1e

    .line 154
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lvz/y;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0xc0

    invoke-virtual {v2, v9, v4}, Lvz/r;->E(ILjava/lang/String;)V

    .line 155
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v2, v3}, Lvz/r;->p(Ljava/lang/Object;)V

    .line 156
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v4, 0x19

    const/4 v9, 0x4

    invoke-virtual {v2, v4, v9}, Lvz/r;->F(II)V

    .line 157
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    const/16 v10, 0xb9

    invoke-virtual {v2, v10, v12, v15, v13}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    invoke-virtual {v2, v4, v9}, Lvz/r;->F(II)V

    .line 159
    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_d

    .line 160
    :goto_16
    :try_start_d
    iput-boolean v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->deferFinish:Z

    .line 161
    iput-boolean v2, v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->noinit:Z

    .line 162
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_finishJIT()V

    .line 163
    invoke-direct/range {p0 .. p0}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->_initializeAccessor()Lorg/mvel2/compiler/a;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    return-object v2

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 164
    new-instance v3, Lorg/mvel2/CompileException;

    iget-object v4, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v3, v8, v4, v7, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v3

    .line 165
    :cond_1e
    :try_start_e
    new-instance v2, Lorg/mvel2/PropertyAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not access property ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") in: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_7

    move-object/from16 v5, p1

    :try_start_f
    invoke-direct {v2, v3, v4, v7, v5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v2
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_e

    :catch_e
    move-exception v0

    goto/16 :goto_4

    :catch_f
    move-exception v0

    goto/16 :goto_6

    :catch_10
    move-exception v0

    move-object v5, v2

    move v7, v4

    goto/16 :goto_4

    :catch_11
    move-exception v0

    move-object v5, v2

    move v7, v4

    goto/16 :goto_6

    .line 166
    :goto_17
    new-instance v3, Lorg/mvel2/PropertyAccessException;

    const-string v4, "could not access property"

    iget-object v6, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v6

    move/from16 p7, p3

    move-object/from16 p8, v2

    move-object/from16 p9, p1

    invoke-direct/range {p4 .. p9}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v3

    .line 167
    :goto_18
    new-instance v3, Lorg/mvel2/PropertyAccessException;

    const-string v4, "could not access property"

    iget-object v6, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v6

    move/from16 p7, p3

    move-object/from16 p8, v2

    move-object/from16 p9, p1

    invoke-direct/range {p4 .. p9}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v3
.end method

.method public wrapRuntimeConverstion(Ljava/lang/Class;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->ldcClassConstant(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->mv:Lvz/r;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lorg/mvel2/optimizers/impl/asm/ASMAccessorOptimizer;->NAMESPACE:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "DataConversion"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "convert"

    .line 35
    .line 36
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;"

    .line 37
    .line 38
    const/16 v3, 0xb8

    .line 39
    .line 40
    invoke-virtual {p1, v3, v0, v1, v2}, Lvz/r;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
