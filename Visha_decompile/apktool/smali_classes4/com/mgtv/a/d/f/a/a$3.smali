.class Lcom/mgtv/a/d/f/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a/a;->d(Lcom/mgmi/model/VASTAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a/a$3;->a:Lcom/mgtv/a/d/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a$3;->a:Lcom/mgtv/a/d/f/a/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a/a;->c(Lcom/mgtv/a/d/f/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a$3;->a:Lcom/mgtv/a/d/f/a/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a/a;->e(Lcom/mgtv/a/d/f/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/d/f/a/a$3;->a:Lcom/mgtv/a/d/f/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a/a;->d(Lcom/mgtv/a/d/f/a/a;)Landroid/widget/TextView;

    move-result-object p0

    new-instance v0, Ldkd;

    invoke-direct {v0}, Ldkd;-><init>()V

    invoke-interface {p1, p0, v0}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method
