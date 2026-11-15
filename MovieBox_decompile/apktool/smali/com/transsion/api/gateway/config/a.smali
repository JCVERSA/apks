.class public Lcom/transsion/api/gateway/config/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/api/gateway/config/a$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:J

.field public final f:I

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/transsion/api/gateway/config/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a$a;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a;->a:Z

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a$a;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a;->b:Z

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a$a;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a;->c:Z

    .line 15
    .line 16
    iget v0, p1, Lcom/transsion/api/gateway/config/a$a;->d:I

    .line 17
    .line 18
    iput v0, p0, Lcom/transsion/api/gateway/config/a;->d:I

    .line 19
    .line 20
    iget-wide v0, p1, Lcom/transsion/api/gateway/config/a$a;->e:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a;->e:J

    .line 23
    .line 24
    iget v0, p1, Lcom/transsion/api/gateway/config/a$a;->i:I

    .line 25
    .line 26
    iput v0, p0, Lcom/transsion/api/gateway/config/a;->f:I

    .line 27
    .line 28
    iget-wide v0, p1, Lcom/transsion/api/gateway/config/a$a;->f:J

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a;->g:J

    .line 31
    .line 32
    iget-object v0, p1, Lcom/transsion/api/gateway/config/a$a;->g:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsion/api/gateway/config/a;->h:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/transsion/api/gateway/config/a$a;->h:Ljava/util/List;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/api/gateway/config/a;->i:Ljava/util/List;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/transsion/api/gateway/config/a$a;->j:Ljava/util/List;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/transsion/api/gateway/config/a$a;->k:Ljava/util/List;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/transsion/api/gateway/config/a;->k:Ljava/util/List;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
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
    const-string v1, "GatewayConfig{activateGatewayDns="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/transsion/api/gateway/config/a;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", useGateway="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/transsion/api/gateway/config/a;->b:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", activateTracking="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/transsion/api/gateway/config/a;->c:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", requestTimeout="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/transsion/api/gateway/config/a;->d:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", refreshInterval="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/transsion/api/gateway/config/a;->e:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", configVersion="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/transsion/api/gateway/config/a;->f:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", metricsInterval="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v1, p0, Lcom/transsion/api/gateway/config/a;->g:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", gatewayHost=\'"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/transsion/api/gateway/config/a;->h:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x27

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", gatewayIp="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/transsion/api/gateway/config/a;->i:Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", useGatewayHostList="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", gatewayStrategy="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/transsion/api/gateway/config/a;->k:Ljava/util/List;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const/16 v1, 0x7d

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    return-object v0
.end method
