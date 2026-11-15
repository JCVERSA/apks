.class public Lrad$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrad;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.HDMI_AUDIO_PLUG"

    if-ne p0, p1, :cond_1

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 p1, -0x1

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/iab/omid/library/hisavana/adsession/OutputDeviceStatus;->NOT_DETECTED:Lcom/iab/omid/library/hisavana/adsession/OutputDeviceStatus;

    :goto_0
    invoke-static {p0}, Lrad;->b(Lcom/iab/omid/library/hisavana/adsession/OutputDeviceStatus;)Lcom/iab/omid/library/hisavana/adsession/OutputDeviceStatus;

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/iab/omid/library/hisavana/adsession/OutputDeviceStatus;->UNKNOWN:Lcom/iab/omid/library/hisavana/adsession/OutputDeviceStatus;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
