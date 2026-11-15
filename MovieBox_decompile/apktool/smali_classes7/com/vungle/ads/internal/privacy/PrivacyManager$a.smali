.class public abstract synthetic Lcom/vungle/ads/internal/privacy/PrivacyManager$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/privacy/PrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->values()[Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->DISABLE_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->FALLBACK:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x2

    .line 24
    aput v3, v0, v1

    .line 25
    .line 26
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->ALLOW_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v4, 0x3

    .line 33
    aput v4, v0, v1

    .line 34
    .line 35
    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$a;->$EnumSwitchMapping$0:[I

    .line 36
    .line 37
    invoke-static {}, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;->values()[Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v0, v0

    .line 42
    new-array v0, v0, [I

    .line 43
    .line 44
    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;->DISABLE_ID:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    aput v2, v0, v1

    .line 51
    .line 52
    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;->ALLOW_ID:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    aput v3, v0, v1

    .line 59
    .line 60
    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;->LEGACY:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    aput v4, v0, v1

    .line 67
    .line 68
    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$a;->$EnumSwitchMapping$1:[I

    .line 69
    .line 70
    return-void
.end method
