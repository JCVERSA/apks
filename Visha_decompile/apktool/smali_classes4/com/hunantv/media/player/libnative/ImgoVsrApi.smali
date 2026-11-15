.class public Lcom/hunantv/media/player/libnative/ImgoVsrApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static imgovsrDeviceInfo:Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _imgovsr_is_supported()Z
.end method

.method private static native getDeviceinfoFromImgoVsrApi()Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;
.end method

.method public static getVsrDeviceinfo()Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/libnative/ImgoVsrApi;->imgovsrDeviceInfo:Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;

    return-object v0
.end method

.method public static native imgovsr_get_version()Ljava/lang/String;
.end method

.method public static native imgovsr_get_vulkan_version()Ljava/lang/String;
.end method

.method public static imgovsr_is_supported()Z
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoVsrApi;->_imgovsr_is_supported()Z

    move-result v0

    return v0
.end method

.method public static updateVsrDeviceinfo()V
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/libnative/ImgoVsrApi;->imgovsrDeviceInfo:Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoVsrApi;->getDeviceinfoFromImgoVsrApi()Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/libnative/ImgoVsrApi;->imgovsrDeviceInfo:Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;

    :cond_0
    return-void
.end method
