.class Lcom/mgtv/a/a/b$3;
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

.field final synthetic b:Lcom/mgtv/a/a/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/a/b;Ldkd;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/a/b$3;->b:Lcom/mgtv/a/a/b;

    iput-object p2, p0, Lcom/mgtv/a/a/b$3;->a:Ldkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    iget-object v1, p0, Lcom/mgtv/a/a/b$3;->a:Ldkd;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    iget-object v1, p0, Lcom/mgtv/a/a/b$3;->b:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->a(Lcom/mgtv/a/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    iget-object v1, p0, Lcom/mgtv/a/a/b$3;->b:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->d(Lcom/mgtv/a/a/b;)Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/b$3;->b:Lcom/mgtv/a/a/b;

    invoke-static {p0}, Lcom/mgtv/a/a/b;->c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    return-void
.end method
