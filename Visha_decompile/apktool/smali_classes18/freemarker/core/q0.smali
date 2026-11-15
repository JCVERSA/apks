.class public abstract Lfreemarker/core/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static synthetic a:Ljava/lang/Class;

.field public static synthetic b:Ljava/lang/Class;

.field public static synthetic c:Ljava/lang/Class;


# direct methods
.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "???"

    return-object p0

    :pswitch_0
    const-string p0, "greater-than-equals"

    return-object p0

    :pswitch_1
    const-string p0, "less-than-equals"

    return-object p0

    :pswitch_2
    const-string p0, "greater-than"

    return-object p0

    :pswitch_3
    const-string p0, "less-than"

    return-object p0

    :pswitch_4
    const-string p0, "not-equals"

    return-object p0

    :pswitch_5
    const-string p0, "equals"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lzfa;Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lhga;

    if-eqz v0, :cond_0

    check-cast p0, Lhga;

    invoke-static {p0, p1}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p3, p0}, Lfreemarker/core/Environment;->t0(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lffa;

    if-eqz v0, :cond_1

    check-cast p0, Lffa;

    invoke-virtual {p3, p0, p1}, Lfreemarker/core/Environment;->r0(Lffa;Lfreemarker/core/t0;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lmga;

    if-eqz v0, :cond_2

    check-cast p0, Lmga;

    invoke-static {p0, p1, p3}, Lfreemarker/core/q0;->h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, ""

    if-nez p0, :cond_5

    invoke-virtual {p3}, Lfreemarker/core/Configurable;->J()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1, p3}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Lfreemarker/core/InvalidReferenceException;

    const-string p1, "Null/missing value (no more informatoin avilable)"

    invoke-direct {p0, p1, p3}, Lfreemarker/core/InvalidReferenceException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw p0

    :cond_5
    instance-of v1, p0, Lfreemarker/template/a;

    if-eqz v1, :cond_c

    move-object p1, p0

    check-cast p1, Lfreemarker/template/a;

    invoke-interface {p1}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p1

    invoke-virtual {p3}, Lfreemarker/core/Configurable;->i()I

    move-result p2

    if-nez p2, :cond_6

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p0}, Lfreemarker/core/Configurable;->e(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p3, 0x1

    const-string v1, "true"

    if-ne p2, p3, :cond_8

    if-eqz p1, :cond_7

    move-object v0, v1

    :cond_7
    return-object v0

    :cond_8
    const/4 p3, 0x2

    if-ne p2, p3, :cond_b

    instance-of p2, p0, Lrd0;

    if-eqz p2, :cond_9

    check-cast p0, Lrd0;

    invoke-static {p0}, La0d;->a(Lrd0;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    move-object v0, v1

    :cond_a
    return-object v0

    :cond_b
    new-instance p0, Lfreemarker/core/BugException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Unsupported classic_compatible variation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {p3}, Lfreemarker/core/Configurable;->J()Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p0, Lrd0;

    if-eqz v0, :cond_d

    check-cast p0, Lrd0;

    invoke-static {p0}, La0d;->a(Lrd0;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    if-eqz p2, :cond_f

    instance-of v0, p0, Lnga;

    if-nez v0, :cond_e

    instance-of v0, p0, Lbfa;

    if-eqz v0, :cond_f

    :cond_e
    new-instance v0, Lfreemarker/core/NonStringException;

    invoke-direct {v0, p1, p0, p2, p3}, Lfreemarker/core/NonStringException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v0

    :cond_f
    new-instance p2, Lfreemarker/core/NonStringException;

    invoke-direct {p2, p1, p0, p3}, Lfreemarker/core/NonStringException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method public static d(Lzfa;Lfreemarker/core/t0;ILjava/lang/String;Lzfa;Lfreemarker/core/t0;Lfreemarker/core/t0;ZZZZLfreemarker/core/Environment;)Z
    .locals 28

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p11

    const/4 v5, 0x0

    if-nez p0, :cond_3

    if-eqz v4, :cond_0

    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Configurable;->J()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lmga;->Y4:Lzfa;

    goto :goto_0

    :cond_0
    if-eqz p9, :cond_1

    return v5

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0, v4}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object v0

    throw v0

    :cond_2
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "The left operand of the comparison was undefined or null."

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v6, p0

    :goto_0
    if-nez p4, :cond_7

    if-eqz v4, :cond_4

    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Configurable;->J()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lmga;->Y4:Lzfa;

    goto :goto_1

    :cond_4
    if-eqz p10, :cond_5

    return v5

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {v2, v4}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object v0

    throw v0

    :cond_6
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "The right operand of the comparison was undefined or null."

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v7, p4

    :goto_1
    instance-of v8, v6, Lhga;

    const/4 v9, 0x1

    if-eqz v8, :cond_a

    instance-of v8, v7, Lhga;

    if-eqz v8, :cond_a

    check-cast v6, Lhga;

    invoke-static {v6, v0}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object v6

    check-cast v7, Lhga;

    invoke-static {v7, v2}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v4, :cond_8

    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Configurable;->f()Lfreemarker/core/c;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->f()Lfreemarker/core/c;

    move-result-object v0

    goto :goto_2

    :cond_9
    sget-object v0, Lfreemarker/core/c;->d:Lfreemarker/core/c$a;

    :goto_2
    :try_start_0
    invoke-virtual {v0, v6, v2}, Lfreemarker/core/c;->e(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v2, "Unexpected error while comparing two numbers: "

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v1, v4, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_a
    instance-of v8, v6, Lffa;

    if-eqz v8, :cond_10

    instance-of v8, v7, Lffa;

    if-eqz v8, :cond_10

    check-cast v6, Lffa;

    check-cast v7, Lffa;

    invoke-interface {v6}, Lffa;->j()I

    move-result v8

    invoke-interface {v7}, Lffa;->j()I

    move-result v10

    if-eqz v8, :cond_d

    if-nez v10, :cond_b

    goto :goto_3

    :cond_b
    if-ne v8, v10, :cond_c

    invoke-static {v6, v0}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v7, v2}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto/16 :goto_8

    :cond_c
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    sget-object v1, Lffa;->W4:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "."

    const-string v6, "Can\'t compare dates of different types. Left date type is "

    const-string v7, ", right date type is "

    filled-new-array {v6, v2, v7, v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_d
    :goto_3
    if-nez v8, :cond_e

    const-string v1, "left"

    goto :goto_4

    :cond_e
    const-string v1, "right"

    move-object v0, v2

    :goto_4
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move-object v0, v3

    :goto_5
    const-string v3, " "

    const-string v5, "value of the comparison is a date-like value where it\'s not known if it\'s a date (no time part), time, or date-time, and thus can\'t be used in a comparison."

    const-string v6, "The "

    filled-new-array {v6, v1, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v0, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v2

    :cond_10
    instance-of v8, v6, Lmga;

    const-string v10, "Can\'t use operator \""

    const/4 v11, 0x2

    if-eqz v8, :cond_13

    instance-of v8, v7, Lmga;

    if-eqz v8, :cond_13

    if-eq v1, v9, :cond_12

    if-ne v1, v11, :cond_11

    goto :goto_6

    :cond_11
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-static/range {p2 .. p3}, Lfreemarker/core/q0;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\" on string values."

    filled-new-array {v10, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_12
    :goto_6
    check-cast v6, Lmga;

    invoke-static {v6, v0, v4}, Lfreemarker/core/q0;->h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    check-cast v7, Lmga;

    invoke-static {v7, v2, v4}, Lfreemarker/core/q0;->h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->w0()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_13
    instance-of v8, v6, Lfreemarker/template/a;

    if-eqz v8, :cond_16

    instance-of v8, v7, Lfreemarker/template/a;

    if-eqz v8, :cond_16

    if-eq v1, v9, :cond_15

    if-ne v1, v11, :cond_14

    goto :goto_7

    :cond_14
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-static/range {p2 .. p3}, Lfreemarker/core/q0;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\" on boolean values."

    filled-new-array {v10, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_15
    :goto_7
    check-cast v6, Lfreemarker/template/a;

    invoke-interface {v6}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result v0

    check-cast v7, Lfreemarker/template/a;

    invoke-interface {v7}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_8

    :cond_16
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Configurable;->J()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v0, v4}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/Environment;->w0()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_8
    packed-switch v1, :pswitch_data_0

    new-instance v0, Lfreemarker/core/BugException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported comparator operator code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-ltz v0, :cond_17

    move v5, v9

    :cond_17
    return v5

    :pswitch_1
    if-gtz v0, :cond_18

    move v5, v9

    :cond_18
    return v5

    :pswitch_2
    if-lez v0, :cond_19

    move v5, v9

    :cond_19
    return v5

    :pswitch_3
    if-gez v0, :cond_1a

    move v5, v9

    :cond_1a
    return v5

    :pswitch_4
    if-eqz v0, :cond_1b

    move v5, v9

    :cond_1b
    return v5

    :pswitch_5
    if-nez v0, :cond_1c

    move v5, v9

    :cond_1c
    return v5

    :cond_1d
    if-eqz p8, :cond_1f

    if-ne v1, v9, :cond_1e

    return v5

    :cond_1e
    if-ne v1, v11, :cond_1f

    return v9

    :cond_1f
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    const-string v8, ""

    const-string v10, ") value "

    const-string v12, "("

    const/4 v13, 0x3

    if-eqz p7, :cond_20

    if-eqz v0, :cond_20

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v12, v14, v5

    new-instance v15, Lh0d;

    invoke-direct {v15, v0}, Lh0d;-><init>(Lfreemarker/core/t1;)V

    aput-object v15, v14, v9

    aput-object v10, v14, v11

    move-object/from16 v19, v14

    goto :goto_9

    :cond_20
    move-object/from16 v19, v8

    :goto_9
    new-instance v0, Le0d;

    new-instance v14, Lg0d;

    invoke-direct {v14, v6}, Lg0d;-><init>(Lzfa;)V

    invoke-direct {v0, v14}, Le0d;-><init>(Ljava/lang/Object;)V

    if-eqz p7, :cond_21

    if-eqz v2, :cond_21

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v12, v8, v5

    new-instance v5, Lh0d;

    invoke-direct {v5, v2}, Lh0d;-><init>(Lfreemarker/core/t1;)V

    aput-object v5, v8, v9

    aput-object v10, v8, v11

    :cond_21
    move-object/from16 v24, v8

    new-instance v2, Le0d;

    new-instance v5, Lg0d;

    invoke-direct {v5, v7}, Lg0d;-><init>(Lzfa;)V

    invoke-direct {v2, v5}, Le0d;-><init>(Ljava/lang/Object;)V

    const-string v27, "."

    const-string v16, "Can\'t compare values of these types. "

    const-string v17, "Allowed comparisons are between two numbers, two strings, two dates, or two booleans.\n"

    const-string v18, "Left hand operand "

    const-string v20, "is "

    const-string v22, ".\n"

    const-string v23, "Right hand operand "

    const-string v25, "is "

    move-object/from16 v21, v0

    move-object/from16 v26, v2

    filled-new-array/range {v16 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lfreemarker/core/t0;ILjava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Z
    .locals 12

    move-object v1, p0

    move-object/from16 v11, p5

    invoke-virtual {p0, v11}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    move-object v5, p3

    invoke-virtual {p3, v11}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p1

    move-object v3, p2

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v11}, Lfreemarker/core/q0;->d(Lzfa;Lfreemarker/core/t0;ILjava/lang/String;Lzfa;Lfreemarker/core/t0;Lfreemarker/core/t0;ZZZZLfreemarker/core/Environment;)Z

    move-result v0

    return v0
.end method

.method public static f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;
    .locals 1

    invoke-interface {p0}, Lffa;->f()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lfreemarker/core/q0;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lfreemarker/core/q0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/q0;->c:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p0, p1}, Lfreemarker/core/q0;->i(Ljava/lang/Class;Lzfa;Lfreemarker/core/t0;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;
    .locals 1

    invoke-interface {p0}, Lhga;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lfreemarker/core/q0;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lfreemarker/core/q0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/q0;->b:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p0, p1}, Lfreemarker/core/q0;->i(Ljava/lang/Class;Lzfa;Lfreemarker/core/t0;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lfreemarker/core/Configurable;->J()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    sget-object p2, Lfreemarker/core/q0;->a:Ljava/lang/Class;

    if-nez p2, :cond_2

    const-string p2, "java.lang.String"

    invoke-static {p2}, Lfreemarker/core/q0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lfreemarker/core/q0;->a:Ljava/lang/Class;

    :cond_2
    invoke-static {p2, p0, p1}, Lfreemarker/core/q0;->i(Ljava/lang/Class;Lzfa;Lfreemarker/core/t0;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_3
    return-object v0
.end method

.method public static i(Ljava/lang/Class;Lzfa;Lfreemarker/core/t0;)Lfreemarker/template/TemplateModelException;
    .locals 1

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    invoke-static {p0, p1}, Lfreemarker/core/_TemplateModelException;->modelHasStoredNullDescription(Ljava/lang/Class;Lzfa;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    return-object v0
.end method
