.class public final synthetic La6a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La6a;->a:Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->w0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Lcom/transsion/dbdata/beans/SubtitleSettingData;)V

    return-void
.end method
