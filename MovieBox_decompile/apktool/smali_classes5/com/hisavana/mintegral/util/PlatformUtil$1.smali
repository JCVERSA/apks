.class Lcom/hisavana/mintegral/util/PlatformUtil$1;
.super Lcom/hisavana/common/bean/NativeAdWrapper;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/util/PlatformUtil;->getTAdNativeInfo(Lcom/mbridge/msdk/out/Campaign;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/bean/NativeAdWrapper<",
        "Lcom/mbridge/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/common/base/BaseNative;

.field final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;

.field final synthetic c:Lcom/mbridge/msdk/out/Campaign;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/out/Campaign;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->c:Lcom/mbridge/msdk/out/Campaign;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "destroy ad error:"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "mintegral PlatformUtil"

    .line 45
    .line 46
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public getTrackBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public isIconValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->c:Lcom/mbridge/msdk/out/Campaign;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public isImageValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->c:Lcom/mbridge/msdk/out/Campaign;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
