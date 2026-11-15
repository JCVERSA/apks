.class Lcom/mgtv/a/c/b$10;
.super Ly9d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/m;

.field final synthetic b:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;Lcom/mgmi/model/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$10;->b:Lcom/mgtv/a/c/b;

    iput-object p2, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    invoke-direct {p0}, Ly9d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/mgtv/a/c/b$10;->b:Lcom/mgtv/a/c/b;

    iget-object p1, p1, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/model/m;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    invoke-virtual {p1}, Lcom/mgmi/model/m;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    invoke-virtual {v0, p2}, Lcom/mgmi/model/m;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/a/c/b$10;->b:Lcom/mgtv/a/c/b;

    iget-object p2, p2, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    iget-object v0, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    new-instance v8, Ldkd;

    const v6, -0x3b864000    # -999.0f

    const v7, -0x3b864000    # -999.0f

    const v2, -0x3b864000    # -999.0f

    const v3, -0x3b864000    # -999.0f

    const v4, -0x3b864000    # -999.0f

    const v5, -0x3b864000    # -999.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ldkd;-><init>(FFFFFF)V

    invoke-interface {p2, v0, v8}, Lcom/mgtv/a/c/d;->a(Ljava/lang/Object;Ldkd;)V

    iget-object p0, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    invoke-virtual {p0, p1}, Lcom/mgmi/model/m;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/c/b$10;->a:Lcom/mgmi/model/m;

    invoke-virtual {p0}, Lcom/mgmi/model/m;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lg4d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/c/b$10;->b:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/d;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "new AdSize(-1, webViewHeight).toString()"

    return-object p0
.end method
