.class public final Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;",
        "",
        "<init>",
        "()V",
        "",
        "commonConfig",
        "Lzfb;",
        "formatCommonConfig",
        "(Ljava/lang/String;)V",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;",
        "getCommonConfig",
        "()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;",
        "customTabConfig",
        "formatCCTConfig",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;",
        "getCCTConfig",
        "()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;",
        "TAG",
        "Ljava/lang/String;",
        "cctConfig",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;",
        "commmonConfig",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;

.field public static final TAG:Ljava/lang/String; = "CustomTabUtil"

.field private static volatile cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

.field private static volatile commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatCCTConfig(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    invoke-static {p0, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "CustomTabUtil"

    const-string v1, "formatCCTConfig: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    :goto_0
    return-void
.end method

.method public static final formatCommonConfig(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    invoke-static {p0, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "CustomTabUtil"

    const-string v1, "formatCommonConfig: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    :goto_0
    return-void
.end method

.method public static final getCCTConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    return-object v0
.end method

.method public static final getCommonConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    return-object v0
.end method
