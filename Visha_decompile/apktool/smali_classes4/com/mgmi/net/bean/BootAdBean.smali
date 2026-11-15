.class public Lcom/mgmi/net/bean/BootAdBean;
.super Lcom/mgmi/net/bean/MgmiBaseBean;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4618f3a806a4f1e1L


# instance fields
.field public bidResult:Lcom/mgmi/e/a;

.field public config:Lcom/mgmi/net/bean/SdkConfigData;

.field public data:Lcom/mgmi/net/bean/BootDataItem;

.field public err_code:I

.field public err_msg:Ljava/lang/String;

.field public isWarmBoot:Z

.field public platform:Ljava/lang/String;

.field public reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

.field public roll_time:I

.field public success:Ljava/lang/String;

.field public thirdPartSdkCostItem:Lcom/mgmi/net/bean/d;

.field public trace:Ljava/lang/String;

.field public uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/net/bean/MgmiBaseBean;-><init>()V

    return-void
.end method
