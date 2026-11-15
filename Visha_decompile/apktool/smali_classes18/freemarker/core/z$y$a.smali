.class public Lfreemarker/core/z$y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmga;
.implements Lxfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z$y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lfreemarker/template/a;

.field public final c:Lfreemarker/core/Environment;

.field public final synthetic d:Lfreemarker/core/z$y;


# direct methods
.method public constructor <init>(Lfreemarker/core/z$y;Lfreemarker/template/a;Lfreemarker/core/Environment;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/z$y$a;->d:Lfreemarker/core/z$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/z$y$a;->b:Lfreemarker/template/a;

    iput-object p3, p0, Lfreemarker/core/z$y$a;->c:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z$y$a;->d:Lfreemarker/core/z$y;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object p0, p0, Lfreemarker/core/z$y$a;->b:Lfreemarker/template/a;

    invoke-interface {p0}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z$y$a;->b:Lfreemarker/template/a;

    instance-of v1, v0, Lmga;

    if-eqz v1, :cond_0

    check-cast v0, Lmga;

    invoke-interface {v0}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lfreemarker/core/z$y$a;->c:Lfreemarker/core/Environment;

    invoke-interface {v0}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lfreemarker/core/Configurable;->e(ZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
