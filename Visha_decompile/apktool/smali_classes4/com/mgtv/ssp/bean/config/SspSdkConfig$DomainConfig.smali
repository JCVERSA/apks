.class public Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/bean/config/SspSdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DomainConfig"
.end annotation


# instance fields
.field public apiDomain:Ljava/lang/String;

.field public apperrLogDomain:Ljava/lang/String;

.field public bzDomain:Ljava/lang/String;

.field public cpDomain:Ljava/lang/String;

.field public dataDomain:Ljava/lang/String;

.field public dsunDomain:Ljava/lang/String;

.field public getTokenDomain:Ljava/lang/String;

.field public guidDomain:Ljava/lang/String;

.field public playLogDomain:Ljava/lang/String;

.field public retryDomain:Ljava/lang/String;

.field public supportDomain:Ljava/lang/String;

.field final synthetic this$0:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

.field public v2LogDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/bean/config/SspSdkConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;->this$0:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
