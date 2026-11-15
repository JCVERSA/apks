.class public abstract Lzze;
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

.field public static final i:Leze;

.field public static final j:Leze;

.field public static final k:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:disable_flag_shared_pref_listener_v2:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->a:Leze;

    const-string v0, "gads:include_package_name_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->b:Leze;

    const-string v0, "gads:js_flags:mf"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->c:Leze;

    const-string v0, "gads:js_flags:update_interval"

    const-wide/32 v2, 0xdbba00

    invoke-static {v0, v2, v3}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Lzze;->d:Leze;

    const-string v0, "gads:persist_js_flag:ars"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->e:Leze;

    const-string v0, "gads:persist_js_flag:as"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:persist_js_flag:scar"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->f:Leze;

    const-string v0, "gads:read_local_flags_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->g:Leze;

    const-string v0, "gads:read_local_flags_cld_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->h:Leze;

    const-string v0, "gads:write_local_flags_cld_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->i:Leze;

    const-string v0, "gads:write_local_flags_client_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->j:Leze;

    const-string v0, "gads:write_local_flags_service_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lzze;->k:Leze;

    return-void
.end method
