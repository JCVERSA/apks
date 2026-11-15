.class public Lcom/hunantv/media/report/entity/ServiceEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/hunantv/media/report/entity/a/a;
    a = "service"
.end annotation

.annotation runtime Lcom/hunantv/media/report/entity/a/b;
.end annotation


# instance fields
.field public acp:Ljava/lang/String;

.field public ap:Ljava/lang/String;

.field public bdid:Ljava/lang/String;

.field public bid:Ljava/lang/String;

.field public bsid:Ljava/lang/String;

.field public cdnip:Ljava/lang/String;

.field public cf:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public cpn:Ljava/lang/String;

.field public ct:Ljava/lang/String;

.field public datano:Ljava/lang/String;

.field public def:Ljava/lang/String;

.field public et:Ljava/lang/String;

.field public exServiceFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fpa:Ljava/lang/String;

.field public fpid:Ljava/lang/String;

.field public fpn:Ljava/lang/String;

.field public idx:Ljava/lang/String;

.field public isad:Ljava/lang/String;

.field public istry:Ljava/lang/String;

.field public pay:Ljava/lang/String;

.field public plid:Ljava/lang/String;

.field public pt:Ljava/lang/String;

.field public pver:Ljava/lang/String;

.field public refmdid:Ljava/lang/String;

.field public submit:Ljava/lang/String;

.field public switcher:Ljava/lang/String;

.field public td:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public vts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->bsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->pay:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->fpid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->ap:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->td:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->def:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->fpn:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->url:Ljava/lang/String;

    const-string v1, "2.1.1"

    iput-object v1, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->bid:Ljava/lang/String;

    const-string v1, "1.3.160217"

    iput-object v1, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->pver:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->vid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->cdnip:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->plid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->fpa:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->ct:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->idx:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->et:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->istry:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->isad:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->pt:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->cf:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->vts:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->switcher:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->submit:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->bdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ServiceEntity;->cpn:Ljava/lang/String;

    return-void
.end method
