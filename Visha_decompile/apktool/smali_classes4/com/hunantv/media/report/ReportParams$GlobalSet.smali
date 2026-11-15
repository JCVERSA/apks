.class public Lcom/hunantv/media/report/ReportParams$GlobalSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/ReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalSet"
.end annotation


# static fields
.field private static sAppVersionName:Ljava/lang/String;

.field private static sChannelId:Ljava/lang/String;

.field private static sDownloadSDKVersion:Ljava/lang/String;

.field private static sValidPackageNames:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadSDKVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sDownloadSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getImgovsrDeviceInfo()Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoVsrApi;->getVsrDeviceinfo()Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getsAppVersionName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getsChannelId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public static getsValidPackageNames()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sValidPackageNames:Ljava/lang/String;

    return-object v0
.end method

.method public static setDownloadSDKVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sDownloadSDKVersion:Ljava/lang/String;

    return-void
.end method

.method public static setsAppVersionName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sAppVersionName:Ljava/lang/String;

    return-void
.end method

.method public static setsChannelId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sChannelId:Ljava/lang/String;

    return-void
.end method

.method public static setsValidPackageNames(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/report/ReportParams$GlobalSet;->sValidPackageNames:Ljava/lang/String;

    return-void
.end method
