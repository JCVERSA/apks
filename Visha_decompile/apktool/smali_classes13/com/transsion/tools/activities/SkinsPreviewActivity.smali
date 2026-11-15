.class public Lcom/transsion/tools/activities/SkinsPreviewActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Landroid/os/Bundle;

.field public O:Lcom/transsion/tools/fragments/SkinsPreviewFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initFragment()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsPreviewActivity;->N:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u0(Landroid/os/Bundle;)Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->w0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsPreviewActivity;->O:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsPreviewActivity;->O:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "skin_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsPreviewActivity;->N:Landroid/os/Bundle;

    :cond_0
    invoke-static {p0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lydc;->g()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    sget p1, Lcom/transsion/tools/R$layout;->skin_preview_main:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsPreviewActivity;->initFragment()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->setDefaultWindowBackground()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getDefaultNightMode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    return-void
.end method

.method public setThemeWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->setDefaultWindowBackground()V

    return-void
.end method
