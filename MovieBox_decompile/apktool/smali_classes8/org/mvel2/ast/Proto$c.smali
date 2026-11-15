.class public Lorg/mvel2/ast/Proto$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lorg/mvel2/ast/Proto$ReceiverType;

.field private b:Ljava/lang/Object;

.field private c:Lorg/mvel2/compiler/ExecutableStatement;

.field private d:Lorg/mvel2/ast/Proto$b;

.field final synthetic e:Lorg/mvel2/ast/Proto;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto$b;Lorg/mvel2/ast/Proto$ReceiverType;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/mvel2/ast/Proto$c;->d:Lorg/mvel2/ast/Proto$b;

    .line 3
    iput-object p3, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 4
    iput-object p4, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto$b;Lorg/mvel2/ast/Proto$ReceiverType;Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lorg/mvel2/ast/Proto$c;->d:Lorg/mvel2/ast/Proto$b;

    .line 7
    iput-object p3, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 8
    iput-object p4, p0, Lorg/mvel2/ast/Proto$c;->c:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method static synthetic a(Lorg/mvel2/ast/Proto$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lorg/mvel2/ast/Proto$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lorg/mvel2/ast/Proto$a;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    if-eq v0, p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Lorg/mvel2/CompileException;

    .line 23
    .line 24
    iget-object p2, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    .line 25
    .line 26
    iget-object p3, p2, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 27
    .line 28
    iget p2, p2, Lorg/mvel2/ast/ASTNode;->start:I

    .line 29
    .line 30
    const-string p4, "unresolved prototype receiver"

    .line 31
    .line 32
    invoke-direct {p1, p4, p3, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget-object p1, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_2
    iget-object v0, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lorg/mvel2/ast/Function;

    .line 42
    .line 43
    new-instance v1, Lorg/mvel2/ast/InvokationContextFactory;

    .line 44
    .line 45
    iget-object v2, p0, Lorg/mvel2/ast/Proto$c;->d:Lorg/mvel2/ast/Proto$b;

    .line 46
    .line 47
    invoke-static {v2}, Lorg/mvel2/ast/Proto$b;->a(Lorg/mvel2/ast/Proto$b;)Lorg/mvel2/integration/VariableResolverFactory;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, p3, v2}, Lorg/mvel2/ast/InvokationContextFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, p2, v1, p4}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public d(Lorg/mvel2/ast/Proto$b;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/ast/Proto$c;
    .locals 4

    .line 1
    new-instance v0, Lorg/mvel2/ast/Proto$c;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 6
    .line 7
    sget-object v3, Lorg/mvel2/ast/Proto$ReceiverType;->PROPERTY:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lorg/mvel2/ast/Proto$c;->c:Lorg/mvel2/compiler/ExecutableStatement;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v3, p2, p3, p4}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p2, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    :goto_0
    invoke-direct {v0, v1, p1, v2, p2}, Lorg/mvel2/ast/Proto$c;-><init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto$b;Lorg/mvel2/ast/Proto$ReceiverType;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public e(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->c:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lorg/mvel2/ast/Proto$ReceiverType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    .line 2
    .line 3
    return-void
.end method
