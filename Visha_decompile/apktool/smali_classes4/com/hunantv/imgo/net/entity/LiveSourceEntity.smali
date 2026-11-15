.class public Lcom/hunantv/imgo/net/entity/LiveSourceEntity;
.super Lcom/hunantv/imgo/net/entity/JsonEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/net/entity/LiveSourceEntity$User;
    }
.end annotation


# instance fields
.field public activityId:Ljava/lang/String;

.field public activityName:Ljava/lang/String;

.field public activityType:I

.field public adParams:Ljava/lang/String;

.field public beginTime:Ljava/lang/String;

.field public cameraId:Ljava/lang/String;

.field public cameraName:Ljava/lang/String;

.field public chatFlag:Ljava/lang/String;

.field public chatKey:Ljava/lang/String;

.field public default_quality:Ljava/lang/String;

.field public default_quality_force:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public exp_v:Ljava/lang/String;

.field public isp2p:I

.field public playableErrCode:Ljava/lang/String;

.field public preview:I

.field public preview_range:I

.field public servertime:Ljava/lang/String;

.field public sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field public streamBeginTime:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public tips:Lcom/hunantv/imgo/net/entity/LiveCheckOutEntity;

.field public type:Ljava/lang/String;

.field public user:Lcom/hunantv/imgo/net/entity/LiveSourceEntity$User;

.field public vip:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/imgo/net/entity/JsonEntity;-><init>()V

    return-void
.end method
