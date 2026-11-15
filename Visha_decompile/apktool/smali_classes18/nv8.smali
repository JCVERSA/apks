.class public Lnv8;
.super Llv8$d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Llv8$c;


# direct methods
.method public constructor <init>(Llv8$c;)V
    .locals 0

    iput-object p1, p0, Lnv8;->b:Llv8$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Llv8$d;-><init>(Lkv8;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lnv8;->b:Llv8$c;

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->O0()Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lnv8;->b:Llv8$c;

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lfreemarker/core/Environment;

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->m1(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method
