.class Lcom/mgtv/a/d/d/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/d/a/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/d/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/d/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/d/a/a$2;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/a/d/d/a/a$2;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {p1}, Lcom/mgtv/a/d/d/a/a;->d(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/d/a/a$2;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {p1}, Lcom/mgtv/a/d/d/a/a;->f(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/d/d/a/a$2;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/d/a/a;->e(Lcom/mgtv/a/d/d/a/a;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgtv/a/d/b/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
