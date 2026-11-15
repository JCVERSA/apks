.class public Lcom/transsion/tools/fragments/SettingFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tools/fragments/PrivateRoomWarningFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->onShowPrivateRoomSwitchCheckedChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$g;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lzdc;->l:Z

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$g;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->c0(Lcom/transsion/tools/fragments/SettingFragment;)V

    return-void
.end method

.method public onClose()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lzdc;->l:Z

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$g;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->access$200(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "show_private_room"

    invoke-static {p0, v1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v1, 0x45f

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
