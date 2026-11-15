.class Lcom/mgtv/a/c/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$8;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 1

    :try_start_0
    const-class p2, Lcom/mgmi/model/ADEventBean;

    invoke-static {p1, p2}, Lcom/mgadplus/netlib/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgadplus/netlib/json/a;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/ADEventBean;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/mgtv/a/c/b$8;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p2, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/mgtv/a/c/d;->l()Z

    move-result p2

    iput-boolean p2, p1, Lcom/mgmi/model/ADEventBean;->isFullScreen:Z

    iget-object p2, p0, Lcom/mgtv/a/c/b$8;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p2, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/mgmi/model/m;->m:I

    if-lez p2, :cond_0

    new-instance v0, Lcom/mgtv/a/c/b$8$1;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/a/c/b$8$1;-><init>(Lcom/mgtv/a/c/b$8;Lcom/mgmi/model/ADEventBean;)V

    int-to-long p0, p2

    invoke-static {v0, p0, p1}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/mgmi/e/d;->a()Lcom/mgmi/e/d;

    move-result-object p2

    iget-object p0, p0, Lcom/mgtv/a/c/b$8;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {p2, p1, p0}, Lcom/mgmi/e/d;->a(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
