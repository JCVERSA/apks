.class public Lcom/transsion/tools/fragments/SettingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsv3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->fingerPrintMethod(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->b:Lcom/transsion/tools/fragments/SettingFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->b:Lcom/transsion/tools/fragments/SettingFragment;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p2, p0, p1, v0}, Lcom/transsion/tools/fragments/SettingFragment;->Z(Lcom/transsion/tools/fragments/SettingFragment;Landroid/content/Context;IZ)V

    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->b:Lcom/transsion/tools/fragments/SettingFragment;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p2, p0, p1, v0}, Lcom/transsion/tools/fragments/SettingFragment;->Z(Lcom/transsion/tools/fragments/SettingFragment;Landroid/content/Context;IZ)V

    return-void
.end method

.method public d(II)V
    .locals 2

    const/16 p2, 0x16

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    invoke-static {v1}, Luv3;->g(Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->W(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {v0}, Luv3;->g(Z)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    invoke-static {v1}, Luv3;->g(Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$a;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->W(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {v0}, Luv3;->g(Z)V

    :cond_1
    :goto_0
    return-void
.end method
