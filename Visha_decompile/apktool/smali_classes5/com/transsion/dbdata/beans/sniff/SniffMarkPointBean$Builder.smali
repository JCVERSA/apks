.class public Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private code:I

.field private domain_name:Ljava/lang/String;

.field private duration:Ljava/lang/Integer;

.field private errorCode:Ljava/lang/Integer;

.field private event_name:Ljava/lang/String;

.field private js_type:Ljava/lang/String;

.field private mainUrl:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private script_url:Ljava/lang/String;

.field private status:Ljava/lang/Integer;

.field private tid:Ljava/lang/Long;

.field private type:I

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->tid:Ljava/lang/Long;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->event_name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->status:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->errorCode:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->mainUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->videoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->js_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->domain_name:Ljava/lang/String;

    iput v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->code:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->type:I

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->script_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->tid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->setTid(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->event_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->setEvent_name(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;-><init>()V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setErrorCode(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->mainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setMainUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setVideoUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->status:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setStatus(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->js_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setJs_type(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->domain_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setDomain_name(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->duration:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setDuration(I)V

    iget v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setCode(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setMsg(Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setType(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->setMarkPointParams(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;)V

    return-object v0
.end method

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->code:I

    return p0
.end method

.method public setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->code:I

    return-object p0
.end method

.method public setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->domain_name:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public setErrorCode(Ljava/lang/Integer;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->errorCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->event_name:Ljava/lang/String;

    return-object p0
.end method

.method public setJsType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->js_type:Ljava/lang/String;

    return-object p0
.end method

.method public setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->mainUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setScriptUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->script_url:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->status:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTid(Ljava/lang/Long;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->tid:Ljava/lang/Long;

    return-object p0
.end method

.method public setVideoUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->videoUrl:Ljava/lang/String;

    return-object p0
.end method
