.class public final synthetic Lxpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd8$c;


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/ToolsFragment;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/widget/FrameLayout;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxpa;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    iput-object p2, p0, Lxpa;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lxpa;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lxpa;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    iget-object v1, p0, Lxpa;->b:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lxpa;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/tools/fragments/ToolsFragment;->l0(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/widget/FrameLayout;Landroid/os/Bundle;ILandroid/view/View;)V

    return-void
.end method
