.class public Lcom/hunantv/media/report/entity/CommonEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/hunantv/media/report/entity/a/b;
.end annotation


# instance fields
.field public abt:Ljava/lang/String;

.field public addrty:Ljava/lang/String;

.field public afmt:Ljava/lang/String;

.field public appgn:Ljava/lang/String;

.field public aver:Ljava/lang/String;

.field public cdpf:Ljava/lang/String;

.field public chash:Ljava/lang/String;

.field public dcpf:Ljava/lang/String;

.field public def:Ljava/lang/String;

.field public devci:Ljava/lang/String;

.field public dnst:Ljava/lang/String;

.field public drmdi:Ljava/lang/String;

.field public drmt:Ljava/lang/String;

.field public drmveri:Ljava/lang/String;

.field public dsc:Ljava/lang/String;

.field public emdid:Ljava/lang/String;

.field public encinfo:Ljava/lang/String;

.field public exCommonFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fhash:Ljava/lang/String;

.field public flowt:Ljava/lang/String;

.field public fstime:Ljava/lang/String;

.field public has_ad:Ljava/lang/String;

.field public imp4d:Ljava/lang/String;

.field public iskid:Ljava/lang/String;

.field public isndn:Ljava/lang/String;

.field public logver:Ljava/lang/String;

.field public mf:Ljava/lang/String;

.field public mod:Ljava/lang/String;

.field public mpx:Ljava/lang/String;

.field public net:Ljava/lang/String;

.field public p2ps:Ljava/lang/String;

.field public p2pt:Ljava/lang/String;

.field public pbox:Ljava/lang/String;

.field public pcdnf:Ljava/lang/String;

.field public plat:Ljava/lang/String;

.field public pptp:Ljava/lang/String;

.field public prottp:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public prst:Ljava/lang/String;

.field public psdkv:Ljava/lang/String;

.field public pshdrt:Ljava/lang/String;

.field public psuuid:Ljava/lang/String;

.field public ptp:Ljava/lang/String;

.field public rdtp:Ljava/lang/String;

.field public renvtp:Ljava/lang/String;

.field public reschg:Ljava/lang/String;

.field public retry:Ljava/lang/String;

.field public s2:Ljava/lang/String;

.field public s3:Ljava/lang/String;

.field public s4k:Ljava/lang/String;

.field public s4kmf:Ljava/lang/String;

.field public scid:Ljava/lang/String;

.field public sctp:Ljava/lang/String;

.field public service:Lcom/hunantv/media/report/entity/ServiceEntity;

.field public sfhdamf:Ljava/lang/String;

.field public sfhdhmf:Ljava/lang/String;

.field public shdrt:Ljava/lang/String;

.field public snum1:Ljava/lang/String;

.field public sptp:Ljava/lang/String;

.field public srpf:Ljava/lang/String;

.field public srplh:Ljava/lang/String;

.field public srpll:Ljava/lang/String;

.field public sshdr:Ljava/lang/String;

.field public suuid:Ljava/lang/String;

.field public svds:Ljava/lang/String;

.field public sver:Ljava/lang/String;

.field public svtp:Ljava/lang/String;

.field public tappgn:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public tldls:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vfmt:Ljava/lang/String;

.field public vfps:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public vsri:Ljava/lang/String;

.field public vtp:Ljava/lang/String;

.field public wadls:Ljava/lang/String;

.field public waev:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lcom/hunantv/media/report/entity/CommonEntity;->vtp:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/hunantv/media/report/entity/CommonEntity;->svtp:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/report/entity/CommonEntity;->proxy:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/report/entity/CommonEntity;->retry:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/report/entity/CommonEntity;->reschg:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/report/entity/CommonEntity;->sctp:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/report/entity/CommonEntity;->ptp:Ljava/lang/String;

    new-instance v2, Lcom/hunantv/media/report/entity/ServiceEntity;

    invoke-direct {v2}, Lcom/hunantv/media/report/entity/ServiceEntity;-><init>()V

    iput-object v2, p0, Lcom/hunantv/media/report/entity/CommonEntity;->service:Lcom/hunantv/media/report/entity/ServiceEntity;

    const-string v2, "n"

    iput-object v2, p0, Lcom/hunantv/media/report/entity/CommonEntity;->plat:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    iput-object v2, p0, Lcom/hunantv/media/report/entity/CommonEntity;->s3:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/report/entity/CommonEntity;->has_ad:Ljava/lang/String;

    iput-object v3, p0, Lcom/hunantv/media/report/entity/CommonEntity;->prst:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/report/entity/CommonEntity;->drmt:Ljava/lang/String;

    return-void
.end method
