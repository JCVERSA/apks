.class public Lorg/mozilla/javascript/b;
.super Lhx4;
.source "SourceFile"


# instance fields
.field public a:Lorg/mozilla/javascript/CompilerEnvirons;

.field public b:Z

.field public c:Z

.field public d:Lorg/mozilla/javascript/InterpreterData;

.field public e:Lorg/mozilla/javascript/ast/ScriptNode;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lorg/mozilla/javascript/ObjToIntMap;

.field public k:I

.field public l:[I

.field public m:I

.field public n:[J

.field public o:I

.field public p:Lorg/mozilla/javascript/ObjArray;

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lhx4;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/b;->j:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/b;->p:Lorg/mozilla/javascript/ObjArray;

    return-void
.end method

.method public static p(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(Lorg/mozilla/javascript/Node;)I
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


# virtual methods
.method public final A(I)[B
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, v0

    iget v2, p0, Lorg/mozilla/javascript/b;->f:I

    add-int/2addr p1, v2

    if-le p1, v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-array p1, p1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object p1, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    return-object p1

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final B(Lorg/mozilla/javascript/Node;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->z(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/b;->l:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/b;->l:[I

    iget p0, p0, Lorg/mozilla/javascript/b;->f:I

    aput p0, v0, p1

    return-void
.end method

.method public final C(I)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/b;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/b;->k:I

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method public final D(I)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/b;->f:I

    add-int/lit8 v1, p1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/b;->E(II)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final E(II)V
    .locals 4

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 v2, p1, 0x1

    int-to-short v3, v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    if-nez v3, :cond_2

    new-instance v3, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v3}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, v2, p2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    const/4 v0, 0x0

    :cond_3
    iget-object p0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    shr-int/lit8 p2, v0, 0x8

    int-to-byte p2, p2

    aput-byte p2, p0, v2

    add-int/2addr p1, v1

    int-to-byte p2, v0

    aput-byte p2, p0, p1

    return-void
.end method

.method public final F(I)V
    .locals 2

    if-gtz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/b;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/b;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/b;->g:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    if-le v0, v1, :cond_1

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/b;->g:I

    :goto_0
    return-void
.end method

.method public final G(Lorg/mozilla/javascript/Node;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/b;->h:I

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    if-gez v1, :cond_0

    iput p1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    :cond_0
    iput p1, p0, Lorg/mozilla/javascript/b;->h:I

    const/16 v0, -0x1a

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->e(I)V

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->l(I)V

    :cond_1
    return-void
.end method

.method public final H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 0

    iget p1, p0, Lorg/mozilla/javascript/b;->g:I

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/b;->L(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    return-void
.end method

.method public final I(Lorg/mozilla/javascript/Node;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    iget v4, v0, Lorg/mozilla/javascript/b;->g:I

    const/16 v5, 0x5a

    const/4 v6, -0x4

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v5, :cond_23

    const/16 v5, 0x67

    const/4 v10, 0x7

    if-eq v2, v5, :cond_22

    const/16 v5, 0x6e

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v2, v5, :cond_1f

    const/16 v5, -0x32

    const/16 v13, 0x7f

    if-eq v2, v13, :cond_1d

    const/16 v14, 0x8f

    if-eq v2, v14, :cond_1b

    const/16 v15, 0x93

    if-eq v2, v15, :cond_1a

    const/16 v15, 0xa0

    if-eq v2, v15, :cond_19

    const/16 v15, 0xa6

    const v16, 0xffff

    if-eq v2, v15, :cond_16

    packed-switch v2, :pswitch_data_0

    const/16 v11, 0x37

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/b;->p(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lorg/mozilla/javascript/b;->H(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_d

    :pswitch_1
    iget-object v1, v0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v1, v0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x9d

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->n(II)V

    goto/16 :goto_d

    :pswitch_2
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x3b

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_3
    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_4
    iget-boolean v2, v0, Lorg/mozilla/javascript/b;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_0
    if-ne v2, v7, :cond_2

    const/16 v2, -0xe

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :cond_2
    invoke-virtual {v0, v11, v2}, Lorg/mozilla/javascript/b;->n(II)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->k(I)V

    goto/16 :goto_d

    :pswitch_5
    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/b;->J(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_d

    :pswitch_6
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    iget v1, v0, Lorg/mozilla/javascript/b;->f:I

    const/16 v5, 0x6a

    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x6

    :goto_1
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/b;->d(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    and-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->D(I)V

    goto/16 :goto_d

    :pswitch_7
    const/16 v5, 0x10

    invoke-virtual {v1, v5, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    move v5, v9

    :cond_4
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    add-int/2addr v5, v8

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->f(II)V

    rsub-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_8
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    goto/16 :goto_d

    :pswitch_9
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    goto/16 :goto_d

    :pswitch_a
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/b;->K(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_d

    :pswitch_c
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/b;->y(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_d
    iget-object v1, v0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    iget-object v1, v0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->n(II)V

    goto/16 :goto_d

    :pswitch_e
    iget-object v2, v0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    iget-object v2, v0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v0, v11, v1}, Lorg/mozilla/javascript/b;->n(II)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_f
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/b;->y(Lorg/mozilla/javascript/Node;)I

    move-result v1

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_10
    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_11
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v1

    double-to-int v3, v1

    int-to-double v5, v3

    cmpl-double v5, v5, v1

    if-nez v5, :cond_a

    if-nez v3, :cond_7

    const/16 v3, -0x33

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/b;->e(I)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v1

    const-wide/16 v1, 0x0

    cmpg-double v1, v5, v1

    if-gez v1, :cond_b

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->k(I)V

    goto :goto_2

    :cond_7
    if-ne v3, v8, :cond_8

    const/16 v1, -0x34

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_2

    :cond_8
    int-to-short v1, v3

    if-ne v1, v3, :cond_9

    const/16 v1, -0x1b

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->e(I)V

    and-int v1, v3, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->l(I)V

    goto :goto_2

    :cond_9
    const/16 v1, -0x1c

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/b;->h(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/b;->x(D)I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->f(II)V

    :cond_b
    :goto_2
    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_14
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v3, 0x8d

    const/4 v5, -0x2

    if-ne v2, v3, :cond_c

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v12}, Lorg/mozilla/javascript/b;->F(I)V

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    :cond_c
    invoke-virtual {v0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_15
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v5, 0x8c

    if-ne v2, v5, :cond_d

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    :cond_d
    invoke-virtual {v0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_16
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    goto/16 :goto_d

    :pswitch_17
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_e

    move v1, v8

    goto :goto_3

    :cond_e
    move v1, v9

    :goto_3
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    if-eqz v1, :cond_f

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_4

    :cond_f
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->k(I)V

    :goto_4
    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_18
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_10

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    goto :goto_5

    :cond_10
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/b;->s(Lorg/mozilla/javascript/Node;)V

    :goto_5
    move v6, v9

    :goto_6
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_11
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    const/16 v3, 0x47

    if-eq v2, v3, :cond_13

    if-eqz v1, :cond_13

    const/16 v3, -0x15

    invoke-virtual {v0, v3, v6}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->m(I)V

    if-ne v2, v5, :cond_12

    move v9, v8

    :cond_12
    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/b;->m(I)V

    iget v1, v0, Lorg/mozilla/javascript/b;->h:I

    and-int v1, v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->l(I)V

    goto :goto_7

    :cond_13
    const/16 v1, 0x26

    if-ne v2, v1, :cond_14

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/mozilla/javascript/b;->a:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lorg/mozilla/javascript/b;->c:Z

    if-nez v1, :cond_14

    const/16 v2, -0x37

    :cond_14
    invoke-virtual {v0, v2, v6}, Lorg/mozilla/javascript/b;->f(II)V

    :goto_7
    if-ne v2, v5, :cond_15

    neg-int v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_8

    :cond_15
    rsub-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->F(I)V

    :goto_8
    iget-object v1, v0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    if-le v6, v2, :cond_25

    iput v6, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    goto/16 :goto_d

    :pswitch_19
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :pswitch_1a
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :cond_16
    :pswitch_1b
    if-eqz v3, :cond_17

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    goto :goto_9

    :cond_17
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    :goto_9
    const/16 v3, 0x49

    if-ne v2, v3, :cond_18

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/b;->k(I)V

    goto :goto_a

    :cond_18
    const/16 v2, -0x42

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->e(I)V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v1

    and-int v1, v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->l(I)V

    goto/16 :goto_d

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v12}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->k(I)V

    goto/16 :goto_d

    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, -0x35

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    iget v1, v0, Lorg/mozilla/javascript/b;->f:I

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x36

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->a(II)V

    goto/16 :goto_d

    :cond_1b
    :pswitch_1c
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-ne v2, v14, :cond_1c

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    const/16 v2, 0x44

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    :cond_1c
    invoke-virtual {v0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_d

    :cond_1d
    :pswitch_1d
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    if-ne v2, v13, :cond_1e

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_d

    :cond_1e
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    goto :goto_d

    :cond_1f
    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    if-eq v3, v12, :cond_21

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    if-ne v2, v11, :cond_20

    goto :goto_b

    :cond_20
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_21
    :goto_b
    const/16 v2, -0x13

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_d

    :cond_22
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    iget v3, v0, Lorg/mozilla/javascript/b;->f:I

    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/b;->d(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    and-int/lit8 v5, p2, 0x1

    invoke-virtual {v0, v1, v5}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    iget v1, v0, Lorg/mozilla/javascript/b;->f:I

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/b;->d(I)V

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/b;->D(I)V

    iput v4, v0, Lorg/mozilla/javascript/b;->g:I

    invoke-virtual {v0, v2, v5}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/b;->D(I)V

    goto :goto_d

    :cond_23
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    :goto_c
    if-eq v3, v1, :cond_24

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_c

    :cond_24
    and-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    :cond_25
    :goto_d
    add-int/2addr v4, v8

    iget v0, v0, Lorg/mozilla/javascript/b;->g:I

    if-eq v4, v0, :cond_26

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_18
        :pswitch_17
        :pswitch_1d
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_19
        :pswitch_14
        :pswitch_18
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_19
        :pswitch_19
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_19
        :pswitch_19
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_c
        :pswitch_c
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_1c
        :pswitch_a
        :pswitch_18
        :pswitch_9
        :pswitch_1b
        :pswitch_1a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x69
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8a
        :pswitch_4
        :pswitch_3
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x24

    if-eq v1, v2, :cond_4

    const/16 v2, 0x27

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xb

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->m(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/b;->p(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/4 p2, -0x7

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/b;->n(II)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->m(I)V

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x8

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->m(I)V

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->m(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x9

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->m(I)V

    :goto_0
    return-void
.end method

.method public final K(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 9

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x43

    const/4 v2, 0x0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_1

    move-object v4, p2

    move v5, v2

    :goto_0
    if-eqz v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_8

    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    :goto_1
    const/16 v6, -0x1d

    invoke-virtual {p0, v6, v5}, Lorg/mozilla/javascript/b;->f(II)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/b;->F(I)V

    :goto_2
    const/4 v5, -0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x98

    if-ne v6, v7, :cond_2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v6, -0x39

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_3

    :cond_2
    const/16 v7, 0x99

    if-ne v6, v7, :cond_3

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v6, -0x3a

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_3

    :cond_3
    const/16 v7, 0xa4

    const/16 v8, -0x1e

    if-ne v6, v7, :cond_4

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2, v2}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/b;->e(I)V

    :goto_3
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_2

    :cond_5
    if-ne v0, v3, :cond_7

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_6

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/b;->k(I)V

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lorg/mozilla/javascript/b;->p:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/javascript/b;->p:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    const/16 p1, -0x1f

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/b;->f(II)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/b;->p:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    iget-object p2, p0, Lorg/mozilla/javascript/b;->p:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/b;->f(II)V

    :goto_4
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/b;->F(I)V

    return-void

    :cond_8
    invoke-static {p1}, Lorg/mozilla/javascript/b;->p(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final L(Lorg/mozilla/javascript/Node;I)V
    .locals 13

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, -0x3e

    if-eq v0, v2, :cond_19

    const/16 v2, 0x41

    if-eq v0, v2, :cond_18

    const/16 v2, 0x52

    const/16 v3, -0x38

    const/4 v4, 0x1

    if-eq v0, v2, :cond_14

    const/16 v2, 0x6e

    const/4 v5, 0x3

    const/4 v6, -0x5

    const/4 v7, -0x1

    if-eq v0, v2, :cond_11

    const/16 v2, 0x73

    const/4 v8, -0x4

    const/4 v9, 0x0

    if-eq v0, v2, :cond_e

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_d

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_b

    const/16 v2, 0x8e

    const/4 v10, 0x2

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_8

    const/16 v2, 0x32

    const v3, 0xffff

    if-eq v0, v2, :cond_7

    const/16 v2, 0x33

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    invoke-static {p1}, Lorg/mozilla/javascript/b;->p(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/16 v0, -0x17

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/b;->c(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x86

    if-ne v0, p1, :cond_0

    move v6, v8

    :cond_0
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->B(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-static {p1}, Lorg/mozilla/javascript/b;->y(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :pswitch_4
    invoke-static {p1}, Lorg/mozilla/javascript/b;->y(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/b;->j(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->g(I)V

    const/16 v0, 0x39

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->k(I)V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v9

    :goto_0
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/b;->m(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :pswitch_5
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/b;->c(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :pswitch_6
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/b;->c(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/b;->a:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v4}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x41

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    iget p1, p0, Lorg/mozilla/javascript/b;->h:I

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->l(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :cond_3
    :goto_1
    const/16 p1, -0x3f

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    iget p1, p0, Lorg/mozilla/javascript/b;->h:I

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->l(I)V

    goto/16 :goto_8

    :cond_4
    if-nez v1, :cond_5

    const/16 p1, -0x16

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    goto/16 :goto_8

    :cond_5
    invoke-virtual {p0, v1, v4}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/b;->k(I)V

    goto/16 :goto_8

    :pswitch_9
    invoke-virtual {p0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v10}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :cond_6
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    invoke-static {p1}, Lorg/mozilla/javascript/b;->y(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lorg/mozilla/javascript/b;->f(II)V

    goto/16 :goto_8

    :cond_7
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    iget p1, p0, Lorg/mozilla/javascript/b;->h:I

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->l(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :cond_8
    const/16 p1, -0x40

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p0}, Lorg/mozilla/javascript/b;->o()I

    move-result v0

    invoke-virtual {p1, v10, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/b;->L(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v3, v0}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->C(I)V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-static {p1}, Lorg/mozilla/javascript/b;->y(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/16 v0, -0x18

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    :goto_3
    if-eqz v1, :cond_c

    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/b;->L(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_3

    :cond_c
    const/16 v0, -0x19

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/b;->f(II)V

    goto/16 :goto_8

    :cond_d
    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    :goto_4
    :pswitch_b
    if-eqz v1, :cond_19

    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/b;->L(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_4

    :cond_e
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v1, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    :goto_5
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {p0, v0, v9}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->k(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/4 v1, -0x6

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/b;->c(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_5

    :cond_f
    invoke-static {p1}, Lorg/mozilla/javascript/b;->p(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto/16 :goto_8

    :cond_11
    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    if-ne v0, v5, :cond_12

    const/16 v0, -0x14

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/b;->f(II)V

    goto :goto_6

    :cond_12
    if-ne v0, v4, :cond_13

    :goto_6
    iget-boolean v0, p0, Lorg/mozilla/javascript/b;->b:Z

    if-nez v0, :cond_19

    const/16 v0, -0x13

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/b;->F(I)V

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_8

    :cond_13
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_14
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-static {p1}, Lorg/mozilla/javascript/b;->y(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/b;->o()I

    move-result v2

    const/16 v5, -0xd

    invoke-virtual {p0, v5, v2}, Lorg/mozilla/javascript/b;->f(II)V

    iget v12, p0, Lorg/mozilla/javascript/b;->f:I

    iget-boolean v5, p0, Lorg/mozilla/javascript/b;->c:Z

    iput-boolean v4, p0, Lorg/mozilla/javascript/b;->c:Z

    :goto_7
    if-eqz v1, :cond_15

    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/b;->L(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_7

    :cond_15
    iput-boolean v5, p0, Lorg/mozilla/javascript/b;->c:Z

    iget-object v1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eqz v1, :cond_16

    iget-object v4, p0, Lorg/mozilla/javascript/b;->l:[I

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/b;->z(Lorg/mozilla/javascript/Node;)I

    move-result v1

    aget v8, v4, v1

    const/4 v9, 0x0

    move-object v5, p0

    move v6, v12

    move v7, v8

    move v10, v0

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Lorg/mozilla/javascript/b;->b(IIIZII)V

    :cond_16
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v1, p0, Lorg/mozilla/javascript/b;->l:[I

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->z(Lorg/mozilla/javascript/Node;)I

    move-result p1

    aget v8, v1, p1

    const/4 v9, 0x1

    move-object v5, p0

    move v6, v12

    move v7, v8

    move v10, v0

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Lorg/mozilla/javascript/b;->b(IIIZII)V

    :cond_17
    invoke-virtual {p0, v3, v2}, Lorg/mozilla/javascript/b;->f(II)V

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/b;->C(I)V

    goto :goto_8

    :cond_18
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->G(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/b;->k(I)V

    :cond_19
    :goto_8
    iget p0, p0, Lorg/mozilla/javascript/b;->g:I

    if-ne p0, p2, :cond_1a

    return-void

    :cond_1a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public final a(II)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/b;->f:I

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->d(I)V

    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/b;->E(II)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final b(IIIZII)V
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/b;->q:I

    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    goto :goto_0

    :cond_1
    array-length v2, v1

    if-ne v2, v0, :cond_2

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    move-object v1, v2

    :cond_2
    :goto_0
    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    aput p3, v1, p1

    add-int/lit8 p1, v0, 0x3

    aput p4, v1, p1

    add-int/lit8 p1, v0, 0x4

    aput p5, v1, p1

    add-int/lit8 p1, v0, 0x5

    aput p6, v1, p1

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/b;->q:I

    return-void
.end method

.method public final c(Lorg/mozilla/javascript/Node;I)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->z(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/b;->m:I

    if-lt p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/b;->l:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p2, v0}, Lorg/mozilla/javascript/b;->a(II)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/b;->f:I

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/b;->d(I)V

    iget p2, p0, Lorg/mozilla/javascript/b;->o:I

    iget-object v1, p0, Lorg/mozilla/javascript/b;->n:[J

    if-eqz v1, :cond_2

    array-length v2, v1

    if-ne p2, v2, :cond_4

    :cond_2
    if-nez v1, :cond_3

    const/16 v1, 0x28

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/javascript/b;->n:[J

    goto :goto_0

    :cond_3
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/b;->n:[J

    :cond_4
    :goto_0
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/mozilla/javascript/b;->o:I

    iget-object p0, p0, Lorg/mozilla/javascript/b;->n:[J

    int-to-long v1, p1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    int-to-long v3, v0

    or-long v0, v1, v3

    aput-wide v0, p0, p2

    :goto_1
    return-void
.end method

.method public final d(I)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/b;->f:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/b;->A(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/2addr v1, v4

    iput v1, p0, Lorg/mozilla/javascript/b;->f:I

    return-void
.end method

.method public final e(I)V
    .locals 1

    invoke-static {p1}, Lhx4;->validIcode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->m(I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final f(II)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/b;->g(I)V

    invoke-static {p1}, Lhx4;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->k(I)V

    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    rsub-int/lit8 p1, p1, -0x20

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/16 v0, -0x26

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->m(I)V

    goto :goto_0

    :cond_2
    const v0, 0xffff

    if-gt p1, v0, :cond_3

    const/16 v0, -0x27

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->l(I)V

    goto :goto_0

    :cond_3
    const/16 v0, -0x28

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->h(I)V

    :goto_0
    return-void
.end method

.method public final h(I)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/b;->f:I

    add-int/lit8 v2, v1, 0x4

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->A(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/mozilla/javascript/b;->f:I

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/b;->j(Ljava/lang/String;)V

    invoke-static {p1}, Lhx4;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->k(I)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/b;->j:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/b;->j:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/b;->j:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1

    rsub-int/lit8 p1, v0, -0x29

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2

    const/16 p1, -0x2d

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->m(I)V

    goto :goto_0

    :cond_2
    const p1, 0xffff

    if-gt v0, p1, :cond_3

    const/16 p1, -0x2e

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->l(I)V

    goto :goto_0

    :cond_3
    const/16 p1, -0x2f

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->h(I)V

    :goto_0
    return-void
.end method

.method public final k(I)V
    .locals 1

    invoke-static {p1}, Lhx4;->validTokenCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->m(I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final l(I)V
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/b;->f:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->A(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/mozilla/javascript/b;->f:I

    return-void

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final m(I)V
    .locals 4

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/b;->f:I

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/b;->A(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/mozilla/javascript/b;->f:I

    return-void

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final n(II)V
    .locals 3

    const/4 v0, -0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9d

    const/16 v1, 0x80

    if-eq p1, v0, :cond_3

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v2, 0x38

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    if-ge p2, v1, :cond_5

    if-ne p1, v0, :cond_2

    const/16 p1, -0x30

    goto :goto_1

    :cond_2
    const/16 p1, -0x31

    :goto_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/b;->m(I)V

    return-void

    :cond_3
    if-ge p2, v1, :cond_4

    const/16 p1, -0x3d

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/b;->m(I)V

    return-void

    :cond_4
    const/16 p1, -0x3c

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/b;->f(II)V

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/b;->f(II)V

    return-void
.end method

.method public final o()I
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/b;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/b;->k:I

    iget-object p0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget v2, p0, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    if-le v1, v2, :cond_0

    iput v1, p0, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    :cond_0
    return v0
.end method

.method public q(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;
    .locals 2

    iput-object p1, p0, Lorg/mozilla/javascript/b;->a:Lorg/mozilla/javascript/CompilerEnvirons;

    new-instance v0, Lorg/mozilla/javascript/NodeTransformer;

    invoke-direct {v0}, Lorg/mozilla/javascript/NodeTransformer;-><init>()V

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    :goto_0
    new-instance p2, Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v1

    invoke-direct {p2, p1, v0, p3, v1}, Lorg/mozilla/javascript/InterpreterData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/b;->t()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->u(Lorg/mozilla/javascript/Node;)V

    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    return-object p0
.end method

.method public final r()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/b;->o:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/b;->n:[J

    aget-wide v2, v2, v1

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    long-to-int v2, v2

    iget-object v3, p0, Lorg/mozilla/javascript/b;->l:[I

    aget v3, v3, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/mozilla/javascript/b;->E(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/b;->o:I

    return-void
.end method

.method public final s(Lorg/mozilla/javascript/Node;)V
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/16 v4, 0x24

    if-eq v0, v4, :cond_1

    const/16 v2, 0x27

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x12

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xf

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x10

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/b;->i(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/b;->F(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/b;->I(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x11

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->e(I)V

    :goto_0
    return-void
.end method

.method public final t()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/b;->b:Z

    iget-object v1, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    iget-object v2, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    iput v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object v2, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v3

    iput-boolean v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, -0x3e

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/b;->e(I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getBaseLineno()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/b;->l(I)V

    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    :cond_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isES6Generator:Z

    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    instance-of v2, v2, Lorg/mozilla/javascript/ast/VariableInitializer;

    iput-boolean v2, v0, Lorg/mozilla/javascript/InterpreterData;->declaredAsVar:Z

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/b;->u(Lorg/mozilla/javascript/Node;)V

    return-void
.end method

.method public final u(Lorg/mozilla/javascript/Node;)V
    .locals 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/b;->v()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/b;->w()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/b;->L(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/b;->r()V

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-nez p1, :cond_0

    const/16 p1, 0x41

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/b;->k(I)V

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p1

    iget v2, p0, Lorg/mozilla/javascript/b;->f:I

    if-eq v1, v2, :cond_1

    new-array v1, v2, [B

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/b;->j:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, p0, Lorg/mozilla/javascript/b;->j:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/b;->j:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap;->newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_0

    :cond_4
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/b;->i:I

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-eq v2, p1, :cond_6

    new-array v2, p1, [D

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    :cond_6
    :goto_2
    iget p1, p0, Lorg/mozilla/javascript/b;->q:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    array-length v2, v1

    if-eq v2, p1, :cond_7

    new-array v2, p1, [I

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v0, v1

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceStart()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceEnd()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    iget-object p1, p0, Lorg/mozilla/javascript/b;->p:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/b;->p:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjArray;->toArray()[Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p1, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public final v()V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [Lorg/mozilla/javascript/InterpreterData;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_2

    iget-object v3, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v3

    new-instance v4, Lorg/mozilla/javascript/b;

    invoke-direct {v4}, Lorg/mozilla/javascript/b;-><init>()V

    iget-object v5, p0, Lorg/mozilla/javascript/b;->a:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v5, v4, Lorg/mozilla/javascript/b;->a:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v3, v4, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v5, Lorg/mozilla/javascript/InterpreterData;

    iget-object v6, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/InterpreterData;-><init>(Lorg/mozilla/javascript/InterpreterData;)V

    iput-object v5, v4, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v4}, Lorg/mozilla/javascript/b;->t()V

    iget-object v5, v4, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    aput-object v5, v1, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    instance-of v5, v3, Lorg/mozilla/javascript/ast/AstRoot;

    if-nez v5, :cond_1

    instance-of v5, v3, Lorg/mozilla/javascript/ast/Scope;

    if-nez v5, :cond_1

    instance-of v3, v3, Lorg/mozilla/javascript/ast/Block;

    if-nez v3, :cond_1

    iget-object v3, v4, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/mozilla/javascript/InterpreterData;->declaredAsFunctionExpression:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    return-void
.end method

.method public final w()V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_1

    iget-object v5, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/javascript/b;->e:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v1, v5, v6}, Lorg/mozilla/javascript/RegExpProxy;->compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, p0, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    return-void
.end method

.method public final x(D)I
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/b;->i:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    const/16 v2, 0x40

    new-array v2, v2, [D

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/b;->d:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aput-wide p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lorg/mozilla/javascript/b;->i:I

    return v0
.end method

.method public final z(Lorg/mozilla/javascript/Node;)I
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/b;->m:I

    iget-object v2, p0, Lorg/mozilla/javascript/b;->l:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ne v0, v3, :cond_3

    :cond_1
    if-nez v2, :cond_2

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/javascript/b;->l:[I

    goto :goto_0

    :cond_2
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/mozilla/javascript/b;->l:[I

    :cond_3
    :goto_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/b;->m:I

    iget-object p0, p0, Lorg/mozilla/javascript/b;->l:[I

    aput v1, p0, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    return v0
.end method
