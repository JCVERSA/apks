.class Lcom/mgtv/a/d/e/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/e/a/a;->a(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a$1;->a:Lcom/mgtv/a/d/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/a/d/e/a/a$1;->a:Lcom/mgtv/a/d/e/a/a;

    invoke-static {p1}, Lcom/mgtv/a/d/e/a/a;->a(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/e/a/a$1;->a:Lcom/mgtv/a/d/e/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/e/a/a;->b(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mgtv/a/d/b/d;->a(Z)V

    :cond_0
    return-void
.end method
