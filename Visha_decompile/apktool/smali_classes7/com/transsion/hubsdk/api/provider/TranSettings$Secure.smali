.class public final Lcom/transsion/hubsdk/api/provider/TranSettings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/provider/TranSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final BACK_GESTURE_INSET_SCALE_LEFT:Ljava/lang/String; = "back_gesture_inset_scale_left"

.field public static final BACK_GESTURE_INSET_SCALE_RIGHT:Ljava/lang/String; = "back_gesture_inset_scale_right"

.field public static final CROSS_PROFILE_CALENDAR_ENABLED:Ljava/lang/String; = "cross_profile_calendar_enabled"

.field public static final MANAGED_PROFILE_CONTACT_REMOTE_SEARCH:Ljava/lang/String; = "managed_profile_contact_remote_search"

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
