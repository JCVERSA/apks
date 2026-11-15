.class Lcom/mgtv/a/d/f/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a;->d(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$4;->a:Lcom/mgtv/a/d/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILdkd;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$4;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->b(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$4;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->c(Lcom/mgtv/a/d/f/a;)Lcom/mgmi/model/VASTAd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgmi/model/VASTAd;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$4;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->d(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$4;->a:Lcom/mgtv/a/d/f/a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    invoke-interface {p1, p0, p2}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method
