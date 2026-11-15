.class Lcom/mgtv/a/a/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/a/b;->a(Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/VASTAd;

.field final synthetic b:Ldkd;

.field final synthetic c:Lcom/mgmi/model/Clicks;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mgtv/a/a/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/a/b;Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/a/b$6;->e:Lcom/mgtv/a/a/b;

    iput-object p2, p0, Lcom/mgtv/a/a/b$6;->a:Lcom/mgmi/model/VASTAd;

    iput-object p3, p0, Lcom/mgtv/a/a/b$6;->b:Ldkd;

    iput-object p4, p0, Lcom/mgtv/a/a/b$6;->c:Lcom/mgmi/model/Clicks;

    iput-object p5, p0, Lcom/mgtv/a/a/b$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/a/b$6;->e:Lcom/mgtv/a/a/b;

    iget-object v1, p0, Lcom/mgtv/a/a/b$6;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v1}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->f(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/b$6;->b:Ldkd;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    iget-object v1, p0, Lcom/mgtv/a/a/b$6;->e:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->a(Lcom/mgtv/a/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    iget-object v1, p0, Lcom/mgtv/a/a/b$6;->c:Lcom/mgmi/model/Clicks;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mgtv/a/a/b$6;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/model/Clicks;->getDeepLinkReport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/b$6;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    :cond_0
    iget-object v1, p0, Lcom/mgtv/a/a/b$6;->e:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->d(Lcom/mgtv/a/a/b;)Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/b$6;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    return-void
.end method
