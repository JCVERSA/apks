.class public final Lfle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:[Lrae;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfle;->a:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lfle;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lrae;

    iput-object p1, p0, Lfle;->c:[Lrae;

    return-void
.end method


# virtual methods
.method public final a(JLu4h;)V
    .locals 4

    invoke-virtual {p3}, Lu4h;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lu4h;->A()I

    move-result v0

    invoke-virtual {p3}, Lu4h;->A()I

    move-result v1

    invoke-virtual {p3}, Lu4h;->G()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object p0, p0, Lfle;->c:[Lrae;

    invoke-static {p1, p2, p3, p0}, Lj8e;->b(JLu4h;[Lrae;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lf9e;Lcle;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lfle;->c:[Lrae;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->a()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lf9e;->j(II)Lrae;

    move-result-object v3

    iget-object v4, p0, Lfle;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lerj;

    iget-object v5, v4, Lerj;->o:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Invalid closed caption MIME type provided: "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Ln7g;->e(ZLjava/lang/Object;)V

    new-instance v6, Lgpj;

    invoke-direct {v6}, Lgpj;-><init>()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v7, p0, Lfle;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v6, v5}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget v5, v4, Lerj;->e:I

    invoke-virtual {v6, v5}, Lgpj;->G(I)Lgpj;

    iget-object v5, v4, Lerj;->d:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget v5, v4, Lerj;->J:I

    invoke-virtual {v6, v5}, Lgpj;->u0(I)Lgpj;

    iget-object v4, v4, Lerj;->r:Ljava/util/List;

    invoke-virtual {v6, v4}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v6}, Lgpj;->K()Lerj;

    move-result-object v4

    invoke-interface {v3, v4}, Lrae;->f(Lerj;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
