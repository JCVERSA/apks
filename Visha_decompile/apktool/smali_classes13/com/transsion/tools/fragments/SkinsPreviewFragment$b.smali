.class public Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt03$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SkinsPreviewFragment;->l0(Landroid/view/View;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/SkinsMenu;

.field public final synthetic b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Lcom/transsion/dbdata/beans/SkinsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->a:Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;Lcom/transsion/dbdata/beans/SkinsMenu;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->k(Lcom/transsion/dbdata/beans/SkinsMenu;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->j()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->i()V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->l(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lgp9;

    invoke-direct {v0, p0}, Lgp9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    new-instance v0, Ldp9;

    invoke-direct {v0, p0, p1}, Ldp9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, Lep9;

    invoke-direct {v0, p0}, Lep9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->a:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "SkinsPreview_Fragment"

    const-string p1, "downloadFinish -- the current resource does not match the theme"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->a:Lcom/transsion/dbdata/beans/SkinsMenu;

    new-instance v0, Lfp9;

    invoke-direct {v0, p0, p2, p1}, Lfp9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;Lcom/transsion/dbdata/beans/SkinsMenu;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic i()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->d0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V

    return-void
.end method

.method public final synthetic j()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->X(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->X(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    sget v0, Lcom/transsion/tools/R$string;->download_failed:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->T(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final synthetic k(Lcom/transsion/dbdata/beans/SkinsMenu;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/ThemeData;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2}, Lcom/transsion/dbdata/beans/ThemeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->darkMode:I

    iput p2, v0, Lcom/transsion/dbdata/beans/ThemeData;->darkMode:I

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p2}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->g0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "skin_theme"

    invoke-static {p2, v1, v0}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    sget p2, Lcom/transsion/tools/R$string;->theme_toast:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->c0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/tools/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public final synthetic l(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->W(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->W(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    :cond_0
    return-void
.end method
