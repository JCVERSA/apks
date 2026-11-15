.class public interface abstract Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract disable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract disable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract disableAll(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract disableOne(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract enable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract enable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getAospPackageInfo(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getCurrentRunningPackageInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
.end method

.method public abstract getInstalledPackageInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackageInfoList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;
    .param p1    # Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getThemeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getThemeFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract install(Ljava/io/File;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/io/File;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isIconThemeRunning()Z
.end method

.method public abstract isIconThemeRunning(I)Z
.end method

.method public abstract isThemeRunning(I)Z
.end method

.method public abstract isThemeRunning(II)Z
.end method

.method public abstract operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract uninstall(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method
