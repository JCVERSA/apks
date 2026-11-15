.class public Lorg/mozilla/javascript/NodeTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hasFinally:Z

.field private loopEnds:Lorg/mozilla/javascript/ObjArray;

.field private loops:Lorg/mozilla/javascript/ObjArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eq p2, p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_0
    return-object p3
.end method

.method private static replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eq p2, p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-ne v0, p2, :cond_2

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/Node;->replaceChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_0
    return-object p3
.end method

.method private transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;Z)V
    .locals 7

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    xor-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->flattenSymbolTable(Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    return-void
.end method

.method private transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v10, 0x0

    move-object v0, v10

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    move-object v1, v10

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    :goto_1
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x9a

    const/16 v4, 0x9f

    const/16 v5, 0x82

    const/16 v11, 0x27

    if-eqz p4, :cond_5

    const/16 v12, 0x9e

    if-eq v2, v5, :cond_2

    const/16 v13, 0x85

    if-eq v2, v13, :cond_2

    if-ne v2, v12, :cond_5

    :cond_2
    instance-of v13, v0, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v13, :cond_5

    move-object v13, v0

    check-cast v13, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v14

    if-eqz v14, :cond_5

    new-instance v14, Lorg/mozilla/javascript/Node;

    if-ne v2, v12, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-direct {v14, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v14, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v11, v15}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v13, v10}, Lorg/mozilla/javascript/ast/Scope;->setSymbolTable(Ljava/util/Map;)V

    invoke-static {v8, v1, v0, v14}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    invoke-virtual {v14, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v0, v2

    move v2, v12

    :cond_5
    const/4 v12, 0x3

    if-eq v2, v12, :cond_38

    const/4 v13, 0x4

    const/16 v14, 0x88

    const/16 v15, 0x7c

    const/16 v16, 0x0

    const/16 v5, 0x52

    if-eq v2, v13, :cond_2d

    const/4 v13, 0x7

    if-eq v2, v13, :cond_28

    const/16 v13, 0x31

    const/16 v10, 0x8

    if-eq v2, v10, :cond_1c

    const/16 v10, 0x26

    if-eq v2, v10, :cond_1b

    if-eq v2, v11, :cond_1d

    const/16 v10, 0x49

    if-eq v2, v10, :cond_1a

    if-eq v2, v5, :cond_19

    const/16 v10, 0x73

    if-eq v2, v10, :cond_18

    const/16 v10, 0x8a

    if-eq v2, v10, :cond_17

    if-eq v2, v4, :cond_d

    const/16 v10, 0xa6

    if-eq v2, v10, :cond_1a

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_8

    :pswitch_0
    iget-object v1, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-eq v2, v12, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    iget-object v2, v6, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    move-object v3, v0

    check-cast v3, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Jump;->getJumpStatement()Lorg/mozilla/javascript/ast/Jump;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iget-object v10, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v10}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v10

    :cond_8
    :goto_4
    if-eqz v10, :cond_c

    add-int/lit8 v10, v10, -0x1

    iget-object v11, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v11, v10}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mozilla/javascript/Node;

    if-ne v11, v4, :cond_a

    const/16 v1, 0x79

    if-ne v2, v1, :cond_9

    iget-object v1, v4, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    iput-object v1, v3, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Jump;->getContinue()Lorg/mozilla/javascript/Node;

    move-result-object v1

    iput-object v1, v3, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    :goto_5
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto :goto_8

    :cond_a
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v13

    if-ne v13, v15, :cond_b

    new-instance v11, Lorg/mozilla/javascript/Node;

    invoke-direct {v11, v12}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v8, v1, v0, v11}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_4

    :cond_b
    if-ne v13, v5, :cond_8

    check-cast v11, Lorg/mozilla/javascript/ast/Jump;

    new-instance v13, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v13, v14}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v11

    iput-object v11, v13, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-static {v8, v1, v0, v13}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_4

    :cond_c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-virtual {v6, v0, v7}, Lorg/mozilla/javascript/NodeTransformer;->visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    goto :goto_8

    :cond_d
    :pswitch_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_f

    move-object v2, v7

    check-cast v2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    :cond_e
    move/from16 v2, v16

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v6, v2, v8, v1, v0}, Lorg/mozilla/javascript/NodeTransformer;->visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    :cond_10
    :goto_8
    move-object v10, v0

    goto/16 :goto_19

    :cond_11
    :pswitch_4
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x82

    invoke-direct {v3, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v5

    :goto_9
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    if-ne v12, v11, :cond_14

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v5, v13}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v15, 0x9b

    if-ne v2, v15, :cond_13

    const/16 v15, 0x9c

    goto :goto_a

    :cond_13
    const/16 v15, 0x8

    :goto_a
    invoke-direct {v14, v15, v5, v12}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v5, v14

    goto :goto_b

    :cond_14
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    if-ne v12, v4, :cond_15

    :goto_b
    new-instance v12, Lorg/mozilla/javascript/Node;

    const/16 v14, 0x86

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v15

    invoke-direct {v12, v14, v5, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3, v12}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_c
    move-object v5, v10

    goto :goto_9

    :cond_15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-static {v8, v1, v0, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_8

    :cond_17
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    goto :goto_8

    :cond_18
    :pswitch_5
    iget-object v1, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    iget-object v1, v6, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v2, v0

    check-cast v2, Lorg/mozilla/javascript/ast/Jump;

    iget-object v2, v2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    goto :goto_8

    :cond_19
    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    iput-boolean v2, v6, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    iget-object v2, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    iget-object v2, v6, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1a
    move-object v1, v7

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->addResumptionPoint(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_8

    :cond_1b
    invoke-virtual {v6, v0, v7}, Lorg/mozilla/javascript/NodeTransformer;->visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    goto/16 :goto_8

    :cond_1c
    if-eqz p5, :cond_1d

    const/16 v3, 0x4a

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    :cond_1d
    :pswitch_6
    if-eqz p4, :cond_1e

    goto/16 :goto_8

    :cond_1e
    const/16 v3, 0x1f

    if-ne v2, v11, :cond_1f

    move-object v4, v0

    goto :goto_d

    :cond_1f
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-eq v5, v13, :cond_21

    if-ne v2, v3, :cond_20

    goto/16 :goto_8

    :cond_20
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_21
    :goto_d
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v5

    if-eqz v5, :cond_22

    goto/16 :goto_8

    :cond_22
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    if-ne v2, v11, :cond_23

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_8

    :cond_23
    const/16 v5, 0x29

    const/16 v10, 0x8

    if-eq v2, v10, :cond_27

    const/16 v10, 0x4a

    if-ne v2, v10, :cond_24

    goto :goto_e

    :cond_24
    const/16 v10, 0x9c

    if-ne v2, v10, :cond_25

    const/16 v1, 0x9d

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_8

    :cond_25
    if-ne v2, v3, :cond_26

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v8, v1, v0, v2}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_8

    :cond_26
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_27
    :goto_e
    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_8

    :cond_28
    :pswitch_7
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2c

    :goto_f
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_29

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_f

    :cond_29
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2a

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2c

    :cond_2a
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const-string v5, "undefined"

    if-ne v4, v11, :cond_2b

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object v1, v3

    goto :goto_10

    :cond_2b
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-ne v4, v11, :cond_2c

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object v1, v2

    :cond_2c
    :goto_10
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_10

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_8

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_2e

    move-object v2, v7

    check-cast v2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v16, 0x1

    :cond_2e
    if-eqz v16, :cond_2f

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_11

    :cond_2f
    const/4 v3, 0x1

    :goto_11
    iget-boolean v2, v6, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    if-nez v2, :cond_30

    goto/16 :goto_8

    :cond_30
    iget-object v2, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_12
    if-ltz v2, :cond_35

    iget-object v4, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/Node;

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v10

    if-eq v10, v5, :cond_32

    if-ne v10, v15, :cond_31

    goto :goto_13

    :cond_31
    const/16 v11, 0x82

    goto :goto_16

    :cond_32
    :goto_13
    if-ne v10, v5, :cond_33

    new-instance v10, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v10, v14}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    check-cast v4, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v4

    iput-object v4, v10, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    goto :goto_14

    :cond_33
    new-instance v10, Lorg/mozilla/javascript/Node;

    invoke-direct {v10, v12}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :goto_14
    if-nez v3, :cond_34

    new-instance v3, Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v4

    const/16 v11, 0x82

    invoke-direct {v3, v11, v4}, Lorg/mozilla/javascript/Node;-><init>(II)V

    goto :goto_15

    :cond_34
    const/16 v11, 0x82

    :goto_15
    invoke-virtual {v3, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_35
    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v8, v1, v0, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    if-eqz v2, :cond_37

    if-eqz v16, :cond_36

    goto :goto_17

    :cond_36
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x87

    invoke-direct {v4, v0, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    goto :goto_18

    :cond_37
    :goto_17
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_18
    move-object v0, v10

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_38
    :pswitch_8
    iget-object v1, v6, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v6, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_10

    iget-object v1, v6, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    iget-object v1, v6, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    goto/16 :goto_8

    :goto_19
    instance-of v0, v10, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_39

    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v3, v0

    goto :goto_1a

    :cond_39
    move-object v3, v9

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    goto :goto_18

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x79
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x83
        :pswitch_5
        :pswitch_8
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9a
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;ZLorg/mozilla/javascript/CompilerEnvirons;)V

    return-void
.end method

.method public final transform(Lorg/mozilla/javascript/ast/ScriptNode;ZLorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 2

    .line 2
    invoke-virtual {p3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;Z)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1, p2, p3}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;ZLorg/mozilla/javascript/CompilerEnvirons;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0

    return-void
.end method

.method public visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v7, 0x9f

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/16 v9, 0x9a

    const-wide/16 v10, 0x0

    const/16 v12, 0x7f

    const/16 v13, 0x86

    const/16 v14, 0x5a

    const/16 v15, 0x82

    if-eqz p1, :cond_9

    new-instance v6, Lorg/mozilla/javascript/Node;

    if-eqz v5, :cond_1

    const/16 v16, 0xa0

    move/from16 v8, v16

    goto :goto_1

    :cond_1
    move v8, v15

    :goto_1
    invoke-direct {v6, v8}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v0, v1, v2, v6}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x43

    invoke-direct {v2, v6}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v7, :cond_5

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    if-ne v7, v9, :cond_4

    if-eqz v5, :cond_2

    new-instance v7, Lorg/mozilla/javascript/Node;

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-direct {v7, v14, v9, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_2
    new-instance v7, Lorg/mozilla/javascript/Node;

    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {v9, v13, v14}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-direct {v7, v15, v9, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-static {v10, v11}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {v9, v12, v14}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v9}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_5

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v7, v4

    move-object v4, v3

    :goto_5
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v8, 0x27

    if-ne v6, v8, :cond_7

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v4, Lorg/mozilla/javascript/Node;

    invoke-static {v10, v11}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {v4, v12, v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    :cond_6
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v4, v7

    const/16 v7, 0x9f

    const/16 v9, 0x9a

    const/16 v14, 0x5a

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    const/16 v3, 0xc

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x7c

    invoke-direct {v1, v2, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_a

    :cond_9
    new-instance v6, Lorg/mozilla/javascript/Node;

    if-eqz v5, :cond_a

    const/16 v7, 0x5a

    goto :goto_6

    :cond_a
    move v7, v15

    :goto_6
    invoke-direct {v6, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v0, v1, v2, v6}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x5a

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x9f

    if-ne v6, v7, :cond_d

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    const/16 v9, 0x9a

    if-ne v8, v9, :cond_c

    if-eqz v5, :cond_b

    new-instance v8, Lorg/mozilla/javascript/Node;

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v14

    const/16 v7, 0x5a

    invoke-direct {v8, v7, v14, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_8

    :cond_b
    new-instance v8, Lorg/mozilla/javascript/Node;

    new-instance v7, Lorg/mozilla/javascript/Node;

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {v7, v13, v14}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-direct {v8, v15, v7, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_8
    move-object v4, v3

    check-cast v4, Lorg/mozilla/javascript/ast/Scope;

    move-object v7, v2

    check-cast v7, Lorg/mozilla/javascript/ast/Scope;

    invoke-static {v4, v7}, Lorg/mozilla/javascript/ast/Scope;->joinScopes(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_9

    :cond_c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_d
    const/16 v9, 0x9a

    move-object v8, v4

    move-object v4, v3

    :goto_9
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_f

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    move-object v14, v2

    check-cast v14, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v6, v14}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-nez v4, :cond_e

    new-instance v4, Lorg/mozilla/javascript/Node;

    invoke-static {v10, v11}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {v4, v12, v14}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    :cond_e
    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x38

    invoke-direct {v14, v7, v6, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v4, v8

    goto :goto_7

    :cond_f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/16 v1, 0x5a

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    instance-of v1, v4, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v1, :cond_12

    check-cast v4, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    check-cast v2, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    goto :goto_a

    :cond_11
    new-instance v3, Lorg/mozilla/javascript/Node;

    invoke-direct {v3, v13, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v15}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    instance-of v1, v4, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v1, :cond_12

    check-cast v4, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    check-cast v2, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_12
    :goto_a
    return-object v0
.end method

.method public visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0

    return-void
.end method
