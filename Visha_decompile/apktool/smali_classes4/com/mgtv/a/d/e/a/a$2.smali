.class Lcom/mgtv/a/d/e/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/e/a/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/e/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a$2;->a:Lcom/mgtv/a/d/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/a/d/e/a/a$2;->a:Lcom/mgtv/a/d/e/a/a;

    invoke-static {p1}, Lcom/mgtv/a/d/e/a/a;->c(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/e/a/a$2;->a:Lcom/mgtv/a/d/e/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/e/a/a;->d(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "toVip"

    invoke-interface {p0, p1, v0}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
