.class public Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryBean"
.end annotation


# instance fields
.field public id:Ljava/lang/Integer;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;->name:Ljava/lang/String;

    return-object p0
.end method
