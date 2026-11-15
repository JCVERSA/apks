.class public final Lcom/transsion/hubsdk/api/provider/TranSettings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/provider/TranSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final VOLUME_ACCESSIBILITY:Ljava/lang/String; = "volume_a11y"

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_ASSISTANT:Ljava/lang/String; = "volume_assistant"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS_INT:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, "volume_a11y"

    const-string v11, "volume_assistant"

    const-string v0, "volume_voice"

    const-string v1, "volume_system"

    const-string v2, "volume_ring"

    const-string v3, "volume_music"

    const-string v4, "volume_alarm"

    const-string v5, "volume_notification"

    const-string v6, "volume_bluetooth_sco"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/provider/TranSettings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
