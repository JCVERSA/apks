.class Lcom/mgtv/a/d/a/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/LayoutInflater;Lcom/mgmi/model/VASTAd;Z)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/a/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a$2;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$2;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/a/a/a;->f(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a$2;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/a/a/a;->g(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    new-instance v0, Ldkd;

    invoke-direct {v0}, Ldkd;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method
