.class public Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public spaceCfg:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

.field public video:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
