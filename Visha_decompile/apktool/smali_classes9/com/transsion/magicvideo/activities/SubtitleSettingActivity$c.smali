.class public Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$c;
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

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$c;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$c;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-static {v0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->y0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object v0

    div-int/lit8 p1, p1, 0x32

    iput p1, v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$c;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->F0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    return-void
.end method
