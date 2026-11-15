.class final Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$NoOpThemeManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoOpThemeManagerAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$NoOpThemeManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public disable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public disable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 2
    return-void
.end method

.method public disableAll(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public disableOne(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public enable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public enable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 2
    return-void
.end method

.method public getAospPackageInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentRunningPackageInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstalledPackageInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstalledPackageInfoList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public install(Ljava/io/File;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public isIconThemeRunning()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public isIconThemeRunning(I)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public isThemeRunning(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public isThemeRunning(II)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method
