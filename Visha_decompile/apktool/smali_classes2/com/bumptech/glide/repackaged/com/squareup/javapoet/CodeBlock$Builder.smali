.class public final Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final formatParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;-><init>()V

    return-void
.end method

.method private addArgument(Ljava/lang/String;CLjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-eq p2, v0, :cond_2

    const/16 v0, 0x53

    if-eq p2, v0, :cond_1

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->argToType(Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid format string: \'%s\'"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->argToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->argToName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->argToLiteral(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private argToLiteral(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method private argToName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of p0, p1, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ParameterSpec;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ParameterSpec;

    iget-object p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/ParameterSpec;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/FieldSpec;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/FieldSpec;

    iget-object p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    return-object p0

    :cond_2
    instance-of p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;

    iget-object p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    return-object p0

    :cond_3
    instance-of p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;

    iget-object p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected name but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private argToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private argToType(Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;
    .locals 2

    instance-of p0, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    return-object p1

    :cond_0
    instance-of p0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz p0, :cond_1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Ljavax/lang/model/element/Element;

    if-eqz p0, :cond_2

    check-cast p1, Ljavax/lang/model/element/Element;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Ljava/lang/reflect/Type;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/TypeName;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected type but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isNoArgPlaceholder(C)Z
    .locals 0

    const/16 p0, 0x24

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1

    const/16 p0, 0x5b

    if-eq p1, p0, :cond_1

    const/16 p0, 0x5d

    if-eq p1, p0, :cond_1

    const/16 p0, 0x57

    if-ne p1, p0, :cond_0

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


# virtual methods
.method public add(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    iget-object v1, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    iget-object p1, p1, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    array-length v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "$"

    const/4 v11, 0x1

    if-ge v5, v9, :cond_c

    .line 3
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x24

    if-eq v9, v12, :cond_1

    add-int/lit8 v9, v5, 0x1

    .line 4
    invoke-virtual {v1, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 6
    :cond_0
    iget-object v10, v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v5, 0x1

    move v12, v9

    .line 7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_2

    move v13, v11

    goto :goto_2

    :cond_2
    move v13, v4

    :goto_2
    const-string v14, "dangling format characters in \'%s\'"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v12, 0x1

    .line 8
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-lt v14, v15, :cond_4

    const/16 v15, 0x39

    if-le v14, v15, :cond_3

    goto :goto_3

    :cond_3
    move v12, v13

    goto :goto_1

    .line 9
    :cond_4
    :goto_3
    invoke-direct {v0, v14}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->isNoArgPlaceholder(C)Z

    move-result v15

    if-eqz v15, :cond_6

    if-ne v9, v12, :cond_5

    goto :goto_4

    :cond_5
    move v11, v4

    .line 10
    :goto_4
    const-string v5, "$$, $>, $<, $[, $], and $W may not have an index"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v11, v5, v9}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v5, v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move v5, v13

    goto :goto_0

    :cond_6
    if-ge v9, v12, :cond_8

    .line 12
    invoke-virtual {v1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v8, v11

    .line 13
    array-length v9, v2

    if-lez v9, :cond_7

    .line 14
    array-length v9, v2

    rem-int v9, v8, v9

    aget v15, v3, v9

    add-int/2addr v15, v11

    aput v15, v3, v9

    :cond_7
    move v9, v11

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v7, 0x1

    move v9, v8

    move v8, v6

    move v6, v11

    :goto_6
    if-ltz v7, :cond_9

    .line 15
    array-length v15, v2

    if-ge v7, v15, :cond_9

    move v15, v11

    goto :goto_7

    :cond_9
    move v15, v4

    :goto_7
    add-int/lit8 v16, v7, 0x1

    .line 16
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    array-length v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v5, v12}, [Ljava/lang/Object;

    move-result-object v5

    .line 17
    const-string v11, "index %d for \'%s\' not in range (received %s arguments)"

    invoke-static {v15, v11, v5}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_b

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    move v11, v4

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v11, 0x1

    .line 18
    :goto_9
    const-string v5, "cannot mix indexed and positional parameters"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v11, v5, v12}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    aget-object v5, v2, v7

    invoke-direct {v0, v1, v14, v5}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->addArgument(Ljava/lang/String;CLjava/lang/Object;)V

    .line 20
    iget-object v5, v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    move v8, v9

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_e

    .line 21
    array-length v1, v2

    if-lt v7, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    move v1, v4

    .line 22
    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 23
    const-string/jumbo v6, "unused arguments: expected %s, received %s"

    invoke-static {v1, v6, v5}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    if-eqz v8, :cond_12

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_b
    array-length v5, v2

    if-ge v4, v5, :cond_10

    .line 26
    aget v5, v3, v4

    if-nez v5, :cond_f

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 28
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    const-string v2, ""

    goto :goto_c

    :cond_11
    const-string v2, "s"

    .line 29
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, ", "

    invoke-static {v4, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "unused argument%s: %s"

    invoke-static {v3, v2, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    return-object v0
.end method

.method public varargs addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "$["

    invoke-virtual {p0, v2, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    const-string p1, ";\n$]"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public build()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock;-><init>(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$1;)V

    return-object v0
.end method

.method public endControlFlow()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "}\n"

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public indent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    const-string v1, "$>"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public unindent()Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    const-string v1, "$<"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
