.class public Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/entity/MobileConfigEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public autoStop:I

.field public huawei_p2p_lazy:Ljava/lang/String;

.field public huawei_render_type:Ljava/lang/String;

.field public p2p:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$P2P;

.field public plPlayType:I

.field public play_merge:Ljava/lang/String;

.field public qualityEnhance:I

.field public seekImg:I

.field public speedPlay:I

.field public tcp_keeplive:Ljava/lang/String;

.field public topBarSwitch:Ljava/lang/String;

.field public unableRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
