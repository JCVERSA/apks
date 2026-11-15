.class public Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bEnablePlay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_play"
    .end annotation
.end field

.field public bUserIsVip:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_is_vip"
    .end annotation
.end field

.field public bVideoSerialIsPay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_is_pay"
    .end annotation
.end field

.field public userAuthStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_auth_status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoAuthResult{bEnablePlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;->bEnablePlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bVideoSerialIsPay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;->bVideoSerialIsPay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bUserIsVip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;->bUserIsVip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userAuthStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;->userAuthStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
