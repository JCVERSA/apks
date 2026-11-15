.class public final Lcom/cloud/config/utils/CommonUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001*B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u001e\u001a\u00020\u0006J\u0006\u0010\u001f\u001a\u00020\u0006J\n\u0010 \u001a\u0004\u0018\u00010\u0016H\u0002J\u0006\u0010!\u001a\u00020\u0006J\u0006\u0010\"\u001a\u00020\u0006J\u000e\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006J\u0006\u0010%\u001a\u00020\u0006J\u0006\u0010&\u001a\u00020\u0006J\u0008\u0010\'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020(2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/cloud/config/utils/CommonUtils;",
        "",
        "()V",
        "MAX_QUERY_GAID_COUNT",
        "",
        "PARAM_CONDITIONPARAMKEYS",
        "",
        "PARAM_KEY",
        "PARAM_MCC",
        "PARAM_OSVERSION",
        "PARAM_PHONEBRAND",
        "PARAM_PHONELANGUAGE",
        "PARAM_PHONEMODEL",
        "PARAM_SHUNTTYPE",
        "PARAM_UID",
        "PREF_GAID",
        "SHUNT_OPEN_FLAG",
        "brand",
        "context",
        "Landroid/content/Context;",
        "language",
        "locale",
        "Ljava/util/Locale;",
        "mGaid",
        "mcc",
        "model",
        "osVersion",
        "queryGaidCount",
        "encryptMD5",
        "inputStr",
        "getBrand",
        "getGaid",
        "getLocale",
        "getMcc",
        "getModel",
        "getShuntValue",
        "key",
        "getSystemLanguage",
        "getVersion",
        "queryGaid",
        "",
        "setContext",
        "AdvertisingIdClient",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/config/utils/CommonUtils;

.field private static final MAX_QUERY_GAID_COUNT:I = 0x5

.field public static final PARAM_CONDITIONPARAMKEYS:Ljava/lang/String; = "conditionParamKeys"

.field public static final PARAM_KEY:Ljava/lang/String; = "cloudConfigKey"

.field private static final PARAM_MCC:Ljava/lang/String; = "mcc"

.field private static final PARAM_OSVERSION:Ljava/lang/String; = "osVersion"

.field private static final PARAM_PHONEBRAND:Ljava/lang/String; = "phoneBrand"

.field private static final PARAM_PHONELANGUAGE:Ljava/lang/String; = "phoneLanguage"

.field private static final PARAM_PHONEMODEL:Ljava/lang/String; = "phoneModel"

.field public static final PARAM_SHUNTTYPE:Ljava/lang/String; = "shuntType"

.field public static final PARAM_UID:Ljava/lang/String; = "uid"

.field private static final PREF_GAID:Ljava/lang/String; = "device_util_ga_id"

.field public static final SHUNT_OPEN_FLAG:Ljava/lang/String; = "shuntopen"

.field private static brand:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static language:Ljava/lang/String;

.field private static locale:Ljava/util/Locale;

.field private static mGaid:Ljava/lang/String;

.field private static mcc:Ljava/lang/String;

.field private static model:Ljava/lang/String;

.field private static osVersion:Ljava/lang/String;

.field private static queryGaidCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/config/utils/CommonUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/config/utils/CommonUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->mcc:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->brand:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->model:Ljava/lang/String;

    .line 15
    .line 16
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->osVersion:Ljava/lang/String;

    .line 17
    .line 18
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->language:Ljava/lang/String;

    .line 19
    .line 20
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 21
    .line 22
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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/config/utils/CommonUtils;->getGaid$lambda-0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final getGaid$lambda-0()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/config/utils/CommonUtils;->queryGaid()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final getLocale()Ljava/util/Locale;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ln0/b;->a()Landroid/os/LocaleList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/cloud/config/utils/CommonUtils;->locale:Ljava/util/Locale;

    .line 35
    .line 36
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "getStackTraceString(e)"

    .line 47
    .line 48
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_2
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->locale:Ljava/util/Locale;

    .line 55
    .line 56
    return-object v0
.end method

.method private final queryGaid()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient;->INSTANCE:Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient;

    .line 7
    .line 8
    sget-object v1, Lcom/cloud/config/utils/CommonUtils;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient$AdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/cloud/config/utils/CommonUtils$AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v0, Lcom/cloud/config/utils/SPHelper;->INSTANCE:Lcom/cloud/config/utils/SPHelper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/config/utils/SPHelper;->getInstance()Lcom/transsion/core/utils/f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "device_util_ga_id"

    .line 48
    .line 49
    sget-object v2, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/transsion/core/utils/f;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "CommonUtil"

    .line 61
    .line 62
    const-string v2, " GAID is \uff1a"

    .line 63
    .line 64
    sget-object v3, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, "getStackTraceString(e)"

    .line 86
    .line 87
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final encryptMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "MD5"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getInstance(\"MD5\")"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    move-object p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    const-string v3, "UTF_8"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 29
    .line 30
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v1, "md.digest(inputStr?.toBy\u2026(StandardCharsets.UTF_8))"

    .line 38
    .line 39
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    array-length v2, p1

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_1
    if-ge v3, v2, :cond_2

    .line 50
    .line 51
    aget-byte v4, p1, v3

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0xff

    .line 56
    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x1

    .line 66
    if-ne v5, v6, :cond_1

    .line 67
    .line 68
    const/16 v5, 0x30

    .line 69
    .line 70
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :cond_1
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_4

    .line 85
    :goto_3
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v2, "getStackTraceString(e)"

    .line 96
    .line 97
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_4
    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->brand:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "BRAND"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const-string v0, ""

    .line 27
    .line 28
    :goto_1
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->brand:Ljava/lang/String;

    .line 29
    .line 30
    :cond_2
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->brand:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public final getGaid()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const-string v1, "config"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_1
    sget v0, Lcom/cloud/config/utils/CommonUtils;->queryGaidCount:I

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    sput v0, Lcom/cloud/config/utils/CommonUtils;->queryGaidCount:I

    .line 19
    .line 20
    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "queryGaidCount \uff1a"

    .line 27
    .line 28
    sget v3, Lcom/cloud/config/utils/CommonUtils;->queryGaidCount:I

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/cloud/config/utils/SPHelper;->INSTANCE:Lcom/cloud/config/utils/SPHelper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/config/utils/SPHelper;->getInstance()Lcom/transsion/core/utils/f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "device_util_ga_id"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/transsion/core/utils/f;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "SPHelper.instance.getString(PREF_GAID)"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v2, Lcom/cloud/config/utils/a;

    .line 79
    .line 80
    invoke-direct {v2}, Lcom/cloud/config/utils/a;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/cloud/config/utils/CommonUtils;->queryGaid()V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v2, "mGaid \uff1a"

    .line 99
    .line 100
    sget-object v3, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :goto_1
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v2, "getStackTraceString(e)"

    .line 123
    .line 124
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v0, ""

    .line 131
    .line 132
    :goto_2
    return-object v0
.end method

.method public final getMcc()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/config/utils/CommonUtils;->mcc:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    sget-object v1, Lcom/cloud/config/utils/CommonUtils;->context:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v3, "phone"

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    instance-of v3, v1, Landroid/telephony/TelephonyManager;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_4

    .line 34
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 35
    .line 36
    :goto_2
    move-object v1, v0

    .line 37
    goto :goto_3

    .line 38
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x3

    .line 50
    if-lt v2, v3, :cond_5

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v0, v1

    .line 63
    goto :goto_5

    .line 64
    :cond_4
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->mcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :goto_4
    sget-object v2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v3, "getStackTraceString(e)"

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_5
    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->model:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "MODEL"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const-string v0, ""

    .line 27
    .line 28
    :goto_1
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->model:Ljava/lang/String;

    .line 29
    .line 30
    :cond_2
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->model:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public final getShuntValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "key"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sparse-switch v1, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string v1, "osVersion"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/config/utils/CommonUtils;->getVersion()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :sswitch_1
    const-string v1, "phoneLanguage"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/config/utils/CommonUtils;->getSystemLanguage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :sswitch_2
    const-string v1, "uid"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object p1, Lcom/cloud/config/utils/CommonUtils;->mGaid:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const v1, 0x7fffffff

    .line 62
    .line 63
    .line 64
    and-int/2addr p1, v1

    .line 65
    const v1, 0xf4240

    .line 66
    .line 67
    .line 68
    rem-int/2addr p1, v1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :sswitch_3
    const-string v1, "mcc"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/config/utils/CommonUtils;->getMcc()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :sswitch_4
    const-string v1, "phoneModel"

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/config/utils/CommonUtils;->getModel()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :sswitch_5
    const-string v1, "phoneBrand"

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    :goto_0
    return-object v0

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/cloud/config/utils/CommonUtils;->getBrand()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    return-object p1

    .line 120
    :goto_1
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v2, "getStackTraceString(e)"

    .line 131
    .line 132
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-object v0

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x6e50ad47 -> :sswitch_5
        -0x6db6fda5 -> :sswitch_4
        0x1a58d -> :sswitch_3
        0x1c450 -> :sswitch_2
        0x22e2e6e6 -> :sswitch_1
        0x6c00fe54 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getSystemLanguage()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->language:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/cloud/config/utils/CommonUtils;->getLocale()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    :goto_0
    sput-object v1, Lcom/cloud/config/utils/CommonUtils;->language:Ljava/lang/String;

    .line 27
    .line 28
    :cond_2
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->language:Ljava/lang/String;

    .line 29
    .line 30
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->osVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "RELEASE"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const-string v0, ""

    .line 27
    .line 28
    :goto_1
    sput-object v0, Lcom/cloud/config/utils/CommonUtils;->osVersion:Ljava/lang/String;

    .line 29
    .line 30
    :cond_2
    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->osVersion:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/cloud/config/utils/CommonUtils;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
