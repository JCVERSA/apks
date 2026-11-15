.class public Lcom/transsion/athena/aethna/athena;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lcom/transsion/athena/aethna/athena;

.field public static b:Ljava/security/SecureRandom;


# instance fields
.field private final c:Lcom/transsion/athena/aethna/anehat/athena;

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/athena/aethna/athena;->b:Ljava/security/SecureRandom;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b()Lcom/transsion/athena/aethna/anehat/aethna/athena;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/transsion/athena/aethna/anehat/athena;->a(Lcom/transsion/athena/aethna/anehat/aethna/athena;)Lcom/transsion/athena/aethna/anehat/athena;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 13
    .line 14
    return-void
.end method

.method private a(F)Z
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 43
    sget-object v3, Lcom/transsion/athena/aethna/athena;->b:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 44
    rem-int/lit16 v3, v3, 0x2710

    if-ge v3, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    .line 45
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object v1, v5, v2

    const/4 p1, 0x2

    aput-object v3, v5, p1

    const-string p1, "checkSamplingRate false, samplingRate : %f, samplingRateInTenThousand : %d, randomHash : %d"

    .line 46
    invoke-static {p1, v5}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    return v2
.end method

.method public static c()Lcom/transsion/athena/aethna/athena;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/aethna/athena;->a:Lcom/transsion/athena/aethna/athena;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/transsion/athena/aethna/athena;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transsion/athena/aethna/athena;->a:Lcom/transsion/athena/aethna/athena;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/transsion/athena/aethna/athena;

    invoke-direct {v1}, Lcom/transsion/athena/aethna/athena;-><init>()V

    sput-object v1, Lcom/transsion/athena/aethna/athena;->a:Lcom/transsion/athena/aethna/athena;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/athena/aethna/athena;->a:Lcom/transsion/athena/aethna/athena;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;F)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    iget-boolean v2, p0, Lcom/transsion/athena/aethna/athena;->d:Z

    if-nez v2, :cond_0

    const-string p1, "isTidEnable init not completed"

    .line 22
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    const/16 p1, 0x65

    return p1

    .line 23
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "isTidEnable sdk disable"

    .line 24
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    const/16 p1, 0x64

    return p1

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v3}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v3

    .line 27
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/enatha;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v2

    const/16 v4, 0x69

    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    .line 28
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/athena;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v3, p2}, Lcom/transsion/athena/config/data/model/athena;->b(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p3

    if-nez p3, :cond_4

    .line 30
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 31
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appid"

    .line 32
    invoke-virtual {p3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "event"

    .line 33
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "invalid or not registered:%s"

    .line 34
    :try_start_1
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "checkTidEnable exception:%s"

    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const/16 p1, 0x67

    return p1

    .line 37
    :cond_4
    invoke-virtual {p3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->inSamplingRange()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "isTidEnable device is not in sampling range"

    .line 38
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    return v4

    .line 39
    :cond_5
    invoke-virtual {p3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    const-string p1, "isTidEnable tid config is closed"

    .line 40
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    const/16 p1, 0x68

    return p1

    .line 41
    :cond_7
    :goto_1
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->p()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "location#page_view#athena_anr_full#athena_crash_full"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 42
    invoke-direct {p0, p3}, Lcom/transsion/athena/aethna/athena;->a(F)Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v4

    :cond_9
    const/16 p1, 0x66

    return p1
.end method

.method public a(JF)I
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/transsion/athena/aethna/athena;->d:Z

    if-nez v0, :cond_0

    const-string p1, "isTidEnable init not completed"

    .line 4
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    const/16 p1, 0x65

    return p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "isTidEnable sdk disable"

    .line 6
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    const/16 p1, 0x64

    return p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v1}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x69

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/transsion/athena/config/data/model/athena;->a(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "isTidEnable tid config is null"

    .line 14
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    const/16 p1, 0x67

    return p1

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->inSamplingRange()Z

    move-result p2

    if-nez p2, :cond_4

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isTidEnable tid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not in sampling range"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    return v3

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    const-string p1, "isTidEnable tid config is closed"

    .line 18
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    const/16 p1, 0x68

    return p1

    .line 19
    :cond_6
    :goto_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->p()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    invoke-direct {p0, p3}, Lcom/transsion/athena/aethna/athena;->a(F)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v3

    :cond_8
    const/16 p1, 0x66

    return p1
.end method

.method public a(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/transsion/athena/config/data/model/athena;->b(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Lcom/transsion/athena/config/data/model/aethna;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/aethna/anehat/athena;->a(J)Lcom/transsion/athena/config/data/model/aethna;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0, p1}, Lcom/transsion/athena/aethna/anehat/athena;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Handler;Lcom/transsion/athena/aethna/aethna;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/aethna/anehat/athena;->a(Landroid/os/Handler;Lcom/transsion/athena/aethna/aethna;)V

    return-void
.end method

.method public a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/aethna/anehat/athena;->a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0, p1}, Lcom/transsion/athena/aethna/anehat/athena;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0, p1}, Lcom/transsion/athena/aethna/anehat/athena;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->a()I

    move-result v0

    return v0
.end method

.method public b(J)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 5
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public b(I)Lcom/transsion/athena/config/data/model/athena;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    invoke-virtual {v0, p1}, Lcom/transsion/athena/aethna/anehat/athena;->b(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->b()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->g()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->b()Lcom/transsion/athena/config/data/model/anateh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->h()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->d()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/athena/aethna/athena;->d:Z

    .line 8
    .line 9
    return-void
.end method

.method public i()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->e()Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/aethna/athena;->c:Lcom/transsion/athena/aethna/anehat/athena;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/athena;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
