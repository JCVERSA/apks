.class public abstract Lrze;
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:always_enable_crash_loop_counter_v2:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->a:Leze;

    const-string v0, "gads:crash_loop_stats_signal_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->b:Leze;

    const-string v0, "gads:crash_without_flag_write_count_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->c:Leze;

    const-string v0, "gads:crash_without_write_reset_v2:count"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Lrze;->d:Leze;

    const-string v0, "gads:init_without_flag_write_count_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->e:Leze;

    const-string v0, "gads:init_without_write_reset_v2:count"

    invoke-static {v0, v2, v3}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Lrze;->f:Leze;

    const-string v0, "gads:reset_app_settings_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->g:Leze;

    const-string v0, "gads:reset_counts_on_failure_service_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->h:Leze;

    const-string v0, "gads:reset_counts_on_local_flag_save_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->i:Leze;

    const-string v0, "gads:reset_counts_on_successful_service_v2:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lrze;->j:Leze;

    return-void
.end method
