.class Lcom/transsion/ga/AthenaAnalytics$aethna;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/AthenaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "aethna"
.end annotation


# instance fields
.field private a:Lcom/transsion/athena/enatha/athena;


# direct methods
.method private constructor <init>(Lcom/transsion/athena/enatha/athena;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/ga/AthenaAnalytics$aethna;->a:Lcom/transsion/athena/enatha/athena;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/athena/enatha/athena;Lcom/transsion/ga/AthenaAnalytics$athena;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ga/AthenaAnalytics$aethna;-><init>(Lcom/transsion/athena/enatha/athena;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/32 v1, 0xea60

    .line 6
    .line 7
    .line 8
    const-string v3, "]"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "Athena is in Test mode\uff0cshould not release this APK\uff08\u6d4b\u8bd5\u6a21\u5f0f\uff09["

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/transsion/athena/taaneh/anehat;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$aethna;->a:Lcom/transsion/athena/enatha/athena;

    .line 44
    .line 45
    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/athena/enatha/athena;->a(Ljava/lang/Runnable;J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->t()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->q()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "  - Athena is in Release mode with log enabled. Please set AthenaAnalytics.setDebug(false) to release this APK \uff08Debug\u6a21\u5f0f\uff09["

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/transsion/athena/taaneh/anehat;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$aethna;->a:Lcom/transsion/athena/enatha/athena;

    .line 93
    .line 94
    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/athena/enatha/athena;->a(Ljava/lang/Runnable;J)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    return-void
.end method
