.class public Lpm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final synthetic c:Lpm0;


# direct methods
.method public constructor <init>(Lpm0;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lpm0$a;->c:Lpm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lpm0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lpm0;Ljava/lang/String;Lam0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lpm0$a;-><init>(Lpm0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lpm0$a;->c:Lpm0;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/j;->Y(III)V

    iget-object v1, p0, Lpm0$a;->c:Lpm0;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/j;->b0(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lpm0$a;->c:Lpm0;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v2, p0, Lpm0$a;->c:Lpm0;

    invoke-static {v2}, Lpm0;->i0(Lpm0;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpm0$a;->b:Ljava/lang/String;

    invoke-static {v2, v1, p1}, Ln0a;->M(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lpm0$a;->b:Ljava/lang/String;

    invoke-static {v2, v1, p1}, Ln0a;->S(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v1, "?"

    if-nez p1, :cond_1

    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lpm0$a;->c:Lpm0;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v0, "(...) argument #2 can\'t be a 0-length string."

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lpm0$a;->c:Lpm0;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v2, "(...) failed: "

    filled-new-array {v1, p0, v2, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object v0, p0, Lpm0$a;->c:Lpm0;

    invoke-static {v0}, Lpm0;->i0(Lpm0;)Z

    move-result v0

    iget-object p0, p0, Lpm0$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {p0, v1}, Ln0a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-static {p0, v1}, Ln0a;->Q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
