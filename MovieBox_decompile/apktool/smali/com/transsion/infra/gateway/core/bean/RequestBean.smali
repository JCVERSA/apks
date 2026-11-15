.class public Lcom/transsion/infra/gateway/core/bean/RequestBean;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    }
.end annotation


# instance fields
.field private accept:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private key:Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

.field private method:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->access$000(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->method:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->access$100(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->accept:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->access$200(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->contentType:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->access$300(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->url:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->access$400(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->body:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->access$500(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->key:Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 39
    .line 40
    return-void
.end method

.method public static builder()Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getAccept()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->accept:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->key:Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->method:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "RequestBean{method=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->method:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", accept=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->accept:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", contentType=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->contentType:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", url=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->url:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", body=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->body:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", key="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean;->key:Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v1, 0x7d

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
