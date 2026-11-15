.class public Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageBean"
.end annotation


# instance fields
.field public height:Ljava/lang/Integer;

.field public url:Ljava/lang/String;

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResolution()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;->height:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method
