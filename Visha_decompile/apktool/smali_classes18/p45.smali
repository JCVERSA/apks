.class public Lp45;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp45$a;
    }
.end annotation


# static fields
.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method

.method public static synthetic h0(Ljava/lang/String;)Ljava/lang/Class;
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
    .locals 9

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    instance-of v0, v3, Lnga;

    const-string v1, "anonymous_interpreted"

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/core/n0;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    new-instance v4, Lfreemarker/core/k1;

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v4, v5}, Lfreemarker/core/k1;-><init>(Ljava/lang/Number;)V

    invoke-direct {v0, v2, v4}, Lfreemarker/core/n0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, v2}, Lfreemarker/core/t1;->l(Lfreemarker/core/t1;)Lfreemarker/core/t1;

    move-result-object v0

    check-cast v0, Lfreemarker/core/t0;

    check-cast v3, Lnga;

    invoke-interface {v3}, Lnga;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v1, Lfreemarker/core/n0;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    new-instance v4, Lfreemarker/core/k1;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v4, v5}, Lfreemarker/core/k1;-><init>(Ljava/lang/Number;)V

    invoke-direct {v1, v2, v4}, Lfreemarker/core/n0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, v2}, Lfreemarker/core/t1;->l(Lfreemarker/core/t1;)Lfreemarker/core/t1;

    move-result-object v1

    check-cast v1, Lfreemarker/core/t0;

    invoke-virtual {v1, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v0, v3, Lmga;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object v2

    :try_start_0
    new-instance v3, Lfreemarker/template/Template;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const-string v5, "nameless_template"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lfreemarker/template/Template;->t0()Lxe1;

    move-result-object v2

    invoke-direct {v3, v1, v0, v2}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Lxe1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v3, p1}, Lfreemarker/core/Configurable;->V(Ljava/util/Locale;)V

    new-instance p1, Lp45$a;

    invoke-direct {p1, p0, v3}, Lp45$a;-><init>(Lp45;Lfreemarker/template/Template;)V

    return-object p1

    :goto_2
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v3, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    new-instance v6, Li0d;

    invoke-direct {v6, v0}, Li0d;-><init>(Ljava/lang/Throwable;)V

    const-string v7, "\n---end-message---"

    const-string v8, "\n\nThe failed expression:"

    const-string v2, "Template parsing with \"?"

    const-string v4, "\" has failed with this error:\n\n"

    const-string v5, "---begin-message---\n"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v1

    :cond_3
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    sget-object p0, Lp45;->k:Ljava/lang/Class;

    if-nez p0, :cond_4

    const-string p0, "freemarker.template.TemplateSequenceModel"

    invoke-static {p0}, Lp45;->h0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lp45;->k:Ljava/lang/Class;

    :cond_4
    sget-object v1, Lp45;->l:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "freemarker.template.TemplateScalarModel"

    invoke-static {v1}, Lp45;->h0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lp45;->l:Ljava/lang/Class;

    :cond_5
    filled-new-array {p0, v1}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "sequence or string"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method
