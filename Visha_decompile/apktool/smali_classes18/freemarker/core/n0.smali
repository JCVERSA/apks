.class public final Lfreemarker/core/n0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# static fields
.field public static j:[Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lfreemarker/core/n0;->j:[Ljava/lang/Class;

    sget-object v1, Lfreemarker/core/n0;->n:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "freemarker.template.TemplateSequenceModel"

    invoke-static {v1}, Lfreemarker/core/n0;->X(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/n0;->n:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_0
    sget-object v0, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v1, v0

    if-ge v2, v1, :cond_1

    sget-object v1, Lfreemarker/core/n0;->j:[Ljava/lang/Class;

    add-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v2

    aput-object v0, v1, v3

    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    return-void
.end method

.method public static synthetic X(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 10

    iget-object v0, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-static {p0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object v2, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    invoke-virtual {v2, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lmga;->Y4:Lzfa;

    :cond_2
    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    invoke-virtual {v3, v1, p1}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    goto :goto_0

    :goto_1
    instance-of v1, v6, Lhga;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, v6, p1}, Lfreemarker/core/t0;->W(Lzfa;Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lfreemarker/core/n0;->Y(Lzfa;ILfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v1, v6, Lmga;

    if-eqz v1, :cond_5

    check-cast v6, Lmga;

    iget-object v1, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    invoke-static {v6, v1, p1}, Lfreemarker/core/q0;->h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lfreemarker/core/n0;->a0(Lzfa;Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v1, v6, Lfreemarker/core/RangeModel;

    if-eqz v1, :cond_6

    check-cast v6, Lfreemarker/core/RangeModel;

    invoke-virtual {p0, v0, v6, p1}, Lfreemarker/core/n0;->Z(Lzfa;Lfreemarker/core/RangeModel;Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v5, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    sget-object p0, Lfreemarker/core/n0;->k:Ljava/lang/Class;

    if-nez p0, :cond_7

    const-string p0, "freemarker.template.TemplateNumberModel"

    invoke-static {p0}, Lfreemarker/core/n0;->X(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/n0;->k:Ljava/lang/Class;

    :cond_7
    sget-object v1, Lfreemarker/core/n0;->l:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "freemarker.template.TemplateScalarModel"

    invoke-static {v1}, Lfreemarker/core/n0;->X(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/n0;->l:Ljava/lang/Class;

    :cond_8
    sget-object v2, Lfreemarker/core/n0;->m:Ljava/lang/Class;

    if-nez v2, :cond_9

    const-string v2, "freemarker.core.Range"

    invoke-static {v2}, Lfreemarker/core/n0;->X(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/core/n0;->m:Ljava/lang/Class;

    :cond_9
    filled-new-array {p0, v1, v2}, [Ljava/lang/Class;

    move-result-object v8

    const-string v7, "number, range, or string"

    move-object v4, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 2

    new-instance v0, Lfreemarker/core/n0;

    iget-object v1, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfreemarker/core/n0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    return-object v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-virtual {v0}, Lfreemarker/core/t0;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t0;->T()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final Y(Lzfa;ILfreemarker/core/Environment;)Lzfa;
    .locals 9

    instance-of v0, p1, Lnga;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lnga;

    :try_start_0
    invoke-interface {p1}, Lnga;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p0, 0x7fffffff

    :goto_0
    if-ge p2, p0, :cond_0

    invoke-interface {p1, p2}, Lnga;->get(I)Lzfa;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-virtual {v0, p3}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lfreemarker/core/NonStringException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v2, Lfreemarker/template/SimpleScalar;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lfreemarker/core/NonStringException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :catch_1
    move-exception v2

    if-ltz p2, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p2, v3, :cond_2

    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    const-string v3, "String index out of range: The index was "

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-string p2, " (0-based), but the length of the string is only "

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, "."

    filled-new-array {v3, v4, p2, v5, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v2, p2}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw v2

    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t explain exception"

    invoke-direct {p2, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v2, "Negative index not allowed: "

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catch Lfreemarker/core/NonStringException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    new-instance p2, Lfreemarker/core/UnexpectedTypeException;

    iget-object v3, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    sget-object v6, Lfreemarker/core/n0;->j:[Ljava/lang/Class;

    instance-of p0, p1, Lofa;

    if-eqz p0, :cond_4

    const-string v1, "You had a numberical value inside the []. Currently that\'s only supported for sequences (lists) and strings. To get a Map item with a non-string key, use myMap?api.get(myKey)."

    :cond_4
    move-object v7, v1

    const-string v5, "sequence or string or something automatically convertible to string (number, date or boolean)"

    move-object v2, p2

    move-object v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method public final Z(Lzfa;Lfreemarker/core/RangeModel;Lfreemarker/core/Environment;)Lzfa;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    instance-of v2, v1, Lnga;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lnga;

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-virtual {v1, v5}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lfreemarker/core/NonStringException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->size()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->isRightUnbounded()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->isRightAdaptive()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {v0, v7}, Lfreemarker/core/n0;->b0(Z)Lzfa;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->getBegining()I

    move-result v9

    const-string v10, ") isn\'t allowed for a range used for slicing."

    if-ltz v9, :cond_15

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lnga;->size()I

    move-result v11

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->getStep()I

    move-result v12

    const-string v13, "element(s)"

    const-string v14, "character(s)"

    const-string v15, "sequence"

    const-string v16, "string"

    if-eqz v6, :cond_4

    if-ne v12, v8, :cond_4

    if-le v9, v11, :cond_7

    goto :goto_2

    :cond_4
    if-lt v9, v11, :cond_7

    :goto_2
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    iget-object v0, v0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v1, :cond_5

    move-object/from16 v20, v16

    goto :goto_3

    :cond_5
    move-object/from16 v20, v15

    :goto_3
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v11}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v1, :cond_6

    move-object/from16 v24, v14

    goto :goto_4

    :cond_6
    move-object/from16 v24, v13

    :goto_4
    const-string v25, ". "

    const-string v26, "(Note that indices are 0-based)."

    const-string v17, "Range start index "

    const-string v19, " is out of bounds, because the sliced "

    const-string v21, " has only "

    const-string v23, " "

    move-object/from16 v18, v3

    move-object/from16 v22, v4

    filled-new-array/range {v17 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw v2

    :cond_7
    if-nez v5, :cond_d

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v12

    add-int/2addr v5, v9

    if-gez v5, :cond_9

    if-eqz v6, :cond_8

    add-int/lit8 v4, v9, 0x1

    goto :goto_7

    :cond_8
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v0, v0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "Negative range end index ("

    filled-new-array {v3, v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw v1

    :cond_9
    if-lt v5, v11, :cond_e

    if-nez v6, :cond_c

    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    iget-object v0, v0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v1, :cond_a

    move-object/from16 v20, v16

    goto :goto_5

    :cond_a
    move-object/from16 v20, v15

    :goto_5
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v11}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v1, :cond_b

    move-object/from16 v24, v14

    goto :goto_6

    :cond_b
    move-object/from16 v24, v13

    :goto_6
    const-string v25, ". (Note that indices are 0-based)."

    const-string v17, "Range end index "

    const-string v19, " is out of bounds, because the sliced "

    const-string v21, " has only "

    const-string v23, " "

    move-object/from16 v18, v3

    move-object/from16 v22, v4

    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw v2

    :cond_c
    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_7

    :cond_d
    sub-int v4, v11, v9

    :cond_e
    :goto_7
    if-nez v4, :cond_10

    if-eqz v2, :cond_f

    move v7, v8

    :cond_f
    invoke-virtual {v0, v7}, Lfreemarker/core/n0;->b0(Z)Lzfa;

    move-result-object v0

    return-object v0

    :cond_10
    if-eqz v2, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_8
    if-ge v7, v4, :cond_11

    invoke-interface {v2, v9}, Lnga;->get(I)Lzfa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_11
    new-instance v1, Lfreemarker/template/SimpleSequence;

    invoke-direct {v1, v0, v3}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    return-object v1

    :cond_12
    if-gez v12, :cond_14

    if-le v4, v8, :cond_14

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/RangeModel;->isAffactedByStringSlicingBug()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    if-ne v4, v2, :cond_13

    move v4, v9

    goto :goto_9

    :cond_13
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v0, v0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    sub-int/2addr v4, v8

    mul-int/2addr v4, v12

    add-int/2addr v9, v4

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "Decreasing ranges aren\'t allowed for slicing strings (as it would give reversed text). The index range was: first = "

    const-string v5, ", last = "

    filled-new-array {v4, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw v1

    :cond_14
    add-int/2addr v4, v9

    :goto_9
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_15
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v0, v0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "Negative range start index ("

    filled-new-array {v3, v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw v1

    :catch_0
    new-instance v6, Lfreemarker/core/UnexpectedTypeException;

    iget-object v1, v0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-virtual {v1, v5}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v2

    const-string v3, "sequence or string or something automatically convertible to string (number, date or boolean)"

    sget-object v4, Lfreemarker/core/n0;->j:[Ljava/lang/Class;

    move-object v0, v6

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v6
.end method

.method public final a0(Lzfa;Ljava/lang/String;Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    instance-of v0, p1, Lofa;

    if-eqz v0, :cond_0

    check-cast p1, Lofa;

    invoke-interface {p1, p2}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Lfreemarker/core/NonHashException;

    iget-object p0, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-direct {p2, p0, p1, p3}, Lfreemarker/core/NonHashException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method public final b0(Z)Lzfa;
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ld1d;->e(Lfreemarker/core/t1;)I

    move-result p0

    sget p1, Ld1d;->d:I

    if-ge p0, p1, :cond_0

    new-instance p0, Lfreemarker/template/SimpleSequence;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/utility/Constants;->i:Lnga;

    goto :goto_0

    :cond_1
    sget-object p0, Lmga;->Y4:Lzfa;

    :goto_0
    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "...[...]"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->c:Ljw7;

    goto :goto_0

    :cond_0
    sget-object p0, Ljw7;->e:Ljw7;

    :goto_0
    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/n0;->i:Lfreemarker/core/t0;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/n0;->h:Lfreemarker/core/t0;

    :goto_0
    return-object p0
.end method
