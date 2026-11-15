.class public Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-static {v0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->x0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-virtual {v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$array;->location_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-static {v0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->y0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object v0

    iput p1, v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-static {p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->y0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->A0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    return-void
.end method
