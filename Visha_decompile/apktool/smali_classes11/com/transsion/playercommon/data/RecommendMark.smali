.class public Lcom/transsion/playercommon/data/RecommendMark;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/data/RecommendMark$Event;
    }
.end annotation


# instance fields
.field private appid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appid"
    .end annotation
.end field

.field private brand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field private cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cnt"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "events"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/playercommon/data/RecommendMark$Event;",
            ">;"
        }
    .end annotation
.end field

.field private gaid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gaid"
    .end annotation
.end field

.field private hostid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hostid"
    .end annotation
.end field

.field private ins:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ins"
    .end annotation
.end field

.field private isfl:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isfl"
    .end annotation
.end field

.field private lang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field private openid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openid"
    .end annotation
.end field

.field private osv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osv"
    .end annotation
.end field

.field private pkg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkg"
    .end annotation
.end field

.field private sdkv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkv"
    .end annotation
.end field

.field private tpmsid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tpmsid"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field private vaid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vaid"
    .end annotation
.end field

.field private vc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vc"
    .end annotation
.end field

.field private vn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vn"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public getCity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->city:Ljava/lang/String;

    return-object p0
.end method

.method public getCnt()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->cnt:Ljava/lang/Integer;

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->country:Ljava/lang/String;

    return-object p0
.end method

.method public getEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/playercommon/data/RecommendMark$Event;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->events:Ljava/util/List;

    return-object p0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->gaid:Ljava/lang/String;

    return-object p0
.end method

.method public getHostid()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->hostid:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIns()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->ins:Ljava/lang/String;

    return-object p0
.end method

.method public getIsfl()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->isfl:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->openid:Ljava/lang/String;

    return-object p0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->osv:Ljava/lang/String;

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->sdkv:Ljava/lang/String;

    return-object p0
.end method

.method public getTpmsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->tpmsid:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->vaid:Ljava/lang/String;

    return-object p0
.end method

.method public getVc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->vc:Ljava/lang/String;

    return-object p0
.end method

.method public getVn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->vn:Ljava/lang/String;

    return-object p0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->appid:Ljava/lang/String;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->brand:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->city:Ljava/lang/String;

    return-void
.end method

.method public setCnt(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->cnt:Ljava/lang/Integer;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->country:Ljava/lang/String;

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/playercommon/data/RecommendMark$Event;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->events:Ljava/util/List;

    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->gaid:Ljava/lang/String;

    return-void
.end method

.method public setHostid(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->hostid:Ljava/lang/Integer;

    return-void
.end method

.method public setIns(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->ins:Ljava/lang/String;

    return-void
.end method

.method public setIsfl(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->isfl:Ljava/lang/Integer;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->lang:Ljava/lang/String;

    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->openid:Ljava/lang/String;

    return-void
.end method

.method public setOsv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->osv:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setSdkv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->sdkv:Ljava/lang/String;

    return-void
.end method

.method public setTpmsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->tpmsid:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->vaid:Ljava/lang/String;

    return-void
.end method

.method public setVc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->vc:Ljava/lang/String;

    return-void
.end method

.method public setVn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/RecommendMark;->vn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendMark{sdkv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/data/RecommendMark;->sdkv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", events="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->events:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ins=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->ins:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isfl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->isfl:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hostid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->hostid:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cnt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->cnt:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", vn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->vn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->appid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", openid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->openid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tpmsid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->tpmsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vaid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->vaid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lang=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->lang:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->vc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gaid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->gaid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", osv=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->osv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/RecommendMark;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brand=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/data/RecommendMark;->brand:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
