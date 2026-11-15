.class public Lpf0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpf0$b;
    }
.end annotation


# instance fields
.field public a:[Lpf0;

.field public b:[Lpf0;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/BitSet;

.field public g:Ljava/util/BitSet;

.field public h:Ljava/util/BitSet;

.field public i:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpf0;->c:I

    iput p2, p0, Lpf0;->d:I

    return-void
.end method

.method public static a([III)Z
    .locals 1

    aget v0, p0, p1

    or-int/2addr p2, v0

    aput p2, p0, p1

    if-eq v0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b([Lorg/mozilla/javascript/Node;)[Lpf0;
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v1}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p0

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/16 v9, 0x84

    if-ge v3, v5, :cond_5

    aget-object v5, p0, v3

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    if-eq v5, v9, :cond_0

    goto :goto_1

    :cond_0
    if-eq v3, v4, :cond_4

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Lpf0;->j(II)Lpf0$b;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v9, :cond_1

    aget-object v4, p0, v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    move v4, v3

    goto :goto_1

    :cond_2
    invoke-static {v4, v3}, Lpf0;->j(II)Lpf0$b;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v9, :cond_3

    aget-object v4, p0, v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v3, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    array-length v3, p0

    if-eq v4, v3, :cond_7

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Lpf0;->j(II)Lpf0$b;

    move-result-object v3

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v9, :cond_6

    aget-object v4, p0, v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    :cond_7
    move v3, v2

    :goto_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpf0$b;

    iget-object v5, v4, Lpf0$b;->c:Lpf0;

    iget v5, v5, Lpf0;->d:I

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    if-eq v9, v8, :cond_8

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_8

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v1, v10}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpf0$b;

    invoke-virtual {v4, v10}, Lpf0$b;->b(Lpf0$b;)V

    invoke-virtual {v10, v4}, Lpf0$b;->a(Lpf0$b;)V

    :cond_8
    if-eq v9, v6, :cond_9

    if-eq v9, v7, :cond_9

    if-ne v9, v8, :cond_a

    :cond_9
    check-cast v5, Lorg/mozilla/javascript/ast/Jump;

    iget-object v5, v5, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpf0$b;

    iget-object v10, v9, Lpf0$b;->c:Lpf0;

    invoke-virtual {v5, v7, v10}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v4, v9}, Lpf0$b;->b(Lpf0$b;)V

    invoke-virtual {v9, v4}, Lpf0$b;->a(Lpf0$b;)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p0

    new-array p0, p0, [Lpf0;

    :goto_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpf0$b;

    iget-object v3, v0, Lpf0$b;->c:Lpf0;

    invoke-virtual {v0}, Lpf0$b;->d()[Lpf0;

    move-result-object v4

    iput-object v4, v3, Lpf0;->a:[Lpf0;

    invoke-virtual {v0}, Lpf0$b;->c()[Lpf0;

    move-result-object v0

    iput-object v0, v3, Lpf0;->b:[Lpf0;

    iput v2, v3, Lpf0;->e:I

    aput-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    return-object p0
.end method

.method public static e(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {p0, v2, p2}, Lpf0;->e(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_2

    const/16 v4, 0x9d

    if-eq v2, v4, :cond_2

    const/16 p1, 0x6b

    if-eq v2, p1, :cond_1

    const/16 p1, 0x6c

    if-eq v2, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v2, 0x37

    if-ne p1, v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object p0

    aget-boolean p0, p0, p1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    invoke-static {p2, p1, p0}, Lpf0;->a([III)Z

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object p0

    aget-boolean p0, p0, v2

    if-nez p0, :cond_4

    :cond_3
    invoke-static {p2, v2, v0}, Lpf0;->a([III)Z

    move-result p0

    :goto_1
    or-int/2addr v1, p0

    :cond_4
    :goto_2
    return v1
.end method

.method public static f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/16 v1, 0x38

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const/4 p0, 0x3

    return p0

    :pswitch_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :pswitch_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :pswitch_2
    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p0

    aget p0, p2, p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p1

    invoke-static {p0, v0, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0

    or-int/2addr p0, p1

    return p0

    :cond_2
    return v2

    :cond_3
    :pswitch_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lpf0;->f(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x69
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static j(II)Lpf0$b;
    .locals 2

    new-instance v0, Lpf0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpf0$b;-><init>(Lpf0$a;)V

    new-instance v1, Lpf0;

    invoke-direct {v1, p0, p1}, Lpf0;-><init>(II)V

    iput-object v1, v0, Lpf0$b;->c:Lpf0;

    return-object v0
.end method

.method public static k(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lpf0;[I)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2, p0, p1}, Lpf0;->g(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p2

    new-array p0, p0, [Z

    array-length p1, p2

    new-array p1, p1, [Z

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-boolean v2, p0, v1

    :goto_1
    move v3, v0

    :goto_2
    aget-boolean v4, p0, v1

    if-nez v4, :cond_1

    aget-boolean v4, p1, v1

    if-nez v4, :cond_3

    :cond_1
    aput-boolean v2, p1, v1

    aput-boolean v0, p0, v1

    aget-object v4, p2, v1

    invoke-virtual {v4}, Lpf0;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, p2, v1

    iget-object v4, v4, Lpf0;->b:[Lpf0;

    if-eqz v4, :cond_3

    move v5, v0

    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_3

    aget-object v6, v4, v5

    iget v6, v6, Lpf0;->e:I

    aput-boolean v2, p0, v6

    if-le v6, v1, :cond_2

    move v6, v2

    goto :goto_4

    :cond_2
    move v6, v0

    :goto_4
    or-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    if-nez v1, :cond_5

    if-eqz v3, :cond_4

    array-length v1, p2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_4
    aget-object p0, p2, v0

    invoke-virtual {p0, p3}, Lpf0;->i([I)V

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public static l(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eq v4, v0, :cond_0

    const/4 v5, 0x3

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_1
    if-eq v4, v1, :cond_1

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lpf0;->b([Lorg/mozilla/javascript/Node;)[Lpf0;

    move-result-object v3

    invoke-static {p0, p1, v3, v2}, Lpf0;->k(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lpf0;[I)V

    invoke-static {p0, p1, v3, v2}, Lpf0;->m(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lpf0;[I)V

    :goto_2
    if-eq v0, v1, :cond_3

    aget p1, v2, v0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setIsNumberVar(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static m(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lpf0;[I)V
    .locals 9

    array-length v0, p2

    new-array v0, v0, [Z

    array-length v1, p2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    :goto_0
    move v4, v2

    move v5, v4

    :goto_1
    aget-boolean v6, v0, v4

    if-nez v6, :cond_0

    aget-boolean v6, v1, v4

    if-nez v6, :cond_2

    :cond_0
    aput-boolean v3, v1, v4

    aput-boolean v2, v0, v4

    aget-object v6, p2, v4

    invoke-virtual {v6, p0, p1, p3}, Lpf0;->d(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, p2, v4

    iget-object v6, v6, Lpf0;->a:[Lpf0;

    if-eqz v6, :cond_2

    move v7, v2

    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget-object v8, v6, v7

    iget v8, v8, Lpf0;->e:I

    aput-boolean v3, v0, v8

    if-ge v8, v4, :cond_1

    move v8, v3

    goto :goto_3

    :cond_1
    move v8, v2

    :goto_3
    or-int/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    array-length v6, p2

    sub-int/2addr v6, v3

    if-ne v4, v6, :cond_4

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static n(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p0, p3}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    invoke-virtual {p0, p2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final c()Z
    .locals 3

    iget-object v0, p0, Lpf0;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lpf0;->a:[Lpf0;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpf0;->a:[Lpf0;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lpf0;->g:Ljava/util/BitSet;

    aget-object v1, v1, v0

    iget-object v1, v1, Lpf0;->f:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpf0;->f:Ljava/util/BitSet;

    iget-object v1, p0, Lpf0;->g:Ljava/util/BitSet;

    iget-object v2, p0, Lpf0;->h:Ljava/util/BitSet;

    iget-object p0, p0, Lpf0;->i:Ljava/util/BitSet;

    invoke-static {v0, v1, v2, p0}, Lpf0;->n(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result p0

    return p0
.end method

.method public final d(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z
    .locals 3

    iget v0, p0, Lpf0;->c:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lpf0;->d:I

    if-gt v0, v2, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    invoke-static {p1, v2, p3}, Lpf0;->e(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final g(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarCount()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lpf0;->h:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lpf0;->i:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lpf0;->f:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lpf0;->g:Ljava/util/BitSet;

    iget v1, p0, Lpf0;->c:I

    :goto_0
    iget v2, p0, Lpf0;->d:I

    if-gt v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lpf0;->h(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lpf0;->i:Ljava/util/BitSet;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/BitSet;->flip(II)V

    return-void
.end method

.method public final h(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V
    .locals 3

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_5

    const/16 v2, 0x38

    if-eq v0, v2, :cond_4

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_1

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p2}, Lpf0;->h(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_6

    iget-object p2, p0, Lpf0;->i:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p0, p0, Lpf0;->h:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object p2, p0, Lpf0;->i:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lpf0;->h:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    iget-object p0, p0, Lpf0;->i:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lpf0;->h(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lpf0;->h(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    iget-object p0, p0, Lpf0;->i:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object p2, p0, Lpf0;->i:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p0, p0, Lpf0;->h:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final i([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lpf0;->f:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lpf0;->a([III)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
