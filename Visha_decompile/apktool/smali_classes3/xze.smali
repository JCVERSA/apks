.class public abstract Lxze;
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
    .locals 3

    const-string v0, "gads:init:init_on_bg_thread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->a:Leze;

    const-string v0, "gads:init:init_on_single_bg_thread"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->b:Leze;

    const-string v0, "gads:adloader_load_bg_thread"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->c:Leze;

    const-string v0, "gads:appopen_load_on_bg_thread"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->d:Leze;

    const-string v0, "gads:banner_destroy_bg_thread"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->e:Leze;

    const-string v0, "gads:banner_load_bg_thread"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->f:Leze;

    const-string v0, "gads:banner_pause_bg_thread"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->g:Leze;

    const-string v0, "gads:banner_resume_bg_thread"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->h:Leze;

    const-string v0, "gads:interstitial_load_on_bg_thread"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->i:Leze;

    const-string v0, "gads:persist_flags_on_bg_thread"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:query_info_bg_thread"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->j:Leze;

    const-string v0, "gads:rewarded_load_bg_thread"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lxze;->k:Leze;

    return-void
.end method
