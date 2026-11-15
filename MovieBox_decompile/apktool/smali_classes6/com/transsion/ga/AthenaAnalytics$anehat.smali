.class Lcom/transsion/ga/AthenaAnalytics$anehat;
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
    name = "anehat"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/transsion/ga/AthenaAnalytics$athena;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ga/AthenaAnalytics$anehat;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->t()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_4

    .line 10
    .line 11
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->c(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->b:Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    .line 29
    const-string v2, "yyyy/MM/dd"

    .line 30
    .line 31
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->b:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->b:Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    new-instance v1, Ljava/util/Date;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lcom/transsion/athena/data/athena;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/16 v4, 0x270f

    .line 80
    .line 81
    if-eq v3, v4, :cond_1

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-static {v3}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const-string v4, "app_heartbeat"

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3, v4, v5, v2}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->c:Ljava/lang/String;

    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$anehat;->a:Landroid/os/Handler;

    .line 105
    .line 106
    const-wide/32 v1, 0x36ee80

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method
