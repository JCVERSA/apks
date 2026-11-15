.class public Lcom/transsion/sdk/oneid/data/GroupHashInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public device_hash:Ljava/lang/String;

.field public dids_hash:Ljava/lang/String;

.field public env_hash:Ljava/lang/String;

.field public fp_hash:Ljava/lang/String;

.field public pkg_hash:Ljava/lang/String;

.field public rom_hash:Ljava/lang/String;

.field public user_hash:Ljava/lang/String;

.field public vaid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->vaid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->dids_hash:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->user_hash:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->pkg_hash:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->env_hash:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->device_hash:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->fp_hash:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->rom_hash:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->vaid:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->vaid:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->dids_hash:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->user:Lcom/transsion/sdk/oneid/data/UserIdInfo;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->user_hash:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->pkg:Lcom/transsion/sdk/oneid/data/PackageInfo;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->pkg_hash:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->env:Lcom/transsion/sdk/oneid/data/EnvironInfo;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->env_hash:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->device:Lcom/transsion/sdk/oneid/data/DeviceInfo;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->device_hash:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->fp:Lcom/transsion/sdk/oneid/data/FingerprintInfo;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->fp_hash:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->rom:Lcom/transsion/sdk/oneid/data/RomInfo;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->rom_hash:Ljava/lang/String;

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public updateDidsHash(Lcom/transsion/sdk/oneid/data/UniqueIdInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->dids_hash:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
