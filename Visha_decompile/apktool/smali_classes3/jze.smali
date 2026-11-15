.class public abstract Ljze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;

.field public static final c:Leze;

.field public static final d:Leze;

.field public static final e:Leze;

.field public static final f:Leze;

.field public static final g:Leze;

.field public static final h:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "gads:app_permissions_caching_expiry_ms:expiry"

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->a:Leze;

    const-string v0, "gads:audio_caching_expiry_ms:expiry"

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->b:Leze;

    const-string v0, "gads:battery_caching_expiry_ms:expiry"

    const-wide/16 v3, 0x2710

    invoke-static {v0, v3, v4}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->c:Leze;

    const-string v0, "gads:device_info_caching_expiry_ms:expiry"

    const-wide/32 v3, 0x493e0

    invoke-static {v0, v3, v4}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->d:Leze;

    const-string v0, "gads:hsdp_caching_expiry_ms:expiry"

    const-wide/32 v3, 0x927c0

    invoke-static {v0, v3, v4}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->e:Leze;

    const-string v0, "gads:memory_caching_expiry_ms:expiry"

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->f:Leze;

    const-string v0, "gads:sdk_environment_caching_expiry_ms:expiry"

    invoke-static {v0, v3, v4}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->g:Leze;

    const-string v0, "gads:telephony_caching_expiry_ms:expiry"

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ljze;->h:Leze;

    return-void
.end method
