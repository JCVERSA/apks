.class public final Lfreemarker/core/j0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/j0$a;
    }
.end annotation


# static fields
.field public static final i:[Ljava/lang/String;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v26, "vars"

    const-string v27, "version"

    const-string v0, "currentNode"

    const-string v1, "currentTemplateName"

    const-string v2, "current_node"

    const-string v3, "current_template_name"

    const-string v4, "dataModel"

    const-string v5, "data_model"

    const-string v6, "error"

    const-string v7, "globals"

    const-string v8, "lang"

    const-string v9, "locale"

    const-string v10, "localeObject"

    const-string v11, "locale_object"

    const-string v12, "locals"

    const-string v13, "main"

    const-string v14, "mainTemplateName"

    const-string v15, "main_template_name"

    const-string v16, "namespace"

    const-string v17, "node"

    const-string v18, "now"

    const-string v19, "outputEncoding"

    const-string v20, "output_encoding"

    const-string v21, "pass"

    const-string v22, "templateName"

    const-string v23, "template_name"

    const-string v24, "urlEscapingCharset"

    const-string v25, "url_escaping_charset"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/core/j0;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Token;Lfreemarker/core/u0;)V
    .locals 7

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iget-object v0, p1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    sget-object v1, Lfreemarker/core/j0;->i:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_5

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown special variable name: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lfreemarker/core/u0;->o:I

    const/16 v0, 0xa

    const/16 v1, 0xb

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const-string v0, " The allowed special variable names are: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    const/4 v2, 0x1

    move v3, v0

    :goto_1
    sget-object v4, Lfreemarker/core/j0;->i:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    invoke-static {v4}, Ld0d;->b(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc

    if-ne p2, v6, :cond_1

    if-eq v5, v1, :cond_3

    goto :goto_2

    :cond_1
    if-eq v5, v6, :cond_3

    :goto_2
    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_3

    :cond_2
    const-string v5, ", "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance p2, Lfreemarker/core/ParseException;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/j0;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/j0;->h:Ljava/lang/String;

    const-string v1, "namespace"

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lfreemarker/core/Environment;->A0()Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "main"

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lfreemarker/core/Environment;->T0()Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "globals"

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lfreemarker/core/Environment;->L0()Lofa;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "locals"

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lfreemarker/core/Environment;->z0()Lfreemarker/core/e1$a;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/e1$a;->c()Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    const-string v1, "data_model"

    if-eq v0, v1, :cond_1c

    const-string v1, "dataModel"

    if-ne v0, v1, :cond_5

    goto/16 :goto_9

    :cond_5
    const-string v1, "vars"

    if-ne v0, v1, :cond_6

    new-instance p0, Lfreemarker/core/j0$a;

    invoke-direct {p0, p1}, Lfreemarker/core/j0$a;-><init>(Lfreemarker/core/Environment;)V

    return-object p0

    :cond_6
    const-string v1, "locale"

    if-ne v0, v1, :cond_7

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_7
    const-string v1, "locale_object"

    if-eq v0, v1, :cond_1b

    const-string v1, "localeObject"

    if-ne v0, v1, :cond_8

    goto/16 :goto_8

    :cond_8
    const-string v1, "lang"

    if-ne v0, v1, :cond_9

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_9
    const-string v1, "current_node"

    if-eq v0, v1, :cond_1a

    const-string v1, "node"

    if-eq v0, v1, :cond_1a

    const-string v1, "currentNode"

    if-ne v0, v1, :cond_a

    goto/16 :goto_7

    :cond_a
    const-string v1, "template_name"

    if-eq v0, v1, :cond_18

    const-string v1, "templateName"

    if-ne v0, v1, :cond_b

    goto/16 :goto_5

    :cond_b
    const-string v1, "main_template_name"

    if-eq v0, v1, :cond_17

    const-string v1, "mainTemplateName"

    if-ne v0, v1, :cond_c

    goto/16 :goto_4

    :cond_c
    const-string v1, "current_template_name"

    if-eq v0, v1, :cond_16

    const-string v1, "currentTemplateName"

    if-ne v0, v1, :cond_d

    goto :goto_3

    :cond_d
    const-string v1, "pass"

    if-ne v0, v1, :cond_e

    sget-object p0, Lfreemarker/core/e1;->q:Lfreemarker/core/e1;

    return-object p0

    :cond_e
    const-string v1, "version"

    if-ne v0, v1, :cond_f

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-static {}, Lxe1;->T0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_f
    const-string v1, "output_encoding"

    if-eq v0, v1, :cond_15

    const-string v1, "outputEncoding"

    if-ne v0, v1, :cond_10

    goto :goto_2

    :cond_10
    const-string v1, "url_escaping_charset"

    if-eq v0, v1, :cond_14

    const-string v1, "urlEscapingCharset"

    if-ne v0, v1, :cond_11

    goto :goto_1

    :cond_11
    const-string v1, "error"

    if-ne v0, v1, :cond_12

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->B0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_12
    const-string p1, "now"

    if-ne v0, p1, :cond_13

    new-instance p0, Lam9;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-object p0

    :cond_13
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "Invalid built-in variable: "

    iget-object v1, p0, Lfreemarker/core/j0;->h:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw p1

    :cond_14
    :goto_1
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->G()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_2
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->v()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_3
    invoke-virtual {p1}, Lfreemarker/core/Environment;->C0()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p0

    return-object p0

    :cond_17
    :goto_4
    invoke-virtual {p1}, Lfreemarker/core/Environment;->U0()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_5
    invoke-virtual {p1}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object p0

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v0, Ld1d;->f:I

    if-lt p0, v0, :cond_19

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->d1()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :goto_6
    return-object p0

    :cond_1a
    :goto_7
    invoke-virtual {p1}, Lfreemarker/core/Environment;->D0()Lgga;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_8
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->u()Lgc7;

    move-result-object p0

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object p1

    invoke-interface {p0, p1}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_9
    invoke-virtual {p1}, Lfreemarker/core/Environment;->E0()Lofa;

    move-result-object p0

    return-object p0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 0

    return-object p0
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j0;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/j0;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j0;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
