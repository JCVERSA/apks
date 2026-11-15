.class public Lfreemarker/core/z$x;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "x"
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

    instance-of v0, v3, Lnga;

    if-eqz v0, :cond_0

    check-cast v3, Lnga;

    invoke-interface {v3}, Lnga;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, v3, Lcfa;

    if-eqz v0, :cond_1

    check-cast v3, Lcfa;

    invoke-interface {v3}, Lcfa;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, v3, Lpfa;

    if-eqz v0, :cond_2

    check-cast v3, Lpfa;

    invoke-interface {v3}, Lpfa;->size()I

    move-result p0

    :goto_0
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p1

    :cond_2
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    sget-object p0, Lfreemarker/core/z;->e:Ljava/lang/Class;

    if-nez p0, :cond_3

    const-string p0, "freemarker.template.TemplateHashModelEx"

    invoke-static {p0}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/z;->e:Ljava/lang/Class;

    :cond_3
    sget-object v1, Lfreemarker/core/z;->f:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "freemarker.template.TemplateSequenceModel"

    invoke-static {v1}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/z;->f:Ljava/lang/Class;

    :cond_4
    sget-object v4, Lfreemarker/core/z;->g:Ljava/lang/Class;

    if-nez v4, :cond_5

    const-string v4, "freemarker.template.TemplateCollectionModelEx"

    invoke-static {v4}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/core/z;->g:Ljava/lang/Class;

    :cond_5
    filled-new-array {p0, v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "extended-hash or sequence or extended collection"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method
