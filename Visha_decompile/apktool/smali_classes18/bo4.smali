.class public Lbo4;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lco4;


# direct methods
.method public constructor <init>(Lco4;)V
    .locals 0

    iput-object p1, p0, Lbo4;->b:Lco4;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public static synthetic b(Lbo4;)Lco4;
    .locals 0

    iget-object p0, p0, Lbo4;->b:Lco4;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbo4;->b:Lco4;

    invoke-static {v0}, Lco4;->a(Lco4;)Lpfa;

    move-result-object v0

    invoke-interface {v0}, Lpfa;->keys()Lbfa;

    move-result-object v0

    invoke-interface {v0}, Lbfa;->iterator()Lbga;

    move-result-object v0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lao4;

    invoke-direct {v1, p0, v0}, Lao4;-><init>(Lbo4;Lbga;)V

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public size()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lbo4;->b:Lco4;

    invoke-static {p0}, Lco4;->a(Lco4;)Lpfa;

    move-result-object p0

    invoke-interface {p0}, Lpfa;->size()I

    move-result p0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
