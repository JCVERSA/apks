.class Lde/a$a;
.super Lcom/hisavana/common/bean/NativeAdWrapper;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/a;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;IILcom/hisavana/common/base/BaseNative;Lb7/c;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/common/base/BaseNative;

.field public final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;

.field public final synthetic c:Lb7/c;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lb7/c;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    iput-object p4, p0, Lde/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 4
    .line 5
    iput-object p5, p0, Lde/a$a;->c:Lb7/c;

    .line 6
    .line 7
    iput-object p6, p0, Lde/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lde/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "destroy ad error:"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "Eagllwin"

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
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

.method public handleClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lde/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lj7/a;->b(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 7
    .line 8
    iget-object v1, p0, Lde/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public isExpired()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lde/a$a;->c:Lb7/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lb7/c;->u(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public isIconValid()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isImageValid()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lde/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMatchVulgarBrand()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->isIconAd()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lde/a$a;->isIconValid()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lde/a$a;->isImageValid()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    return v0
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/hisavana/common/interfacz/AdShowListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lde/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lde/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 12
    .line 13
    new-instance v1, Lde/a$a$a;

    .line 14
    .line 15
    invoke-direct {v1, p0, p2}, Lde/a$a$a;-><init>(Lde/a$a;Lcom/hisavana/common/interfacz/AdShowListener;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lj7/a;->c(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/view/View;Lcom/cloud/hisavana/sdk/api/listener/e;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/base/BaseNative;->trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public trackRecommendShow(Ljava/util/List;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNative;->trackRecommendShow(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method
