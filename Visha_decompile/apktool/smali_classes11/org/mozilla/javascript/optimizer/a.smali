.class public Lorg/mozilla/javascript/optimizer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/optimizer/a$b;,
        Lorg/mozilla/javascript/optimizer/a$a;
    }
.end annotation


# instance fields
.field public A:S

.field public B:S

.field public C:S

.field public D:Z

.field public E:I

.field public F:I

.field public G:I

.field public H:Ljava/util/Map;

.field public I:Ljava/util/List;

.field public J:I

.field public K:Ljava/util/IdentityHashMap;

.field public a:Lorg/mozilla/javascript/optimizer/a$a;

.field public b:Lorg/mozilla/classfile/ClassFileWriter;

.field public c:Lorg/mozilla/javascript/optimizer/Codegen;

.field public d:Lorg/mozilla/javascript/CompilerEnvirons;

.field public e:Lorg/mozilla/javascript/ast/ScriptNode;

.field public f:I

.field public g:I

.field public h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

.field public i:[I

.field public j:S

.field public k:S

.field public l:I

.field public m:Z

.field public n:[S

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:Z

.field public t:S

.field public u:S

.field public v:S

.field public w:S

.field public x:S

.field public y:S

.field public z:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/optimizer/a$a;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/optimizer/a$a;-><init>(Lorg/mozilla/javascript/optimizer/a;)V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->F:I

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->G:I

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->J:I

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->K:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static U(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x84

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    return-object p0

    :cond_2
    const-string p0, "bad finally target"

    invoke-static {p0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static V(Lorg/mozilla/javascript/Node;)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Node;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/optimizer/a;->U(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/optimizer/a;->r(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Lorg/mozilla/javascript/Node;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static r(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "org/mozilla/javascript/JavaScriptException"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "org/mozilla/javascript/EvaluatorException"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "org/mozilla/javascript/EcmaError"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "java/lang/Throwable"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final A()V
    .locals 10

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->f()V

    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getLiveLocals()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xa7

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v3, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/Node;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_2

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v8, p0, Lorg/mozilla/javascript/optimizer/a;->E:I

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/optimizer/a;->a0(Lorg/mozilla/javascript/Node;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->E()V

    move v7, v2

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_1

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x59

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    aget v9, v6, v7

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0x57

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/optimizer/a;->b0(Lorg/mozilla/javascript/Node;)I

    move-result v5

    invoke-virtual {v6, v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->H:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/Node;

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x7e

    if-ne v4, v5, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/optimizer/a$b;

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v5, v3, Lorg/mozilla/javascript/optimizer/a$b;->b:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v5, v3, Lorg/mozilla/javascript/optimizer/a$b;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v4

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    move v5, v2

    move v7, v5

    :goto_2
    iget-object v8, v3, Lorg/mozilla/javascript/optimizer/a$b;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v4, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v9, v3, Lorg/mozilla/javascript/optimizer/a$b;->a:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    add-int/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    :cond_6
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    const/16 v2, 0xb0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v3, p0, Lorg/mozilla/javascript/optimizer/a;->E:I

    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    :cond_7
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->P(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "throwStopIteration"

    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->u()V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markHandler(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->u()V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->i0(S)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v2, p0, Lorg/mozilla/javascript/optimizer/a;->q:I

    iget p0, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(IIILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final A0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p2, 0x8

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, v1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short v0, v1, v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    const/16 v3, 0xa7

    const/16 v4, 0x9a

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result p1

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addIStore(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    if-eqz p3, :cond_2

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x58

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result p1

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addIStore(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    if-eqz p3, :cond_4

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x57

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public final B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    const/16 v5, 0x5a

    const/16 v6, 0x57

    if-eq v3, v5, :cond_20

    const/16 v7, 0x99

    const-string v8, "(Ljava/lang/Object;)Z"

    const-string v9, "toBoolean"

    const/16 v10, 0x67

    if-eq v3, v10, :cond_1f

    const/16 v11, 0x6e

    const/4 v12, 0x4

    const/4 v14, 0x1

    if-eq v3, v11, :cond_1b

    const/16 v11, 0x7f

    if-eq v3, v11, :cond_1a

    const/16 v11, 0x59

    const/16 v15, 0x8f

    const-string v13, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    if-eq v3, v15, :cond_18

    const/16 v15, 0x93

    if-eq v3, v15, :cond_17

    const/16 v15, 0xa0

    if-eq v3, v15, :cond_16

    const/16 v15, 0xa6

    if-eq v3, v15, :cond_15

    const/16 v15, 0x96

    if-eq v3, v15, :cond_12

    const/16 v15, 0x97

    if-eq v3, v15, :cond_11

    const-string v15, "Ljava/lang/Boolean;"

    const-string v5, "java/lang/Boolean"

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    const-string v2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;"

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {v0, v1, v4, v14}, Lorg/mozilla/javascript/optimizer/a;->A0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->z0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/a;->L0(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/a;->w0(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_5
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v0, v9, v8}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    const/16 v5, 0x6a

    if-ne v3, v5, :cond_0

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v7, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0x9a

    invoke-virtual {v3, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_0
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto/16 :goto_9

    :pswitch_6
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v10}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v5

    :cond_1
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "memberRef"

    const-string v2, "nameRef"

    packed-switch v3, :pswitch_data_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_7
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;"

    :goto_1
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_2

    :pswitch_8
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;"

    goto :goto_1

    :pswitch_9
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;"

    goto :goto_2

    :pswitch_a
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;"

    :goto_2
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_b
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "escapeTextValue"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_c
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "escapeAttributeValue"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_d
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "setDefaultNamespace"

    const-string v2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_e
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->I0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_f
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "specialRef"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_10
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->C(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Lorg/mozilla/javascript/optimizer/a;->x(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "callRef"

    const-string v2, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_11
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "refDel"

    invoke-virtual {v0, v1, v13}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_12
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "refGet"

    invoke-virtual {v0, v1, v13}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_13
    invoke-virtual {v0, v1, v4, v10}, Lorg/mozilla/javascript/optimizer/a;->x0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_9

    :pswitch_14
    invoke-virtual {v0, v1, v4, v10}, Lorg/mozilla/javascript/optimizer/a;->n0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_9

    :pswitch_15
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_9

    :pswitch_16
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/optimizer/a;->V(Lorg/mozilla/javascript/Node;)I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v1, 0x3e

    if-ne v3, v1, :cond_2

    const-string v1, "enumNext"

    const-string v2, "(Ljava/lang/Object;)Ljava/lang/Boolean;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "enumId"

    const-string v2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_17
    invoke-virtual {v0, v1, v4, v14}, Lorg/mozilla/javascript/optimizer/a;->E0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_9

    :pswitch_18
    invoke-virtual/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/a;->s0(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_19
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/optimizer/a;->V(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto/16 :goto_9

    :goto_3
    :pswitch_1a
    if-eqz v4, :cond_3

    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string v1, "bind"

    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1b
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v5, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ljava/lang/Object;"

    const/16 v6, 0xb2

    invoke-virtual {v2, v6, v4, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "wrapRegExp"

    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    const/16 v3, 0xb8

    const-string v4, "org/mozilla/javascript/ScriptRuntime"

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1c
    const/16 v6, 0xb2

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "TRUE"

    invoke-virtual {v0, v6, v5, v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1d
    const/16 v6, 0xb2

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "FALSE"

    invoke-virtual {v0, v6, v5, v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1e
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto/16 :goto_9

    :pswitch_1f
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_9

    :pswitch_20
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_21
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    const/16 v4, 0x8

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-eq v1, v5, :cond_4

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    goto/16 :goto_9

    :cond_4
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0, v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->pushNumberAsObject(Lorg/mozilla/classfile/ClassFileWriter;D)V

    goto/16 :goto_9

    :pswitch_22
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string v1, "name"

    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_23
    invoke-virtual {v0, v3, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->B0(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_24
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-eq v1, v3, :cond_5

    const-string v1, "getObjectIndex"

    const-string v2, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "getObjectElem"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_25
    invoke-virtual {v0, v3, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->D0(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_26
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->r0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_27
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string v1, "typeof"

    const-string v2, "(Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_28
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_6

    goto :goto_4

    :cond_6
    move v14, v10

    :goto_4
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    const-string v1, "delete"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_29
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v10}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/a;->y0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/optimizer/OptFunctionNode;ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :cond_7
    const/16 v2, 0x26

    if-ne v3, v2, :cond_8

    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->G0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :cond_8
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->H0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :cond_9
    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/mozilla/javascript/optimizer/a;->F0(Lorg/mozilla/javascript/Node;IILorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_2a
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    const/16 v1, 0x1d

    if-ne v3, v1, :cond_a

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    goto/16 :goto_9

    :pswitch_2b
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string v1, "toInt32"

    const-string v2, "(Ljava/lang/Object;)I"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x87

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    goto/16 :goto_9

    :pswitch_2c
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v6

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/a;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v2, "FALSE"

    const/16 v4, 0xb2

    invoke-virtual {v1, v4, v5, v2, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v2, "TRUE"

    invoke-virtual {v1, v4, v5, v2, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop(I)V

    goto/16 :goto_9

    :pswitch_2d
    const/16 v5, 0x18

    if-ne v3, v5, :cond_b

    const/16 v3, 0x6f

    goto :goto_5

    :cond_b
    const/16 v3, 0x73

    :goto_5
    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/mozilla/javascript/optimizer/a;->m0(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_2e
    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/mozilla/javascript/optimizer/a;->m0(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_2f
    const/16 v3, 0x67

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/mozilla/javascript/optimizer/a;->m0(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_30
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-eqz v1, :cond_10

    const-string v2, "add"

    if-eq v1, v14, :cond_f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_c

    const-string v1, "(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_d

    const-string v1, "(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_e
    const-string v1, "(Ljava/lang/Object;D)Ljava/lang/Object;"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_f
    const-string v1, "(DLjava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_10
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_9

    :pswitch_31
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/mozilla/javascript/optimizer/a;->v0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/optimizer/a;->h(II)V

    goto/16 :goto_9

    :pswitch_32
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/mozilla/javascript/optimizer/a;->u0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/optimizer/a;->h(II)V

    goto/16 :goto_9

    :pswitch_33
    invoke-virtual {v0, v1, v3, v4}, Lorg/mozilla/javascript/optimizer/a;->o0(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :pswitch_34
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->C0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_13

    const/16 v2, 0x8

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    goto :goto_6

    :cond_13
    const/16 v2, 0x8

    const/4 v5, -0x1

    move v3, v5

    :goto_6
    if-eq v3, v5, :cond_14

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto/16 :goto_9

    :cond_14
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    goto/16 :goto_9

    :cond_15
    :pswitch_35
    invoke-virtual {v0, v1, v14}, Lorg/mozilla/javascript/optimizer/a;->T(Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_9

    :cond_16
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :cond_17
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/a;->p0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_9

    :cond_18
    :pswitch_36
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/16 v4, 0x8f

    if-ne v3, v4, :cond_19

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v3, "refGet"

    invoke-virtual {v0, v3, v13}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "refSet"

    const-string v2, "(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto/16 :goto_9

    :cond_1b
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-nez v3, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x89

    if-eq v2, v3, :cond_22

    :cond_1c
    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v2, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v1

    iget-object v2, v1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    if-ne v2, v12, :cond_1d

    goto :goto_7

    :cond_1d
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1e
    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->q0(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    goto :goto_9

    :cond_1f
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v9, v8}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v4

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v5

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0xa7

    invoke-virtual {v6, v7, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    invoke-virtual {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto :goto_9

    :cond_20
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_8
    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    if-eqz v4, :cond_21

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_8

    :cond_21
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_22
    :goto_9
    :pswitch_37
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_29
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_32
        :pswitch_32
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_31
        :pswitch_31
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_16
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_36
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_35
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x69
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8a
        :pswitch_3
        :pswitch_37
        :pswitch_25
        :pswitch_23
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x4e
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final B0(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/16 v0, 0x8d

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_0
    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne p1, v0, :cond_3

    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getObjectIndex"

    const-string v0, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getObjectElem"

    const-string v0, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    if-eqz v1, :cond_4

    const-string p1, "setObjectIndex"

    const-string p2, "(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p1, "setObjectElem"

    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final C(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_2

    const/16 v3, 0x22

    if-eq v1, v3, :cond_1

    const/16 v3, 0x24

    if-eq v1, v3, :cond_2

    const/16 v0, 0x27

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getValueFunctionAndThis"

    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getNameFunctionAndThis"

    const-string p2, "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    if-ne v0, v2, :cond_3

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getPropFunctionAndThis"

    const-string p2, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p2, 0x8

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    :cond_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getElemFunctionAndThis"

    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "lastStoredScriptable"

    const-string p2, "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final C0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "setName"

    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final D()V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->d0()V

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "getParentScope"

    const-string v2, "()Lorg/mozilla/javascript/Scriptable;"

    const/16 v3, 0xb9

    const-string v4, "org/mozilla/javascript/Scriptable"

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    const-string v0, "createFunctionActivation"

    const-string v1, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const/16 v2, 0xbb

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/a;->f:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v2, "<init>"

    const-string v3, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    const/16 v4, 0xb7

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->L()V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/a;->F:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/a;->G:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    const-string v0, "createNativeGenerator"

    const-string v1, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p0, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method public final D0(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x8c

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p3, 0x2b

    const-string v1, "getObjectProp"

    if-ne p1, p3, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p3, 0x29

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v2, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "setObjectProp"

    const-string p2, "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "getGeneratorLocalsState"

    const-string v1, "(Ljava/lang/Object;)[Ljava/lang/Object;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final E0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p2, 0x8

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, v1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short v1, v1, v0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    if-nez p3, :cond_c

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_1

    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0x57

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->l0(I)Z

    move-result v2

    const/16 v3, 0x5c

    if-eqz v2, :cond_7

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string p3, "TYPE"

    const-string v0, "Ljava/lang/Class;"

    const/16 v2, 0xb2

    const-string v3, "java/lang/Void"

    invoke-virtual {p1, v2, v3, p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p1

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa5

    invoke-virtual {v0, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xa7

    invoke-virtual {v2, v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x59

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_6
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result p2

    if-eqz p1, :cond_a

    if-eqz p2, :cond_8

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    if-eqz p3, :cond_c

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_9
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    if-eqz p3, :cond_c

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :cond_c
    :goto_1
    return-void
.end method

.method public final F()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v0, "resumptionPoint"

    const-string v1, "I"

    const/16 v2, 0xb4

    const-string v3, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final F0(Lorg/mozilla/javascript/Node;IILorg/mozilla/javascript/Node;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/a;->C(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_0
    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p4, v1}, Lorg/mozilla/javascript/optimizer/a;->x(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string p1, "newObjectSpecial"

    const-string p2, "(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget p2, p0, Lorg/mozilla/javascript/optimizer/a;->l:I

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string p1, "callSpecial"

    const-string p2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;"

    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "getGeneratorStackState"

    const-string v1, "(Ljava/lang/Object;)[Ljava/lang/Object;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final G0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_8

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x27

    if-nez v0, :cond_3

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "callName0"

    const-string p2, "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x21

    if-ne v1, v0, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "callProp0"

    const-string p2, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    goto :goto_1

    :cond_1
    const/16 v0, 0x22

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->C(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string p1, "call0"

    const-string p2, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v3}, Lorg/mozilla/javascript/optimizer/a;->x(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "callName"

    const-string p2, "([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    goto :goto_1

    :cond_4
    move-object v1, v0

    move v2, v3

    :goto_0
    if-eqz v1, :cond_5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->C(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/4 p2, 0x1

    if-ne v2, p2, :cond_6

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string p1, "call1"

    const-string p2, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    goto :goto_1

    :cond_6
    const/4 p2, 0x2

    if-ne v2, p2, :cond_7

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string p1, "call2"

    const-string p2, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, v0, v3}, Lorg/mozilla/javascript/optimizer/a;->x(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    const-string p1, "callN"

    const-string p2, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_4

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x34

    if-eq v0, v2, :cond_2

    const/16 v2, 0x35

    if-eq v0, v2, :cond_2

    const/16 v2, 0x69

    const/16 v3, 0x6a

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string p1, "toBoolean"

    const-string p2, "(Ljava/lang/Object;)Z"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x9a

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0xa7

    invoke-virtual {p0, p1, p4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v1, p1, p2, p4}, Lorg/mozilla/javascript/optimizer/a;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, p1, p3, p2}, Lorg/mozilla/javascript/optimizer/a;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3, p4}, Lorg/mozilla/javascript/optimizer/a;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_1

    :cond_2
    :pswitch_0
    invoke-virtual {p0, p1, v1, p3, p4}, Lorg/mozilla/javascript/optimizer/a;->v0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_1

    :cond_3
    :pswitch_1
    invoke-virtual {p0, p1, v1, p3, p4}, Lorg/mozilla/javascript/optimizer/a;->u0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, p1, p4, p3}, Lorg/mozilla/javascript/optimizer/a;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final H0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/optimizer/a;->x(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    const-string p1, "newObject"

    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final I()V
    .locals 4

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v0, "intValue"

    const-string v1, "()I"

    const/16 v2, 0xb6

    const-string v3, "java/lang/Integer"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final I0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "strictSetName"

    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final J()V
    .locals 4

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v0, "valueOf"

    const-string v1, "(I)Ljava/lang/Integer;"

    const/16 v2, 0xb8

    const-string v3, "java/lang/Integer"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final J0(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .locals 2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    check-cast p2, Lorg/mozilla/javascript/ast/Jump;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "shallowEq"

    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/16 v1, 0x9a

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->d(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    check-cast p2, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->i0(S)V

    return-void
.end method

.method public final K(Lorg/mozilla/javascript/Node;Z)V
    .locals 8

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/optimizer/a;->G:I

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lorg/mozilla/javascript/optimizer/a;->G:I

    const/16 v1, 0x57

    const/16 v2, 0x5a

    const/16 v3, 0x5f

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->G()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x53

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v4, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v4}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    :goto_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0xa6

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xbb

    const-string v6, "org/mozilla/javascript/ES6Generator$YieldStarResult"

    invoke-virtual {v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v4, "<init>"

    const-string v5, "(Ljava/lang/Object;)V"

    const/16 v7, 0xb7

    invoke-virtual {v2, v7, v6, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->a0(Lorg/mozilla/javascript/Node;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/optimizer/a;->P(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->O(Lorg/mozilla/javascript/Node;)Z

    move-result v4

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0xb0

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->b0(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-virtual {p0, p1, v4, v2}, Lorg/mozilla/javascript/optimizer/a;->z(IZI)V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->G()V

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x59

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x32

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_6
    if-eqz p2, :cond_7

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p0, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :cond_7
    return-void
.end method

.method public final K0(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v7

    iget-object v1, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v6, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v1, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v8

    iget-object v1, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v9

    const/4 v3, 0x5

    new-array v10, v3, [I

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/optimizer/a$a;->g(Lorg/mozilla/javascript/ast/Jump;)V

    const/16 v11, 0xd

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    aput v3, v10, v2

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    aput v3, v10, v14

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    aput v3, v10, v13

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v11}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    aput v3, v10, v12

    :cond_0
    const/4 v15, 0x4

    if-eqz v9, :cond_1

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    aput v3, v10, v15

    :cond_1
    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v3, v10, v8}, Lorg/mozilla/javascript/optimizer/a$a;->i([II)V

    iget-boolean v3, v6, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v3, :cond_3

    if-eqz v9, :cond_3

    new-instance v3, Lorg/mozilla/javascript/optimizer/a$b;

    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/a$b;-><init>()V

    iget-object v4, v6, Lorg/mozilla/javascript/optimizer/a;->H:Ljava/util/Map;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v6, Lorg/mozilla/javascript/optimizer/a;->H:Ljava/util/Map;

    :cond_2
    iget-object v4, v6, Lorg/mozilla/javascript/optimizer/a;->H:Ljava/util/Map;

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v6, Lorg/mozilla/javascript/optimizer/a;->H:Ljava/util/Map;

    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object/from16 v3, p2

    :goto_0
    if-eqz v3, :cond_5

    if-ne v3, v1, :cond_4

    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/optimizer/a;->b0(Lorg/mozilla/javascript/Node;)I

    move-result v4

    iget-object v5, v6, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v5, v2, v4}, Lorg/mozilla/javascript/optimizer/a$a;->h(II)I

    iget-object v5, v6, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v5, v14, v4}, Lorg/mozilla/javascript/optimizer/a$a;->h(II)I

    iget-object v5, v6, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v5, v13, v4}, Lorg/mozilla/javascript/optimizer/a$a;->h(II)I

    iget-object v5, v6, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v5, v12, v4}, Lorg/mozilla/javascript/optimizer/a$a;->h(II)I

    :cond_4
    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v5

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/optimizer/a;->V(Lorg/mozilla/javascript/Node;)I

    move-result v4

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v16

    const/4 v1, 0x0

    aget v17, v10, v2

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, v16

    move/from16 p1, v4

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/a;->y(ISIII)V

    const/4 v1, 0x1

    aget v5, v10, v14

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/a;->y(ISIII)V

    const/4 v1, 0x2

    aget v5, v10, v13

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/a;->y(ISIII)V

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    aget v5, v10, v12

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, v16

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/a;->y(ISIII)V

    goto :goto_1

    :cond_6
    move/from16 p1, v4

    move/from16 v18, v5

    :cond_7
    :goto_1
    if-eqz v9, :cond_b

    iget-object v0, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v1, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    iget-object v2, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markHandler(I)V

    iget-boolean v2, v6, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-nez v2, :cond_8

    iget-object v2, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    aget v3, v10, v15

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    :cond_8
    iget-object v2, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v2, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, v6, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v2

    iget-boolean v4, v6, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v4, :cond_9

    invoke-virtual {v6, v9}, Lorg/mozilla/javascript/optimizer/a;->e(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_9
    aget v4, v10, v15

    invoke-virtual {v6, v9, v4, v1}, Lorg/mozilla/javascript/optimizer/a;->f0(Lorg/mozilla/javascript/Node;II)V

    :goto_2
    iget-object v4, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-boolean v3, v6, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v3, :cond_a

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xc0

    const-string v5, "java/lang/Throwable"

    invoke-virtual {v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    :cond_a
    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xbf

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v3, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-boolean v1, v6, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v1, :cond_b

    iget-object v1, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v2, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(IIILjava/lang/String;)V

    :cond_b
    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/optimizer/a;->i0(S)V

    iget-object v0, v6, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-boolean v0, v6, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-nez v0, :cond_c

    iget-object v0, v6, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/a$a;->f()V

    :cond_c
    return-void
.end method

.method public final L()V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v2, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v2

    iget-object v3, v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v2, v4}, Lorg/mozilla/javascript/optimizer/a;->q0(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final L0(Lorg/mozilla/javascript/Node;)V
    .locals 8

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result p1

    const-string v1, "number"

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->l0(I)Z

    move-result p1

    const-string v2, "(Ljava/lang/Object;)Ljava/lang/String;"

    const-string v3, "typeof"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short p1, p1, v0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v4, "TYPE"

    const-string v5, "Ljava/lang/Class;"

    const/16 v6, 0xb2

    const-string v7, "java/lang/Void"

    invoke-virtual {v0, v6, v7, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xa5

    invoke-virtual {v4, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v4

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0, v3, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xa7

    invoke-virtual {v2, v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short v0, v1, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0, v3, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "typeofName"

    const-string v0, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final M(Lorg/mozilla/javascript/Node;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_literal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->d0()V

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    const/4 v2, 0x2

    invoke-virtual {v0, p2, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/optimizer/a;->x0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0xb0

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p0, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    add-int/2addr p0, v0

    int-to-short p0, p0

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method public final N()V
    .locals 13

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->o:Z

    const/16 v1, 0xb2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    if-eq v5, v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    move v5, v3

    :goto_0
    if-eq v5, v0, :cond_1

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    iget-short v7, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    aput-short v7, v6, v5

    add-int/lit8 v7, v7, 0x3

    int-to-short v6, v7

    iput-short v6, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getParameterNumberContext()Z

    move-result v5

    if-nez v5, :cond_2

    iput-boolean v4, p0, Lorg/mozilla/javascript/optimizer/a;->p:Z

    move v5, v3

    :goto_1
    if-eq v5, v0, :cond_2

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short v6, v6, v5

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v8, "TYPE"

    const-string v9, "Ljava/lang/Class;"

    const-string v10, "java/lang/Void"

    invoke-virtual {v7, v1, v10, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v7

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0xa6

    invoke-virtual {v8, v9, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v5, "getParentScope"

    const-string v6, "()Lorg/mozilla/javascript/Scriptable;"

    const/16 v7, 0xb9

    const-string v8, "org/mozilla/javascript/Scriptable"

    invoke-virtual {v0, v7, v8, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :cond_3
    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    add-int/lit8 v5, v0, 0x1

    int-to-short v5, v5

    iput-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    iput-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    const-string v6, "Lorg/mozilla/javascript/Scriptable;"

    const/4 v7, -0x1

    if-eqz v0, :cond_5

    add-int/lit8 v0, v5, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    iput-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->x:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    add-int/lit8 v5, v0, 0x1

    int-to-short v5, v5

    iput-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    iput-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xc0

    const-string v8, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    invoke-virtual {v0, v5, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0x59

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xb4

    const-string v9, "thisObj"

    invoke-virtual {v0, v5, v8, v9, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget v0, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    :cond_4
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->F()V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5, v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->E:I

    invoke-virtual {p0, v7, v3, v3}, Lorg/mozilla/javascript/optimizer/a;->z(IZI)V

    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v5, v5, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v8, "_reInit"

    const-string v9, "(Lorg/mozilla/javascript/Context;)V"

    const/16 v10, 0xb8

    invoke-virtual {v0, v10, v5, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->j0()V

    :cond_7
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    if-lez v0, :cond_9

    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/a;->o:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xa2

    invoke-virtual {v2, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string v0, "padArguments"

    const-string v2, "([Ljava/lang/Object;I)[Ljava/lang/Object;"

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v2

    move v5, v3

    move v6, v7

    :goto_2
    if-eq v5, v1, :cond_14

    if-ge v5, v0, :cond_b

    iget-boolean v8, p0, Lorg/mozilla/javascript/optimizer/a;->o:Z

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v8

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v10, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x32

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto :goto_4

    :cond_a
    move v8, v7

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v8

    if-eqz v8, :cond_c

    aget-boolean v8, v2, v5

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/optimizer/a;->Z(Z)S

    move-result v8

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    goto :goto_4

    :cond_c
    aget-boolean v8, v2, v5

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/optimizer/a;->Y(Z)S

    move-result v8

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v6}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    move v6, v8

    goto :goto_3

    :cond_d
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_3
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :goto_4
    if-ltz v8, :cond_10

    aget-boolean v9, v2, v5

    if-eqz v9, :cond_f

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v10, v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x2

    goto :goto_5

    :cond_e
    move v10, v4

    :goto_5
    add-int/2addr v10, v8

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addIStore(I)V

    :cond_f
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aput-short v8, v9, v5

    :cond_10
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v9}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v9, v9, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v10, v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "D"

    goto :goto_6

    :cond_11
    const-string v10, "Ljava/lang/Object;"

    :goto_6
    iget-object v11, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v11}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v11

    if-gez v8, :cond_12

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short v8, v8, v5

    :cond_12
    iget-object v12, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v12, v9, v10, v11, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    instance-of v5, v0, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v5, :cond_16

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    if-ne v0, v2, :cond_16

    move v0, v4

    goto :goto_7

    :cond_16
    move v0, v3

    :goto_7
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    if-eqz v0, :cond_17

    const-string v0, "createArrowFunctionActivation"

    goto :goto_8

    :cond_17
    const-string v0, "createFunctionActivation"

    :goto_8
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    const-string v2, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "enterActivationFunction"

    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activation"

    goto :goto_9

    :cond_18
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string v0, "initScript"

    const-string v2, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V"

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "global"

    :goto_9
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/optimizer/a;->q:I

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v3, p0, Lorg/mozilla/javascript/optimizer/a;->q:I

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->L()V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v3

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v2, v0, v6, v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_19
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v0

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEndLineno()I

    move-result v0

    if-eq v0, v7, :cond_1c

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLineNumberEntry(S)V

    goto :goto_a

    :cond_1a
    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsContainsCalls0:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v0

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->A:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v2, "emptyArgs"

    const-string v3, "[Ljava/lang/Object;"

    const-string v5, "org/mozilla/javascript/ScriptRuntime"

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->A:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :cond_1b
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsContainsCalls1:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v0

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->B:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xbd

    const-string v2, "java/lang/Object"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p0, p0, Lorg/mozilla/javascript/optimizer/a;->B:S

    invoke-virtual {v0, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :cond_1c
    :goto_a
    return-void
.end method

.method public final O(Lorg/mozilla/javascript/Node;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->i:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->addLiveLocals(Lorg/mozilla/javascript/Node;[I)V

    return v0

    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/optimizer/a;->F:I

    if-le v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput v1, p0, Lorg/mozilla/javascript/optimizer/a;->F:I

    new-array v1, v2, [I

    move v3, v0

    move v4, v3

    :goto_2
    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->i:[I

    aget v5, v5, v3

    if-eqz v5, :cond_4

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v3, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3, p1, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->addLiveLocals(Lorg/mozilla/javascript/Node;[I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->E()V

    :goto_3
    if-ge v0, v2, :cond_6

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x59

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    aget v3, v1, v0

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x53

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0x57

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final P(I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string p1, "resumptionPoint"

    const-string v0, "I"

    const/16 v1, 0xb5

    const-string v2, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Q()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v0, "setGeneratorReturnValue"

    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final R(Lorg/mozilla/javascript/Node;)V
    .locals 8

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->k0(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, 0x32

    if-eq v0, v2, :cond_25

    const/16 v2, 0x33

    if-eq v0, v2, :cond_23

    const/16 v2, 0x41

    const/16 v3, 0xa7

    const/4 v4, -0x1

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x52

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x6e

    const/4 v5, 0x1

    if-eq v0, v2, :cond_17

    const/16 v2, 0x73

    if-eq v0, v2, :cond_15

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_13

    const/16 v2, 0x7e

    const/4 v6, 0x0

    if-eq v0, v2, :cond_f

    const/16 v2, 0x8e

    const/4 v7, 0x2

    if-eq v0, v2, :cond_c

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_27

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p0, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x38

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v6}, Lorg/mozilla/javascript/optimizer/a;->E0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x9d

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v6}, Lorg/mozilla/javascript/optimizer/a;->A0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x49

    if-eq v0, v2, :cond_5

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0xa6

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eq p1, v4, :cond_4

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_8

    :cond_4
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0x57

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_8

    :cond_5
    :goto_0
    invoke-virtual {p0, v1, v6}, Lorg/mozilla/javascript/optimizer/a;->T(Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_8

    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->f()V

    :cond_6
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->b0(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->j0()V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_7

    move v5, v6

    goto :goto_1

    :cond_7
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_8

    goto :goto_1

    :cond_8
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_9

    const/4 v5, 0x6

    goto :goto_1

    :cond_9
    move v5, v7

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string v0, "enumInit"

    const-string v1, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/a;->V(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_8

    :pswitch_4
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->setStackTop(S)V

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/a;->V(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    if-nez v2, :cond_a

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "newCatchScope"

    const-string v1, "(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_8

    :pswitch_5
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->f()V

    :cond_b
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->t0(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_8

    :pswitch_6
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "leaveWith"

    const-string v0, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->q(S)V

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "enterWith"

    const-string v0, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->c0(S)V

    goto/16 :goto_8

    :cond_c
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->s:Z

    iput-boolean v5, p0, Lorg/mozilla/javascript/optimizer/a;->s:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v2

    iget-boolean v3, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :cond_d
    invoke-virtual {p1, v7, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :goto_3
    if-eqz v1, :cond_e

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_3

    :cond_e
    int-to-short v1, v2

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->i0(S)V

    invoke-virtual {p1, v7}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->s:Z

    goto/16 :goto_8

    :cond_f
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-nez v0, :cond_10

    goto/16 :goto_8

    :cond_10
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->j0()V

    :cond_11
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->setStackTop(S)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v4

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->J()V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :goto_4
    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_4

    :cond_12
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xc0

    const-string v5, "java/lang/Integer"

    invoke-virtual {v1, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->I()V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->H:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/optimizer/a$b;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    iput v1, p1, Lorg/mozilla/javascript/optimizer/a$b;->b:I

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->setStackTop(S)V

    int-to-short p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->i0(S)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto/16 :goto_8

    :cond_13
    :pswitch_8
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/optimizer/a;->g(I)V

    :cond_14
    :goto_5
    if-eqz v1, :cond_27

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_5

    :cond_15
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->f()V

    :cond_16
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/a;->J0(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_8

    :cond_17
    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object p1

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->q0(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    goto/16 :goto_8

    :cond_18
    if-ne v0, v5, :cond_19

    goto/16 :goto_8

    :cond_19
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1a
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/a;->K0(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_8

    :cond_1b
    :pswitch_9
    if-eqz v1, :cond_1c

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_6

    :cond_1c
    const/4 p1, 0x4

    if-ne v0, p1, :cond_1d

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto :goto_6

    :cond_1d
    iget-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    if-ltz p1, :cond_22

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_6
    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->Q()V

    :cond_1e
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->f()V

    :cond_1f
    iget p1, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    if-ne p1, v4, :cond_21

    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    goto :goto_7

    :cond_20
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_21
    :goto_7
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget p0, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    invoke-virtual {p1, v3, p0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_8

    :cond_22
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_23
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->f()V

    :cond_24
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/a;->V(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0xbf

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_8

    :cond_25
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->d:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->f()V

    :cond_26
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->S()V

    :cond_27
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public final S()V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xbb

    const-string v2, "org/mozilla/javascript/JavaScriptException"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/a;->l:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "<init>"

    const-string v3, "(Ljava/lang/Object;Ljava/lang/String;I)V"

    const/16 v4, 0xb7

    invoke-virtual {v0, v4, v2, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public final T(Lorg/mozilla/javascript/Node;Z)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->K:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->K:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getObjectPropNoWarn"

    const-string p2, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->s(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->T(Lorg/mozilla/javascript/Node;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__nested__yield__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/mozilla/javascript/optimizer/a;->J:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/mozilla/javascript/optimizer/a;->J:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/mozilla/javascript/optimizer/a;->J:I

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "setObjectProp"

    const-string v3, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x57

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->K:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->K(Lorg/mozilla/javascript/Node;Z)V

    return-void
.end method

.method public final W(I)S
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->i:[I

    const/16 v1, 0x400

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    :goto_0
    add-int v5, v4, p1

    if-gt v5, v1, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_3

    add-int v6, v4, v5

    aget v6, v0, v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    :cond_3
    :goto_2
    if-eq v4, v2, :cond_9

    aput v3, v0, v4

    if-le p1, v3, :cond_4

    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v2

    :cond_4
    const/4 v2, 0x2

    if-le p1, v2, :cond_5

    add-int/lit8 v2, v4, 0x2

    aput v3, v0, v2

    :cond_5
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    if-ne v4, v2, :cond_8

    add-int/2addr p1, v4

    :goto_3
    if-ge p1, v1, :cond_9

    aget v2, v0, p1

    if-nez v2, :cond_7

    int-to-short p1, p1

    iput-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    if-ge v0, p1, :cond_6

    iput-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    :cond_6
    int-to-short p0, v4

    return p0

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    int-to-short p0, v4

    return p0

    :cond_9
    const-string p0, "Program too complex (out of locals)"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method public final X()S
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->W(I)S

    move-result p0

    return p0
.end method

.method public final Y(Z)S
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->W(I)S

    move-result p0

    return p0
.end method

.method public final Z(Z)S
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->W(I)S

    move-result p0

    return p0
.end method

.method public final a0(Lorg/mozilla/javascript/Node;)I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final b0(Lorg/mozilla/javascript/Node;)I
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    :cond_0
    return v0
.end method

.method public final c()V
    .locals 2

    const-string v0, "wrapDouble"

    const-string v1, "(D)Ljava/lang/Double;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c0(S)V
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->i:[I

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public final d(Lorg/mozilla/javascript/Node;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->b0(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public final d0()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x6e

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->o:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iput-boolean v3, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    iput-boolean v3, p0, Lorg/mozilla/javascript/optimizer/a;->o:Z

    :cond_2
    :goto_0
    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->i:[I

    iput-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    const/4 v0, 0x3

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    const/4 v0, 0x4

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->u:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->A:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->B:S

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->r:I

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->q:I

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->C:S

    return-void
.end method

.method public final e(Lorg/mozilla/javascript/Node;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/a$b;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    const/16 v1, 0xa7

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/a;->d(Lorg/mozilla/javascript/Node;I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x57

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p1

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object p0, v0, Lorg/mozilla/javascript/optimizer/a$b;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e0(Lorg/mozilla/javascript/Node;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->f0(Lorg/mozilla/javascript/Node;II)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/optimizer/a;->g:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->g(I)V

    return-void
.end method

.method public final f0(Lorg/mozilla/javascript/Node;II)V
    .locals 2

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/a;->U(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->resetTargets()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/javascript/optimizer/a$a;->e(Lorg/mozilla/javascript/Node;I)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->a:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/optimizer/a$a;->d(Lorg/mozilla/javascript/Node;I)V

    return-void
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string p1, "addInstructionCount"

    const-string v0, "(Lorg/mozilla/javascript/Context;I)V"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h(II)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb2

    const-string v2, "java/lang/Boolean"

    const-string v3, "FALSE"

    const-string v4, "Ljava/lang/Boolean;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xa7

    invoke-virtual {v0, v3, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v0, "TRUE"

    invoke-virtual {p1, v1, v2, v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop(I)V

    return-void
.end method

.method public final h0(Lorg/mozilla/javascript/Node;)I
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final i([Ljava/lang/Object;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/optimizer/a;->k(I)V

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    aget-object v1, p1, v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string v1, "wrapInt"

    const-string v2, "(I)Ljava/lang/Integer;"

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i0(S)V
    .locals 1

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    if-ge p1, v0, :cond_0

    iput-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->i:[I

    const/4 v0, 0x0

    aput v0, p0, p1

    return-void
.end method

.method public final j(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V
    .locals 7

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    const/16 v1, 0x53

    const/16 v2, 0xa4

    const/16 v3, 0x99

    const/16 v4, 0x98

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    move v0, v5

    :goto_0
    if-eq v0, p3, :cond_2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-eq v6, v4, :cond_1

    if-eq v6, v3, :cond_1

    if-ne v6, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {p0, v6, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_2
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/optimizer/a;->k(I)V

    :goto_3
    if-eq v5, p3, :cond_6

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x5a

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x5f

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    sub-int v0, p3, v5

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/optimizer/a;->k(I)V

    :goto_4
    if-eq v5, p3, :cond_6

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x59

    invoke-virtual {v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_6

    :cond_5
    :goto_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_6
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final j0()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/optimizer/a;->g:I

    return-void
.end method

.method public final k(I)V
    .locals 3

    if-nez p1, :cond_1

    iget-short p1, p0, Lorg/mozilla/javascript/optimizer/a;->A:S

    if-ltz p1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string p1, "emptyArgs"

    const-string v0, "[Ljava/lang/Object;"

    const/16 v1, 0xb2

    const-string v2, "org/mozilla/javascript/ScriptRuntime"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0xbd

    const-string v0, "java/lang/Object"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final k0(Lorg/mozilla/javascript/Node;)V
    .locals 1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/optimizer/a;->l:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLineNumberEntry(S)V

    return-void
.end method

.method public final l()V
    .locals 2

    const-string v0, "toNumber"

    const-string v1, "(Ljava/lang/Object;)D"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final l0(I)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/a;->o:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lorg/mozilla/javascript/optimizer/a;->p:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0xb8

    const-string v1, "org/mozilla/javascript/optimizer/OptRuntime"

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m0(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/mozilla/javascript/optimizer/a;->g0(Lorg/mozilla/javascript/Node;)Z

    move-result p4

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-static {p3}, Lorg/mozilla/javascript/optimizer/a;->g0(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    :cond_1
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/a;->g0(Lorg/mozilla/javascript/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    if-nez p4, :cond_3

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0xb8

    const-string v1, "org.mozilla.javascript.ScriptRuntime"

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final n0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, p2

    move v2, v0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_3

    const/16 p3, 0xa

    if-gt v2, p3, :cond_1

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p3}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result p3

    const/16 v1, 0x7530

    if-le p3, v1, :cond_3

    :cond_1
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->s:Z

    if-nez p3, :cond_3

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_literal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string p3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    const/16 v0, 0xb6

    invoke-virtual {p2, v0, p0, p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    const/16 v1, 0x53

    const/4 v3, 0x1

    if-eqz p3, :cond_5

    move p3, v0

    :goto_1
    if-eq p3, v2, :cond_4

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/optimizer/a;->k(I)V

    :goto_2
    if-eq v0, v2, :cond_6

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p3, 0x5a

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p3, 0x5f

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    sub-int v4, v2, v0

    sub-int/2addr v4, v3

    invoke-virtual {p2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/optimizer/a;->k(I)V

    :goto_3
    if-eq v0, v2, :cond_6

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0x59

    invoke-virtual {p3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->encodeIntArray([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    array-length p1, p1

    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    :goto_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "newArrayLiteral"

    const-string p2, "([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final o(I)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "TYPE"

    const-string v2, "Ljava/lang/Class;"

    const/16 v3, 0xb2

    const-string v4, "java/lang/Void"

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa5

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public final o0(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 v2, 0x14

    const/16 v3, 0x7e

    const-string v4, "(Ljava/lang/Object;)I"

    const-string v5, "toInt32"

    if-ne p2, v2, :cond_0

    const-string p2, "toUint32"

    const-string v0, "(Ljava/lang/Object;)J"

    invoke-virtual {p0, p2, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v5, v4}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x8a

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v5, v4}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v5, v4}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "(D)I"

    invoke-virtual {p0, v5, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v5, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x12

    if-eq p2, p1, :cond_3

    const/16 p1, 0x13

    if-eq p2, p1, :cond_2

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x82

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x7a

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x87

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(I)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "TYPE"

    const-string v2, "Ljava/lang/Class;"

    const/16 v3, 0xb2

    const-string v4, "java/lang/Void"

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa5

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public final p0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->k0(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "enterDotQuery"

    const-string v1, "(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string p1, "toBoolean"

    const-string p2, "(Ljava/lang/Object;)Z"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "updateDotQuery"

    const-string p2, "(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x59

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0xc6

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "leaveDotQuery"

    const-string p2, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p0, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    return-void
.end method

.method public final q(S)V
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->i:[I

    aget v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    aput v0, p0, p1

    return-void
.end method

.method public final q0(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const/16 v2, 0xbb

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v1, "<init>"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    const/16 v3, 0xb7

    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "bindThis"

    const-string v1, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "initFunction"

    const-string p2, "(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v1, 0x22

    const-string v2, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "getObjectPropNoWarn"

    invoke-virtual {p0, p1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p2, 0x2b

    const-string v1, "getObjectProp"

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p2, 0x29

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final s(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/a;->s(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final s0(Lorg/mozilla/javascript/Node;)V
    .locals 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short v1, v1, v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->l0(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x8

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eq p1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->o(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->p(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_0
    return-void
.end method

.method public final t(III)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/16 v1, 0x98

    const/16 v2, 0x97

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9c

    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9d

    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9e

    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9b

    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_0
    if-eq p3, v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0xa7

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t0(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;)V
    .locals 3

    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/4 v1, 0x6

    if-eq p2, v1, :cond_3

    const/4 v2, 0x7

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x88

    if-ne p2, p1, :cond_2

    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->e(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->e0(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_2
    const/16 p1, 0xa7

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->d(Lorg/mozilla/javascript/Node;I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz p3, :cond_5

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->b0(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    if-ne p2, v1, :cond_4

    invoke-virtual {p0, p3, p1, v0, v2}, Lorg/mozilla/javascript/optimizer/a;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p3, p1, v2, v0}, Lorg/mozilla/javascript/optimizer/a;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    :goto_2
    return-void

    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v0, "exitActivationFunction"

    const-string v1, "(Lorg/mozilla/javascript/Context;)V"

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final u0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_e

    if-eq v4, v5, :cond_e

    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    const/16 v13, 0xc

    const/16 v14, 0x2a

    if-eq v9, v14, :cond_6

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    if-ne v9, v14, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/optimizer/a;->h0(Lorg/mozilla/javascript/Node;)I

    move-result v9

    if-eq v9, v5, :cond_2

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v12, 0x96

    if-ne v5, v12, :cond_2

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    const/16 v11, 0x28

    if-ne v12, v11, :cond_2

    iget-object v11, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v11, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v11, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v12, "TYPE"

    const-string v15, "Ljava/lang/Class;"

    const/16 v14, 0xb2

    const-string v10, "java/lang/Void"

    invoke-virtual {v11, v14, v10, v12, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v10}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v10

    iget-object v11, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v12, 0xa6

    invoke-virtual {v11, v12, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v11, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v11, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x97

    invoke-virtual {v5, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    if-ne v7, v13, :cond_1

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x99

    invoke-virtual {v5, v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 v11, 0x9a

    goto :goto_0

    :cond_1
    const/16 v9, 0x99

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v11, 0x9a

    invoke-virtual {v5, v11, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_0
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v12, 0xa7

    invoke-virtual {v5, v12, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v10}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto :goto_1

    :cond_2
    const/16 v9, 0x99

    const/16 v11, 0x9a

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v8, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const-string v1, "eq"

    if-eq v7, v13, :cond_5

    const/16 v2, 0xd

    if-eq v7, v2, :cond_3

    const-string v1, "shallowEq"

    const/16 v2, 0x2e

    if-eq v7, v2, :cond_5

    const/16 v2, 0x2f

    if-ne v7, v2, :cond_4

    :cond_3
    move v14, v9

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    move v14, v11

    :goto_2
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v14, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto/16 :goto_7

    :cond_6
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v14, :cond_7

    move-object v2, v8

    :cond_7
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 v1, 0xc7

    const/16 v2, 0x2e

    if-eq v7, v2, :cond_b

    const/16 v2, 0x2f

    if-ne v7, v2, :cond_8

    const/16 v2, 0x2e

    goto :goto_5

    :cond_8
    if-eq v7, v13, :cond_a

    const/16 v2, 0xd

    if-ne v7, v2, :cond_9

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_4

    :cond_9
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_4
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0x59

    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v1

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0x57

    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0xa7

    invoke-virtual {v5, v7, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa5

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_6

    :cond_b
    :goto_5
    if-ne v7, v2, :cond_c

    const/16 v1, 0xc6

    :cond_c
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_6
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_7
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v0

    if-ne v6, v0, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_e
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final v(Lorg/mozilla/javascript/Node;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_literal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->d0()V

    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->j:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    const/4 v2, 0x2

    invoke-virtual {v0, p2, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/optimizer/a;->n0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0xb0

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p0, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    add-int/2addr p0, v0

    int-to-short p0, p0

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method public final v0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_f

    if-eq v4, v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    const/16 v9, 0x9a

    const/16 v10, 0x35

    if-eq v6, v10, :cond_d

    const/16 v11, 0x34

    if-ne v6, v11, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v1, v10, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v10

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/optimizer/a;->h0(Lorg/mozilla/javascript/Node;)I

    move-result v11

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/optimizer/a;->h0(Lorg/mozilla/javascript/Node;)I

    move-result v12

    if-eq v10, v5, :cond_5

    const/4 v8, 0x2

    if-eq v10, v8, :cond_1

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_1
    if-eq v11, v5, :cond_2

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/optimizer/a;->o(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    :goto_0
    const/4 v2, 0x1

    if-eq v10, v2, :cond_3

    invoke-virtual {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_3
    if-eq v12, v5, :cond_4

    invoke-virtual {v0, v12}, Lorg/mozilla/javascript/optimizer/a;->o(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    :goto_1
    invoke-virtual {v0, v6, v3, v4}, Lorg/mozilla/javascript/optimizer/a;->t(III)V

    goto/16 :goto_5

    :cond_5
    if-eq v11, v5, :cond_8

    if-eq v12, v5, :cond_8

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0xb2

    const-string v10, "java/lang/Void"

    const-string v13, "TYPE"

    const-string v14, "Ljava/lang/Class;"

    invoke-virtual {v5, v7, v10, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v15, 0xa6

    invoke-virtual {v5, v15, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v8, v11, 0x1

    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    invoke-virtual {v0, v12}, Lorg/mozilla/javascript/optimizer/a;->o(I)V

    invoke-virtual {v0, v6, v3, v4}, Lorg/mozilla/javascript/optimizer/a;->t(III)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v5

    if-ne v1, v5, :cond_7

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v7, v10, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v15, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    invoke-virtual {v0, v6, v3, v4}, Lorg/mozilla/javascript/optimizer/a;->t(III)V

    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v5

    if-ne v1, v5, :cond_6

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_2
    const/16 v1, 0x11

    const/16 v2, 0x10

    if-eq v6, v1, :cond_9

    if-ne v6, v2, :cond_a

    :cond_9
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0x5f

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_a
    const/16 v1, 0xe

    if-eq v6, v1, :cond_c

    if-ne v6, v2, :cond_b

    goto :goto_3

    :cond_b
    const-string v1, "cmp_LE"

    goto :goto_4

    :cond_c
    :goto_3
    const-string v1, "cmp_LT"

    :goto_4
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_5
    return-void

    :cond_d
    :goto_6
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, v0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    if-ne v6, v10, :cond_e

    const-string v1, "instanceOf"

    goto :goto_7

    :cond_e
    const-string v1, "in"

    :goto_7
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    :cond_f
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public w()V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->d0()V

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_gen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->N()V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    :goto_1
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/a;->R(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->A()V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->k:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->D()V

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_4

    const/16 v3, 0x43

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->M(Lorg/mozilla/javascript/Node;I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/a;->v(Lorg/mozilla/javascript/Node;I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final w0(Lorg/mozilla/javascript/Node;)V
    .locals 13

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_16

    const/16 v3, 0x22

    if-eq v2, v3, :cond_15

    const/16 v3, 0x24

    const/16 v4, 0x8

    const/4 v5, -0x1

    if-eq v2, v3, :cond_13

    const/16 v3, 0x27

    if-eq v2, v3, :cond_12

    const/16 v3, 0x37

    if-eq v2, v3, :cond_1

    const/16 v3, 0x44

    if-eq v2, v3, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string p1, "refIncrDecr"

    const-string v0, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez v2, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->n:[S

    aget-short v6, v6, v1

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/a;->h:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v7, v7, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v7

    aget-boolean v7, v7, v1

    const/16 v8, 0x59

    const/16 v9, 0x67

    const/16 v10, 0x63

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-eqz v7, :cond_9

    invoke-virtual {p1, v4, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eq p1, v5, :cond_5

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->l0(I)Z

    move-result p1

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/2addr v6, p1

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    if-nez v2, :cond_17

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    and-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_4

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_6

    :cond_4
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->l0(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/optimizer/a;->p(I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_1
    if-eqz v2, :cond_7

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    and-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p1, v4, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    const/16 v4, 0x5c

    if-eq p1, v5, :cond_d

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->l0(I)Z

    move-result p1

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/2addr v6, p1

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    if-eqz v2, :cond_a

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_a
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    and-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_3
    if-nez v2, :cond_c

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_c
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->l0(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/optimizer/a;->p(I)V

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_4
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->l()V

    if-eqz v2, :cond_f

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_f
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    and-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_5

    :cond_10
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    if-nez v2, :cond_11

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_11
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    goto/16 :goto_6

    :cond_12
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string p1, "nameIncrDecr"

    const-string v0, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    const-string v0, "elemIncrDecr"

    if-eq p1, v5, :cond_14

    const-string p1, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    const-string p1, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_16
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string p1, "propIncrDecr"

    const-string v0, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_6
    return-void
.end method

.method public final x(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 7

    const/4 v0, 0x0

    move-object v1, p2

    move v2, v0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/a;->B:S

    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/optimizer/a;->k(I)V

    :goto_1
    if-eq v0, v2, :cond_7

    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    const/16 v3, 0x59

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/optimizer/a;->h0(Lorg/mozilla/javascript/Node;)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->p(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 v1, 0x8

    const/4 v4, -0x1

    invoke-virtual {p2, v1, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->c()V

    :cond_5
    :goto_2
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result v1

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xc0

    const-string v6, "[Ljava/lang/Object;"

    invoke-virtual {v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/a;->i0(S)V

    :cond_6
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x53

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final x0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 6

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    const/16 v2, 0xa

    if-nez p3, :cond_2

    if-gt v1, v2, :cond_0

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p3}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result p3

    const/16 v3, 0x7530

    if-le p3, v3, :cond_2

    :cond_0
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->m:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->s:Z

    if-nez p3, :cond_2

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    :cond_1
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_literal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->I:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->z:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->y:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string p3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    const/16 v0, 0xb6

    invoke-virtual {p2, v0, p0, p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/a;->D:Z

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2, v1}, Lorg/mozilla/javascript/optimizer/a;->j(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->i([Ljava/lang/Object;I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p3, 0x5f

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->i([Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/mozilla/javascript/optimizer/a;->j(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V

    :goto_0
    const/4 p1, 0x0

    move p3, p1

    move-object v0, p2

    :goto_1
    if-eq p3, v1, :cond_8

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x99

    const/16 v5, 0x98

    if-eq v3, v5, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0xbc

    invoke-virtual {p3, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_3
    if-eq p1, v1, :cond_9

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0x59

    invoke-virtual {p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    if-ne p3, v5, :cond_6

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_4

    :cond_6
    if-ne p3, v4, :cond_7

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_4

    :cond_7
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_4
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v0, 0x4f

    invoke-virtual {p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_9
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string p1, "newObjectLiteral"

    const-string p2, "([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final y(ISIII)V
    .locals 0

    if-nez p5, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p5

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p5}, Lorg/mozilla/classfile/ClassFileWriter;->markHandler(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p1, 0xa7

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public final y0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/optimizer/OptFunctionNode;ILorg/mozilla/javascript/Node;)V
    .locals 11

    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const/16 v2, 0x1e

    if-ne p3, v2, :cond_0

    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/a;->C(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->X()S

    move-result p4

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v4

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x59

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0xc1

    invoke-virtual {v5, v7, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0x99

    invoke-virtual {v5, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0xc0

    invoke-virtual {v5, v7, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v6, "_id"

    const-string v7, "I"

    const/16 v8, 0xb4

    invoke-virtual {v5, v8, v1, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v6, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xa0

    invoke-virtual {v1, v5, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v5, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x1

    if-ne p3, v2, :cond_1

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_1
    move-object v5, v0

    :goto_2
    const/16 v6, 0xb2

    if-eqz v5, :cond_4

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/optimizer/a;->h0(Lorg/mozilla/javascript/Node;)I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    goto :goto_3

    :cond_2
    const/16 v7, 0x8

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v8, "TYPE"

    const-string v9, "Ljava/lang/Class;"

    const-string v10, "java/lang/Void"

    invoke-virtual {v7, v6, v10, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v5, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    :goto_3
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v5

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v7, "emptyArgs"

    const-string v8, "[Ljava/lang/Object;"

    const-string v9, "org/mozilla/javascript/ScriptRuntime"

    invoke-virtual {v5, v6, v9, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v7, v6, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    if-ne p3, v2, :cond_5

    iget-object v8, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    iget-object v8, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object p2, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v8, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object p2

    const/16 v8, 0xb8

    invoke-virtual {v5, v8, v7, v6, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0xa7

    invoke-virtual {p2, v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/a;->t:S

    invoke-virtual {p2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    if-eq p3, v2, :cond_6

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p2, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/optimizer/a;->i0(S)V

    :cond_6
    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/javascript/optimizer/a;->x(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    if-ne p3, v2, :cond_7

    const-string p1, "newObject"

    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const-string p2, "call"

    const-string p3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 p4, 0xb9

    const-string v0, "org/mozilla/javascript/Callable"

    invoke-virtual {p1, p4, v0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public final z(IZI)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/a;->S()V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/a;->w:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xc0

    const-string v4, "java/lang/Throwable"

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xbf

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget p2, p0, Lorg/mozilla/javascript/optimizer/a;->E:I

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->x:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 p2, 0x9f

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p3, p0, Lorg/mozilla/javascript/optimizer/a;->x:S

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public final z0(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/a;->B(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short p2, p0, Lorg/mozilla/javascript/optimizer/a;->v:S

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "setConst"

    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
