.class public abstract Lf0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;

.field public static final c:Leze;

.field public static final d:Leze;

.field public static final e:Leze;

.field public static final f:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:adapter_initialization:red_button"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lf0f;->a:Leze;

    const-string v0, "gads:adapter_settings:red_button"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lf0f;->b:Leze;

    const-string v0, "gads:ads_service_force_stop:red_button"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:banner_refresh_sequential_caching:red_button"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lf0f;->c:Leze;

    const-string v0, "gads:ad_serving:enabled"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:ad_preloading:enabled"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:adaptive_banner:fail_invalid_ad_size"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lf0f;->d:Leze;

    const-string v0, "gads:sdk_use_dynamic_module"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:signal_adapters:red_button"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lf0f;->e:Leze;

    const-string v0, "gads:use_non_templated_client_sdkcore:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lf0f;->f:Leze;

    return-void
.end method
