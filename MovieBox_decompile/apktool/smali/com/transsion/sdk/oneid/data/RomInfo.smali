.class public Lcom/transsion/sdk/oneid/data/RomInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public api:Ljava/lang/String;

.field public aver:Ljava/lang/String;

.field public build_id:Ljava/lang/String;

.field public build_spv:Ljava/lang/String;

.field public buildt:Ljava/lang/String;

.field public buildv:Ljava/lang/String;

.field public fp:Ljava/lang/String;

.field public gsmv:Ljava/lang/String;

.field public osver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->aver:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->api:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildv:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildt:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->osver:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_id:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_spv:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->gsmv:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->fp:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->aver:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->api:Ljava/lang/String;

    .line 46
    .line 47
    :try_start_0
    const-string v0, "ro.product.build.id"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    :catch_0
    :try_start_1
    const-string v0, "ro.system.build.date.utc"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildt:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    :catch_1
    :try_start_2
    const-string v0, "ro.tranos.version"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->osver:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    const-string v0, "ro.os_product.version"

    .line 78
    .line 79
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->osver:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    .line 85
    :catch_2
    :cond_0
    :try_start_3
    const-string v0, "ro.system.build.id"

    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_id:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 92
    .line 93
    :catch_3
    :try_start_4
    const-string v0, "ro.vendor.build.security_patch"

    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_spv:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 100
    .line 101
    :catch_4
    :try_start_5
    const-string v0, "gsm.version.baseband"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->gsmv:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 108
    .line 109
    :catch_5
    :try_start_6
    const-string v0, "ro.build.fingerprint"

    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->fp:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 116
    .line 117
    :catch_6
    return-void
.end method
