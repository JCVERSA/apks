.class public Ls87;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls87$a;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILt87;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls87;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static bridge synthetic a(Ls87;Lcom/transsion/widgetslib/view/OSLoadingView;)V
    .locals 0

    iput-object p1, p0, Ls87;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ls87;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls87;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    :cond_0
    return-void
.end method
