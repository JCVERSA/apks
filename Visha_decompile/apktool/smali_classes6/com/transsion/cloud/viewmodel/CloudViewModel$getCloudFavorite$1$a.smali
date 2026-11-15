.class public final Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudFavorite$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgec$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudFavorite$1;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudFavorite$1$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/VishaOauthData;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudFavorite$1$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n0(Z)V

    const-string p1, "CloudViewModel"

    const-string v0, "getCloudFavorite refreshToken success"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->getMediaLibraryDataFlag()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudFavorite$1$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->s()V

    :cond_0
    return-void
.end method
