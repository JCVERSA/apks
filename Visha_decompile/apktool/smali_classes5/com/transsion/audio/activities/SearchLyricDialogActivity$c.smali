.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/SearchLyricDialogActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$c;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lc07;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/audio/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$c;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    iget-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$c;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/transsion/audio/activities/AudioWebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$c;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->h0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->p0(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "https://www.google.com/search?q=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "web_url"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$string;->visha_search_lyric:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x4df

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method
