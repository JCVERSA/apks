.class public Lls7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x82

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x85

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lls7;->a(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public final b(Lorg/mozilla/javascript/Node;)Z
    .locals 2

    iget-boolean v0, p0, Lls7;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-object p0, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lorg/mozilla/javascript/Node;)V
    .locals 2

    iget-boolean v0, p0, Lls7;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lls7;->c:Z

    :cond_0
    return-void
.end method

.method public d(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    invoke-static {p1, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lls7;->e(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 5

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v0

    iput-boolean v0, p0, Lls7;->a:Z

    iput-object p1, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iget-object v1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-static {v1, v0}, Lls7;->a(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    new-array v2, v1, [Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lpf0;->l(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lls7;->c:Z

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lls7;->c:Z

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setParameterNumberContext(Z)V

    :cond_2
    return-void
.end method

.method public final f(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p2}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x96

    invoke-direct {v1, v2, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/Node;->addChildBefore(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_1
    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g(Lorg/mozilla/javascript/Node;I)I
    .locals 8

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x28

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x86

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x8d

    const/16 v5, 0x96

    if-eq v0, v1, :cond_27

    const/16 v1, 0x9d

    const/16 v6, 0x97

    if-eq v0, v1, :cond_20

    const/16 v1, 0x37

    if-eq v0, v1, :cond_1d

    const/16 p2, 0x38

    if-eq v0, p2, :cond_20

    const/16 p2, 0x6b

    if-eq v0, p2, :cond_18

    const/16 p2, 0x6c

    if-eq v0, p2, :cond_18

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x2

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lls7;->f(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return v3

    :pswitch_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lls7;->f(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result p1

    if-ne p1, v4, :cond_0

    invoke-virtual {p0, p2}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lls7;->f(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_2
    return v3

    :pswitch_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {p0, v0}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v5, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_3
    invoke-virtual {p0, v1, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0, v1}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_4
    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    invoke-virtual {p0, v1, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    invoke-virtual {p0, v0}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    if-ne v6, v4, :cond_a

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-ne v5, v4, :cond_a

    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :cond_7
    if-ne v5, v4, :cond_9

    if-ne v6, v4, :cond_8

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_8
    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :cond_9
    if-ne v6, v4, :cond_a

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_a
    :goto_1
    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    invoke-virtual {p0, v1, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    invoke-virtual {p0, v0}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v1}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v0}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v3

    :cond_b
    if-ne v6, v4, :cond_10

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v1}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-eqz p0, :cond_d

    if-ne v5, v4, :cond_10

    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_2

    :cond_d
    if-ne v5, v4, :cond_f

    if-ne v6, v4, :cond_e

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_2

    :cond_e
    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_2

    :cond_f
    if-ne v6, v4, :cond_10

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_10
    :goto_2
    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, p2, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    invoke-virtual {p0, v0, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    invoke-virtual {p0, p2}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v0}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    if-ne v1, v4, :cond_13

    if-ne v5, v4, :cond_11

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_11
    invoke-virtual {p0, v0}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-nez p0, :cond_12

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_12
    return v4

    :cond_13
    if-ne v5, v4, :cond_15

    invoke-virtual {p0, p2}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v6, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_14
    return v4

    :cond_15
    invoke-virtual {p0, p2}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, v6, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_16
    invoke-virtual {p0, v0}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-nez p0, :cond_17

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_17
    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_18
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v1, :cond_1a

    if-ne v0, v4, :cond_19

    invoke-virtual {p0, p2}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-virtual {p0, p2}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    return v4

    :cond_19
    return v3

    :cond_1a
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p0

    const/16 p1, 0x24

    if-eq p0, p1, :cond_1c

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p0

    const/16 p1, 0x21

    if-ne p0, p1, :cond_1b

    goto :goto_3

    :cond_1b
    return v3

    :cond_1c
    :goto_3
    return v0

    :cond_1d
    iget-object v0, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-boolean v1, p0, Lls7;->a:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-ne p2, v4, :cond_1e

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_1e
    iget-object p0, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_1f
    return v3

    :cond_20
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    iget-object v1, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    iget-boolean v7, p0, Lls7;->a:Z

    if-eqz v7, :cond_23

    iget-object v7, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v7, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v7

    if-eqz v7, :cond_23

    if-ne v0, v4, :cond_22

    invoke-virtual {p0, p2}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_21
    invoke-virtual {p0, p2}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    return v3

    :cond_22
    return v0

    :cond_23
    iget-object v7, p0, Lls7;->b:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v7, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v1

    if-eqz v1, :cond_25

    if-eq v0, v4, :cond_24

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v6, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_24
    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-virtual {p0, p2}, Lls7;->c(Lorg/mozilla/javascript/Node;)V

    return v4

    :cond_25
    if-ne v0, v4, :cond_26

    invoke-virtual {p0, p2}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v5, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_26
    return v3

    :cond_27
    :pswitch_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, p2, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    if-ne v6, v4, :cond_28

    invoke-virtual {p0, p2}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result v6

    if-nez v6, :cond_28

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v5, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_28
    invoke-virtual {p0, v0, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v4, :cond_29

    invoke-virtual {p0, v0}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_29

    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_29
    invoke-virtual {p0, v1, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v4, :cond_2a

    invoke-virtual {p0, v1}, Lls7;->b(Lorg/mozilla/javascript/Node;)Z

    move-result p0

    if-nez p0, :cond_2a

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v5, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_2a
    return v3

    :cond_2b
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2, v4}, Lls7;->g(Lorg/mozilla/javascript/Node;I)I

    move-result p0

    if-ne p0, v4, :cond_2c

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_2c
    return v3

    :cond_2d
    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x24
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
