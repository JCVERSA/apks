.class Lcom/mgtv/thirdsdk/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/thirdsdk/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/a$1;->a:Lcom/mgtv/thirdsdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/a$1;->a:Lcom/mgtv/thirdsdk/a/a;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/a/a;->a()V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/a$1;->a:Lcom/mgtv/thirdsdk/a/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/a;->a(Lcom/mgtv/thirdsdk/a/a;)Lcom/mgtv/thirdsdk/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/a$1;->a:Lcom/mgtv/thirdsdk/a/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/a;->a(Lcom/mgtv/thirdsdk/a/a;)Lcom/mgtv/thirdsdk/a/a/a;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a$1;->a:Lcom/mgtv/thirdsdk/a/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/a;->b(Lcom/mgtv/thirdsdk/a/a;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b;->f:Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    invoke-interface {p1, p0}, Lcom/mgtv/thirdsdk/a/a/a;->onDlnaPrepare(Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/a$1;->a:Lcom/mgtv/thirdsdk/a/a;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/a/a;->a(Lcom/mgtv/thirdsdk/a/a;)Lcom/mgtv/thirdsdk/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/a$1;->a:Lcom/mgtv/thirdsdk/a/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/a;->a(Lcom/mgtv/thirdsdk/a/a;)Lcom/mgtv/thirdsdk/a/a/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/a;->onDlnaError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
