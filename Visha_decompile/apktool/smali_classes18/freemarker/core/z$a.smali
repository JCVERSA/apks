.class public abstract Lfreemarker/core/z$a;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
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

    invoke-virtual {p0, p1, v3}, Lfreemarker/core/z$a;->h0(Lfreemarker/core/Environment;Lzfa;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v3, Lfreemarker/template/a;

    if-eqz v0, :cond_2

    new-instance p0, Lfreemarker/template/SimpleScalar;

    check-cast v3, Lfreemarker/template/a;

    invoke-interface {v3}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    sget-object p0, Lfreemarker/core/z;->a:Ljava/lang/Class;

    if-nez p0, :cond_3

    const-string p0, "freemarker.template.TemplateNumberModel"

    invoke-static {p0}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/z;->a:Ljava/lang/Class;

    :cond_3
    sget-object v1, Lfreemarker/core/z;->b:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "freemarker.template.TemplateBooleanModel"

    invoke-static {v1}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/z;->b:Ljava/lang/Class;

    :cond_4
    filled-new-array {p0, v1}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "number or boolean"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method public abstract h0(Lfreemarker/core/Environment;Lzfa;)Lzfa;
.end method
