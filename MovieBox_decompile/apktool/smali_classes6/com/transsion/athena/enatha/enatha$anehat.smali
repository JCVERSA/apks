.class Lcom/transsion/athena/enatha/enatha$anehat;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/enatha/enatha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$anehat;->a:Lcom/transsion/athena/enatha/enatha;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Athena SDK isAthenaEnable = false"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    const-string v0, "AthenaKV"

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/athena/enatha/enatha$anehat;->a:Lcom/transsion/athena/enatha/enatha;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;Lcom/tencent/mmkv/MMKV;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$anehat;->a:Lcom/transsion/athena/enatha/enatha;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 40
    .line 41
    const-wide/32 v1, 0x493e0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    return-void
.end method
