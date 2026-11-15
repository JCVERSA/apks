.class Lcom/mgtv/a/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/a/b;->b(Landroid/view/View;Ldkd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldkd;

.field final synthetic b:Lcom/mgmi/model/Clicks;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mgtv/a/a/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/a/b;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    iput-object p2, p0, Lcom/mgtv/a/a/b$1;->a:Ldkd;

    iput-object p3, p0, Lcom/mgtv/a/a/b$1;->b:Lcom/mgmi/model/Clicks;

    iput-object p4, p0, Lcom/mgtv/a/a/b$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->f(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->a:Ldkd;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->a(Lcom/mgtv/a/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->a:Ldkd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->b:Lcom/mgmi/model/Clicks;

    invoke-virtual {v1}, Lcom/mgmi/model/Clicks;->getDeepLinkReport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/b$1;->a:Ldkd;

    invoke-virtual {v2}, Ldkd;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mgtv/a/a/b$1;->a:Ldkd;

    invoke-virtual {v2}, Ldkd;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/mgtv/a/a/b$1;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->b:Lcom/mgmi/model/Clicks;

    invoke-virtual {v1}, Lcom/mgmi/model/Clicks;->getDeepLinkReport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/b$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    :goto_1
    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->a:Ldkd;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ldkd;->e()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->b(Lcom/mgtv/a/a/b;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getShow_type()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getShow_type()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->d(Lcom/mgtv/a/a/b;)Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {p0}, Lcom/mgtv/a/a/b;->c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->g(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->d(Lcom/mgtv/a/a/b;)Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/b$1;->d:Lcom/mgtv/a/a/b;

    invoke-static {p0}, Lcom/mgtv/a/a/b;->c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_4
    :goto_2
    return-void
.end method
