.class public Lcom/mgmi/ViewGroup/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ViewGroup/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/ViewGroup/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mgmi/ViewGroup/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ViewGroup/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ViewGroup/a/a$b;->a:Lcom/mgmi/ViewGroup/a/a;

    return-void
.end method
