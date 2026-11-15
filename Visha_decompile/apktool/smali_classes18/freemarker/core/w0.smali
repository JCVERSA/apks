.class public abstract Lfreemarker/core/w0;
.super Ldfa;
.source "SourceFile"


# instance fields
.field public final a:Lzv4;

.field public final b:I

.field public final c:Z

.field public final d:Ljava/util/TimeZone;

.field public final e:Ljava/lang/Boolean;

.field public final f:Ljava/lang/Boolean;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lzv4;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Ldfa;-><init>()V

    move-object/from16 v3, p6

    iput-object v3, v0, Lfreemarker/core/w0;->a:Lzv4;

    if-eqz v2, :cond_15

    iput v2, v0, Lfreemarker/core/w0;->b:I

    move/from16 v2, p4

    iput-boolean v2, v0, Lfreemarker/core/w0;->c:Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x7

    move-object v7, v3

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p2

    :goto_0
    if-ge v3, v2, :cond_14

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5f

    if-eq v12, v13, :cond_13

    const/16 v13, 0x20

    if-ne v12, v13, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v10, :cond_12

    const-string v10, "Character \""

    const/16 v13, 0x6e

    const/16 v14, 0x75

    const/16 v15, 0x66

    if-eq v12, v15, :cond_b

    const/16 v4, 0x6d

    const/16 v6, 0x68

    const/16 v15, 0x73

    if-eq v12, v6, :cond_3

    if-eq v12, v15, :cond_3

    if-eq v12, v14, :cond_2

    if-eq v12, v4, :cond_3

    if-ne v12, v13, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected character, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ". Expected the beginning of one of: h, m, s, ms, nz, fz, u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    invoke-virtual {v0, v7, v11}, Lfreemarker/core/w0;->e(Ljava/lang/Boolean;I)V

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_3
    if-ne v8, v5, :cond_a

    const-string v10, "Less than seconds accuracy isn\'t allowed by the XML Schema format"

    if-eq v12, v6, :cond_8

    if-eq v12, v4, :cond_5

    if-eq v12, v15, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 v8, 0x6

    goto/16 :goto_2

    :cond_5
    if-ge v11, v2, :cond_6

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v15, :cond_6

    add-int/lit8 v11, v3, 0x2

    const/16 v8, 0x8

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/w0;->j()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v8, 0x5

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/w0;->j()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v8, 0x4

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "\" is unexpected as accuracy was already specified earlier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_b
    if-ge v11, v2, :cond_c

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v14, :cond_c

    invoke-virtual {v0, v7, v11}, Lfreemarker/core/w0;->e(Ljava/lang/Boolean;I)V

    add-int/lit8 v11, v3, 0x2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_c
    :goto_1
    if-nez v9, :cond_11

    const/16 v4, 0x7a

    const/16 v6, 0x66

    if-eq v12, v6, :cond_f

    if-eq v12, v13, :cond_d

    goto :goto_2

    :cond_d
    if-ge v11, v2, :cond_e

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_e

    add-int/lit8 v11, v3, 0x2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "\"n\" must be followed by \"z\""

    invoke-direct {v0, v1, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    if-ge v11, v2, :cond_10

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_10

    add-int/lit8 v11, v3, 0x2

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move v3, v11

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "\"f\" must be followed by \"z\""

    invoke-direct {v0, v1, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "\" is unexpected as zone offset visibility was already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "specified earlier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Missing space or \"_\" before \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_13
    :goto_3
    const/4 v3, 0x1

    move v10, v3

    move v3, v11

    goto/16 :goto_0

    :cond_14
    iput v8, v0, Lfreemarker/core/w0;->g:I

    iput-object v9, v0, Lfreemarker/core/w0;->f:Ljava/lang/Boolean;

    iput-object v7, v0, Lfreemarker/core/w0;->e:Ljava/lang/Boolean;

    move-object/from16 v1, p5

    iput-object v1, v0, Lfreemarker/core/w0;->d:Ljava/util/TimeZone;

    return-void

    :cond_15
    new-instance v0, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;

    invoke-direct {v0}, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a(Lffa;)Ljava/lang/String;
    .locals 8

    invoke-interface {p1}, Lffa;->f()Ljava/util/Date;

    move-result-object v1

    iget p1, p0, Lfreemarker/core/w0;->b:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iget-object v4, p0, Lfreemarker/core/w0;->f:Ljava/lang/Boolean;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lfreemarker/core/w0;->c:Z

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :goto_3
    iget v5, p0, Lfreemarker/core/w0;->g:I

    iget-object v0, p0, Lfreemarker/core/w0;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lfreemarker/core/w0;->c:Z

    if-nez v0, :cond_5

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_4
    sget-object v0, Lfreemarker/template/utility/DateUtil;->a:Ljava/util/TimeZone;

    :goto_5
    move-object v6, v0

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lfreemarker/core/w0;->d:Ljava/util/TimeZone;

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lfreemarker/core/w0;->a:Lzv4;

    invoke-virtual {v0}, Lzv4;->d()Lfreemarker/template/utility/DateUtil$b;

    move-result-object v7

    move-object v0, p0

    move v2, v3

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lfreemarker/core/w0;->f(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lfreemarker/core/w0;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "<error: wrong format dateType>"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/w0;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/w0;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/w0;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/w0;->a:Lzv4;

    invoke-virtual {v0}, Lzv4;->c()Lfreemarker/template/utility/DateUtil$a;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/w0;->e:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    sget-object v1, Lfreemarker/template/utility/DateUtil;->a:Ljava/util/TimeZone;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/w0;->d:Ljava/util/TimeZone;

    :goto_0
    iget v2, p0, Lfreemarker/core/w0;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1, v1, v0}, Lfreemarker/core/w0;->k(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1, v1, v0}, Lfreemarker/core/w0;->m(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, p1, v1, v0}, Lfreemarker/core/w0;->l(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lfreemarker/core/BugException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected date type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lfreemarker/core/w0;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/lang/Boolean;I)V
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "The UTC usage option was already set earlier."

    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public abstract f(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$b;)Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Z
.end method

.method public abstract k(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;
.end method

.method public abstract l(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;
.end method

.method public abstract m(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;
.end method
