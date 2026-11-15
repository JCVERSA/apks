.class public Lcom/hunantv/media/report/entity/VVEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public act:Ljava/lang/String;

.field public cdtp:Ljava/lang/String;

.field public cip:Ljava/lang/String;

.field public common:Lcom/hunantv/media/report/entity/CommonEntity;

.field public dectp:Ljava/lang/String;

.field public dlpt:Ljava/lang/String;

.field public hddc:Ljava/lang/String;

.field public ltst:Ljava/lang/String;

.field public mp:Ljava/lang/String;

.field public netd:Ljava/lang/String;

.field public t1:Ljava/lang/String;

.field public t2:Ljava/lang/String;

.field public t3:Ljava/lang/String;

.field public t4:Ljava/lang/String;

.field public t5:Ljava/lang/String;

.field public t6:Ljava/lang/String;

.field public vsinfo:Ljava/lang/String;

.field public vsraver:Ljava/lang/String;

.field public vsrbugft:Ljava/lang/String;

.field public vsrdid:Ljava/lang/String;

.field public vsrdn:Ljava/lang/String;

.field public vsrdt:Ljava/lang/String;

.field public vsrdver:Ljava/lang/String;

.field public vsrfp16int8ft:Ljava/lang/String;

.field public vsrhardlt:Ljava/lang/String;

.field public vsrsubg:Ljava/lang/String;

.field public vsrver:Ljava/lang/String;

.field public vsrvid:Ljava/lang/String;

.field public vsrvkver:Ljava/lang/String;

.field public vvbt:Ljava/lang/String;

.field public vvs:Ljava/lang/String;

.field public vvt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pvv"

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->act:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setImgovsrDeviceInfo(Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_api_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsraver:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_driver_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrdver:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_vendor_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrvid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_device_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_device_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrdn:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_gpu_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrdt:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_hard_limit:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrhardlt:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_support_subgroup:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrsubg:Ljava/lang/String;

    iget-object v0, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_bug_feature:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrbugft:Ljava/lang/String;

    iget-object p1, p1, Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;->vsr_fp16_int8_feature:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/report/entity/VVEntity;->vsrfp16int8ft:Ljava/lang/String;

    return-void
.end method
