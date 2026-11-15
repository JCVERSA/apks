.class public Lcom/mgmi/e/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/e/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mgmi/net/bean/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mgmi/e/a/f;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    return-void
.end method

.method private g(Lcom/mgmi/net/bean/b;)V
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->e()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    const-string v0, "&du="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->a()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&ip="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "6"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&suuid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&from="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&vid="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    new-instance v0, Lcom/mgmi/e/a/e$2;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/e$2;-><init>(Lcom/mgmi/e/a/e;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/net/bean/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgmi/e/a/e;->g(Lcom/mgmi/net/bean/b;)V

    return-void
.end method

.method public b(Lcom/mgmi/net/bean/b;)V
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&suuid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&from="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&vid="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    new-instance v0, Lcom/mgmi/e/a/e$1;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/e$1;-><init>(Lcom/mgmi/e/a/e;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    return-void
.end method

.method public c(Lcom/mgmi/net/bean/b;)V
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->e()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    const-string v0, "&du="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->a()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&ip="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&z="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->h()Z

    move-result v1

    const-string v2, "&type="

    if-eqz v1, :cond_1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "5"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const-string v0, "&suuid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&from="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&vid="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    new-instance v0, Lcom/mgmi/e/a/e$3;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/e$3;-><init>(Lcom/mgmi/e/a/e;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Lcom/mgmi/net/bean/b;)V
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->e()I

    move-result v5

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v4, 0x1

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    const-string v0, "&du="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->a()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&ip="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&z="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&suuid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&from="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&vid="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    new-instance v0, Lcom/mgmi/e/a/e$4;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/e$4;-><init>(Lcom/mgmi/e/a/e;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/mgmi/net/bean/b;)V
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v4, 0x3

    const/16 v5, 0x9

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    const-string p1, "&vid="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&from="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    new-instance v0, Lcom/mgmi/e/a/e$5;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/e$5;-><init>(Lcom/mgmi/e/a/e;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lcom/mgmi/net/bean/b;)V
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/b;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x9

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    const-string p1, "&vid="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&from="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    new-instance v0, Lcom/mgmi/e/a/e$6;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/e$6;-><init>(Lcom/mgmi/e/a/e;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_1
    :goto_0
    return-void
.end method
