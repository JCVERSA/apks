.class Lcom/mgtv/a/d/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/b/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/b/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/b/a$3;->a:Lcom/mgtv/a/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/a$3;->a:Lcom/mgtv/a/d/b/a;

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    if-eqz p0, :cond_0

    new-instance v0, Ldkd;

    invoke-direct {v0}, Ldkd;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method
