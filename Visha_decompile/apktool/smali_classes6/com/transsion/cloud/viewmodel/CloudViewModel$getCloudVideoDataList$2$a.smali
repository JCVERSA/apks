.class public final Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgec$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->b:I

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->e:I

    iput-object p6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/VishaOauthData;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n0(Z)V

    const-string p1, "CloudViewModel"

    const-string v0, "getCloudVideoDataList refreshToken success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->b:I

    iget-object v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->d:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->e:I

    iget-object v6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2$a;->f:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->u(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
