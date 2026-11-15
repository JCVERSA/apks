.class public Lfreemarker/core/z$y;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/z$y$c;,
        Lfreemarker/core/z$y$b;,
        Lfreemarker/core/z$y$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 7

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    instance-of v0, v3, Lhga;

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/core/z$y$c;

    check-cast v3, Lhga;

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {v3, v1}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lfreemarker/core/z$y$c;-><init>(Lfreemarker/core/z$y;Ljava/lang/Number;Lfreemarker/core/Environment;)V

    return-object v0

    :cond_0
    instance-of v0, v3, Lffa;

    if-eqz v0, :cond_1

    check-cast v3, Lffa;

    new-instance v0, Lfreemarker/core/z$y$b;

    invoke-direct {v0, p0, v3, p1}, Lfreemarker/core/z$y$b;-><init>(Lfreemarker/core/z$y;Lffa;Lfreemarker/core/Environment;)V

    return-object v0

    :cond_1
    instance-of v0, v3, Lfreemarker/template/SimpleScalar;

    if-eqz v0, :cond_2

    return-object v3

    :cond_2
    instance-of v0, v3, Lfreemarker/template/a;

    if-eqz v0, :cond_3

    new-instance v0, Lfreemarker/core/z$y$a;

    check-cast v3, Lfreemarker/template/a;

    invoke-direct {v0, p0, v3, p1}, Lfreemarker/core/z$y$a;-><init>(Lfreemarker/core/z$y;Lfreemarker/template/a;Lfreemarker/core/Environment;)V

    return-object v0

    :cond_3
    instance-of v0, v3, Lmga;

    if-eqz v0, :cond_4

    new-instance p0, Lfreemarker/template/SimpleScalar;

    check-cast v3, Lmga;

    invoke-interface {v3}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v3, Lrd0;

    if-eqz v0, :cond_5

    new-instance p0, Lfreemarker/template/SimpleScalar;

    check-cast v3, Lrd0;

    invoke-static {v3}, La0d;->a(Lrd0;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    sget-object p0, Lfreemarker/core/z;->a:Ljava/lang/Class;

    if-nez p0, :cond_6

    const-string p0, "freemarker.template.TemplateNumberModel"

    invoke-static {p0}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/z;->a:Ljava/lang/Class;

    :cond_6
    sget-object v1, Lfreemarker/core/z;->h:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "freemarker.template.TemplateDateModel"

    invoke-static {v1}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/z;->h:Ljava/lang/Class;

    :cond_7
    sget-object v4, Lfreemarker/core/z;->b:Ljava/lang/Class;

    if-nez v4, :cond_8

    const-string v4, "freemarker.template.TemplateBooleanModel"

    invoke-static {v4}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/core/z;->b:Ljava/lang/Class;

    :cond_8
    sget-object v5, Lfreemarker/core/z;->i:Ljava/lang/Class;

    if-nez v5, :cond_9

    const-string v5, "freemarker.template.TemplateScalarModel"

    invoke-static {v5}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lfreemarker/core/z;->i:Ljava/lang/Class;

    :cond_9
    filled-new-array {p0, v1, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "number, date, boolean or string"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method
