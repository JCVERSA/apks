.class public Lcom/transsion/tools/fragments/SettingFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->showLyricSettingDialog()V
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

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$h;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "setup_setuppage_autolyric_s"

    const-string v2, "state"

    invoke-static {v1, v2, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/transsion/playercommon/core/MainApp;->v(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$h;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_lyric_search_mode"

    invoke-static {v0, v1, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$h;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0, p2}, Lcom/transsion/tools/fragments/SettingFragment;->e0(Lcom/transsion/tools/fragments/SettingFragment;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
