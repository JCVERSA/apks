.class public final Lcom/transsion/hubsdk/api/provider/TranSettings$Global;
.super Landroid/provider/Settings$NameValueTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/provider/TranSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
