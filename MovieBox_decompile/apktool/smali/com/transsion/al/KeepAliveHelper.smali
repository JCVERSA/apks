.class public Lcom/transsion/al/KeepAliveHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final AL_ERROR_COUNT:I = 0x2

.field public static final AL_ERROR_TIME_MIN:I = 0x3

.field public static final KEY_AL_CUR_START_COUNT:Ljava/lang/String; = "KEY_AL_CUR_START_COUNT"

.field public static final KEY_AL_LAST_START_TIME:Ljava/lang/String; = "KEY_AL_LAST_START_TIME"

.field public static final KEY_CLOSE_ALIVE_CURRENT:Ljava/lang/String; = "key_close_alive_current"

.field public static final KEY_IS_ALIVE_PROCESS_START:Ljava/lang/String; = "KEY_IS_ALIVE_PROCESS_START"

.field public static final KEY_IS_MAIN_PROCESS_START:Ljava/lang/String; = "KEY_IS_MAIN_PROCESS_START"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "keyAliveOff"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "1"

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/transsion/al/ka/KaManager;->init(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
