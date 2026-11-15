.class public Lcom/mgmi/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgmi/e/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/e/a/a;->a:Lcom/mgmi/e/a/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/model/d;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "click"

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgmi/e/a/a;->a:Lcom/mgmi/e/a/d;

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/u;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/u;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgmi/e/a/a;->a:Lcom/mgmi/e/a/d;

    invoke-virtual {p1}, Lcom/mgmi/model/u;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/model/d;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "favor"

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/mgmi/e/a/a;->a:Lcom/mgmi/e/a/d;

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/mgmi/model/d;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "start"

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/mgmi/e/a/a;->a:Lcom/mgmi/e/a/d;

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/mgmi/model/d;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "close"

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/mgmi/e/a/a;->a:Lcom/mgmi/e/a/d;

    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
