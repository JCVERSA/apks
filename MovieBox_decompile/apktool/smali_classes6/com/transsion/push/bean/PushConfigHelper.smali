.class public final Lcom/transsion/push/bean/PushConfigHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010 \u001a\u00020\u0017J\u0006\u0010!\u001a\u00020\u0017J\u0006\u0010\'\u001a\u00020#R\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0002X\u0083T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00058\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0011\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0019R\u0015\u0010\u001b\u001a\u0004\u0018\u00010\u001c8F\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010\"\u001a\u00020#8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0011\u001a\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/push/bean/PushConfigHelper;",
        "",
        "<init>",
        "()V",
        "PUSH_REMIND_NOTIFICATION_TIME",
        "",
        "PUSH_PERMANENT_AB_CONFIG",
        "PUSH_PIC_TYPE_CONFIG_KEY",
        "PUSH_SIMBA_CONFIG_KEY",
        "PERMANENT_DEFAULT_TYPE",
        "",
        "PERMANENT_A_TYPE",
        "PERMANENT_B_TYPE",
        "abType",
        "getAbType",
        "()I",
        "abType$delegate",
        "Lkotlin/Lazy;",
        "remindTime",
        "getRemindTime",
        "()Ljava/lang/Integer;",
        "remindTime$delegate",
        "verticalType",
        "",
        "getVerticalType",
        "()Z",
        "verticalType$delegate",
        "simbaConfig",
        "Lcom/transsion/push/bean/PushSimbaConfig;",
        "getSimbaConfig",
        "()Lcom/transsion/push/bean/PushSimbaConfig;",
        "getCurAbType",
        "isAbType",
        "isVerticalType",
        "timeFloat",
        "",
        "getTimeFloat",
        "()F",
        "timeFloat$delegate",
        "getHashTime",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

.field public static final PERMANENT_A_TYPE:I = 0x1

.field public static final PERMANENT_B_TYPE:I = 0x2

.field public static final PERMANENT_DEFAULT_TYPE:I = 0x0

.field private static final PUSH_PERMANENT_AB_CONFIG:Ljava/lang/String; = "push_permanent_ui_ab_config"

.field public static final PUSH_PIC_TYPE_CONFIG_KEY:Ljava/lang/String; = "push_pic_type_config"

.field private static final PUSH_REMIND_NOTIFICATION_TIME:Ljava/lang/String; = "push_remind_notification_time"

.field public static final PUSH_SIMBA_CONFIG_KEY:Ljava/lang/String; = "push_simba_config"

.field private static final abType$delegate:Lkotlin/Lazy;

.field private static final remindTime$delegate:Lkotlin/Lazy;

.field private static final simbaConfig:Lcom/transsion/push/bean/PushSimbaConfig;

.field private static final timeFloat$delegate:Lkotlin/Lazy;

.field private static final verticalType$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/bean/PushConfigHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/bean/PushConfigHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/bean/PushConfigHelper;->INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/push/bean/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/push/bean/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/push/bean/PushConfigHelper;->abType$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/push/bean/b;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsion/push/bean/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/transsion/push/bean/PushConfigHelper;->remindTime$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcom/transsion/push/bean/c;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/transsion/push/bean/c;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/transsion/push/bean/PushConfigHelper;->verticalType$delegate:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance v0, Lcom/transsion/push/bean/d;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/transsion/push/bean/d;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/transsion/push/bean/PushConfigHelper;->timeFloat$delegate:Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/bean/PushConfigHelper;->remindTime_delegate$lambda$1()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final abType_delegate$lambda$0()I
    .locals 4

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
    const-string v1, "push_permanent_ui_ab_config"

    .line 8
    .line 9
    const/4 v2, 0x1

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
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "push init_abType:"

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :cond_1
    return v2
.end method

.method public static synthetic b()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/bean/PushConfigHelper;->abType_delegate$lambda$0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic c()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/bean/PushConfigHelper;->timeFloat_delegate$lambda$4()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/bean/PushConfigHelper;->verticalType_delegate$lambda$2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private final getAbType()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushConfigHelper;->abType$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final getVerticalType()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushConfigHelper;->verticalType$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final remindTime_delegate$lambda$1()Ljava/lang/Integer;
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
    const-string v1, "push_remind_notification_time"

    .line 8
    .line 9
    const/4 v2, 0x1

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
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "remindTime:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method private static final timeFloat_delegate$lambda$4()F
    .locals 5

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/k;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getUniqueDeviceId(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getBytes(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Lkotlin/ULong;->b(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-static {v3, v4}, Lkotlin/ULong;->b(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    xor-long v0, v1, v3

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Lkotlin/UnsignedKt;->c(J)D

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    const-wide/16 v2, -0x1

    .line 52
    .line 53
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->c(J)D

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    div-double/2addr v0, v2

    .line 58
    double-to-float v0, v0

    .line 59
    return v0
.end method

.method private static final verticalType_delegate$lambda$2()Z
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
    const-string v1, "push_pic_type_config"

    .line 8
    .line 9
    const/4 v2, 0x1

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
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method


# virtual methods
.method public final getCurAbType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/bean/PushConfigHelper;->getAbType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getHashTime()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushConfigHelper;->getSimbaConfig()Lcom/transsion/push/bean/PushSimbaConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/push/bean/PushSimbaConfig;->getRequestHashEnable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushConfigHelper;->getTimeFloat()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->d(FF)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :cond_0
    return v1
.end method

.method public final getRemindTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushConfigHelper;->remindTime$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getSimbaConfig()Lcom/transsion/push/bean/PushSimbaConfig;
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushConfigHelper;->simbaConfig:Lcom/transsion/push/bean/PushSimbaConfig;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    sget-object v1, Lcm/f;->c:Lcm/f$a;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcm/f$a;->a()Lcm/f;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "push_simba_config"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v2, v3}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move-object v1, v0

    .line 31
    :goto_0
    const-class v2, Lcom/transsion/push/bean/PushSimbaConfig;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/transsion/push/bean/PushSimbaConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    return-object v1

    .line 40
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object v0
.end method

.method public final getTimeFloat()F
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushConfigHelper;->timeFloat$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isAbType()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushConfigHelper;->getCurAbType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final isVerticalType()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/bean/PushConfigHelper;->getVerticalType()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "isVerticalType:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/push/bean/PushConfigHelper;->getVerticalType()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method
