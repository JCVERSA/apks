.class public Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkPointParams"
.end annotation


# instance fields
.field private code:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private domain_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "domain_name"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private errorCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_code"
    .end annotation
.end field

.field private js_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "js_type"
    .end annotation
.end field

.field private mainUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main_url"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private script_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "script_url"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private videoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->status:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->errorCode:Ljava/lang/Integer;

    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->mainUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->videoUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->js_type:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->domain_name:Ljava/lang/String;

    iput v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->duration:I

    iput-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->code:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->type:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->script_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->code:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDomain_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->domain_name:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->duration:I

    return p0
.end method

.method public getErrorCode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->errorCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public getJs_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->js_type:Ljava/lang/String;

    return-object p0
.end method

.method public getMainUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->mainUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getScript_url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->script_url:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->status:Ljava/lang/Integer;

    return-object p0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->type:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->code:Ljava/lang/Integer;

    return-void
.end method

.method public setDomain_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->domain_name:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->duration:I

    return-void
.end method

.method public setErrorCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->errorCode:Ljava/lang/Integer;

    return-void
.end method

.method public setJs_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->js_type:Ljava/lang/String;

    return-void
.end method

.method public setMainUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->mainUrl:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->msg:Ljava/lang/String;

    return-void
.end method

.method public setScript_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->script_url:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->status:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->type:Ljava/lang/Integer;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarkPointParams{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->mainUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", js_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->js_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", domain_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->domain_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->msg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
