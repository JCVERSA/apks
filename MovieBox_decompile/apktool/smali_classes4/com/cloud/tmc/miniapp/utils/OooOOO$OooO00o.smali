.class public final Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO00o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    if-eqz p2, :cond_a

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x34

    .line 20
    .line 21
    if-eq v1, v2, :cond_8

    .line 22
    .line 23
    const/16 v2, 0x35

    .line 24
    .line 25
    if-eq v1, v2, :cond_6

    .line 26
    .line 27
    const/16 v2, 0x37

    .line 28
    .line 29
    if-eq v1, v2, :cond_5

    .line 30
    .line 31
    const/16 v2, 0x620

    .line 32
    .line 33
    if-eq v1, v2, :cond_4

    .line 34
    .line 35
    const/16 v2, 0x623

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x624

    .line 40
    .line 41
    if-eq v1, v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v1, "15"

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-string v1, "14"

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const-string p2, "Start failed: 100012"

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    const-string v1, "11"

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-nez p2, :cond_9

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    const-string v1, "7"

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_7

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    const-string v1, "5"

    .line 84
    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_7

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    const-string p2, "Decompression failed: 100011"

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_8
    const-string v1, "4"

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_9

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_9
    const-string p2, "Download failed: 100010"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_a
    :goto_1
    const-string p2, "Preload failed: 100013"

    .line 108
    .line 109
    :goto_2
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;->OooO00o(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public onPackageLoadSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;->OooO00o()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method
