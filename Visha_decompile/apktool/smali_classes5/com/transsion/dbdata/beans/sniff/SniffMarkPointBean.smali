.class public Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;,
        Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    }
.end annotation


# instance fields
.field private event_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_name"
    .end annotation
.end field

.field private markPointParams:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buried_poin_params"
    .end annotation
.end field

.field private tid:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->tid:Ljava/lang/Long;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->event_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->event_name:Ljava/lang/String;

    return-object p0
.end method

.method public getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->markPointParams:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    return-object p0
.end method

.method public getTid()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->tid:Ljava/lang/Long;

    return-object p0
.end method

.method public setEvent_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->event_name:Ljava/lang/String;

    return-void
.end method

.method public setMarkPointParams(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->markPointParams:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    return-void
.end method

.method public setTid(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->tid:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SniffMarkPointBean{tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->tid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->event_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", markPointParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->markPointParams:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
