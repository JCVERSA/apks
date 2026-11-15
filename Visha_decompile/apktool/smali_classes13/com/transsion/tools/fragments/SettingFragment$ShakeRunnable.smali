.class Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/fragments/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakeRunnable"
.end annotation


# instance fields
.field private shakeView:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;Lif9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;-><init>(Lcom/transsion/tools/fragments/SettingFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->shakeView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    iget v0, v0, Lcom/transsion/tools/fragments/SettingFragment;->mCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SettingFragment;->X(Lcom/transsion/tools/fragments/SettingFragment;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/tools/fragments/SettingFragment;->Y(Lcom/transsion/tools/fragments/SettingFragment;Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->shakeView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {v2}, Lcom/transsion/tools/fragments/SettingFragment;->X(Lcom/transsion/tools/fragments/SettingFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/transsion/playercommon/R$drawable;->settings_menu_item_press:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/playercommon/R$drawable;->os_press_primary_bg_normal:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    iget v1, v0, Lcom/transsion/tools/fragments/SettingFragment;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/transsion/tools/fragments/SettingFragment;->mCount:I

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->b0(Lcom/transsion/tools/fragments/SettingFragment;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->shakeView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->this$0:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/playercommon/R$drawable;->settings_menu_item_bg:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setShakeView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$ShakeRunnable;->shakeView:Landroid/view/View;

    return-void
.end method
