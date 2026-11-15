.class Lcom/mgtv/a/a/b$8;
.super Lcom/mgmi/ViewGroup/a/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/a/b;->a(Landroid/content/Context;ILm5d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ViewGroup/a/a;

.field final synthetic b:Lm5d$b;

.field final synthetic c:Lcom/mgtv/a/a/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/a/b;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ViewGroup/a/a;Lm5d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/a/b$8;->c:Lcom/mgtv/a/a/b;

    iput-object p3, p0, Lcom/mgtv/a/a/b$8;->a:Lcom/mgmi/ViewGroup/a/a;

    iput-object p4, p0, Lcom/mgtv/a/a/b$8;->b:Lm5d$b;

    invoke-direct {p0, p2}, Lcom/mgmi/ViewGroup/a/a$b;-><init>(Lcom/mgmi/ViewGroup/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/ViewGroup/a/a$b;->a()V

    iget-object v0, p0, Lcom/mgtv/a/a/b$8;->a:Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/mgtv/a/a/b$8;->b:Lm5d$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lm5d$b;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/ViewGroup/a/a$b;->b()V

    iget-object v0, p0, Lcom/mgtv/a/a/b$8;->a:Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/mgtv/a/a/b$8;->b:Lm5d$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lm5d$b;->b()V

    :cond_0
    return-void
.end method
