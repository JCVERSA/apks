.class public Lcom/transsion/tools/fragments/SettingFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->showSimultaneousSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$i;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/transsion/playercommon/core/MainApp;->x(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$i;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "simultaneous_download_mode"

    invoke-static {v0, v1, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$i;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-virtual {p0, p2}, Lcom/transsion/tools/fragments/SettingFragment;->updateSimultaneousSetting(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {p2}, Lp06;->U(I)V

    return-void
.end method
