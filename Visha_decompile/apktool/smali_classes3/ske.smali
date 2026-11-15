.class public final Lske;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:[Lrae;

.field public final d:Lz2i;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lske;->a:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lske;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lrae;

    iput-object p1, p0, Lske;->c:[Lrae;

    new-instance p1, Lz2i;

    new-instance p2, Lrke;

    invoke-direct {p2, p0}, Lrke;-><init>(Lske;)V

    invoke-direct {p1, p2}, Lz2i;-><init>(Lb2i;)V

    iput-object p1, p0, Lske;->d:Lz2i;

    return-void
.end method

.method public static synthetic a(Lske;JLu4h;)V
    .locals 0

    iget-object p0, p0, Lske;->c:[Lrae;

    invoke-static {p1, p2, p3, p0}, Lj8e;->a(JLu4h;[Lrae;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lske;->d:Lz2i;

    invoke-virtual {p0}, Lz2i;->d()V

    return-void
.end method

.method public final c(JLu4h;)V
    .locals 0

    iget-object p0, p0, Lske;->d:Lz2i;

    invoke-virtual {p0, p1, p2, p3}, Lz2i;->b(JLu4h;)V

    return-void
.end method

.method public final d(Lf9e;Lcle;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lske;->c:[Lrae;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->a()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lf9e;->j(II)Lrae;

    move-result-object v3

    iget-object v4, p0, Lske;->a:Ljava/util/List;

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

    iget-object v6, v4, Lerj;->a:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v7, Lgpj;

    invoke-direct {v7}, Lgpj;-><init>()V

    invoke-virtual {v7, v6}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v6, p0, Lske;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v7, v5}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget v5, v4, Lerj;->e:I

    invoke-virtual {v7, v5}, Lgpj;->G(I)Lgpj;

    iget-object v5, v4, Lerj;->d:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget v5, v4, Lerj;->J:I

    invoke-virtual {v7, v5}, Lgpj;->u0(I)Lgpj;

    iget-object v4, v4, Lerj;->r:Ljava/util/List;

    invoke-virtual {v7, v4}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v7}, Lgpj;->K()Lerj;

    move-result-object v4

    invoke-interface {v3, v4}, Lrae;->f(Lerj;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lske;->d:Lz2i;

    invoke-virtual {p0}, Lz2i;->d()V

    return-void
.end method

.method public final f(I)V
    .locals 0

    iget-object p0, p0, Lske;->d:Lz2i;

    invoke-virtual {p0, p1}, Lz2i;->e(I)V

    return-void
.end method
