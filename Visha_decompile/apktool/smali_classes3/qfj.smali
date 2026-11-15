.class public final Lqfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lofj;


# static fields
.field public static final a:Lq1j;

.field public static final b:Lq1j;

.field public static final c:Lq1j;

.field public static final d:Lq1j;

.field public static final e:Lq1j;

.field public static final f:Lq1j;

.field public static final g:Lq1j;

.field public static final h:Lq1j;

.field public static final i:Lq1j;

.field public static final j:Lq1j;

.field public static final k:Lq1j;

.field public static final l:Lq1j;

.field public static final m:Lq1j;

.field public static final n:Lq1j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly0j;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lc0j;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Ly0j;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Ly0j;->b()Ly0j;

    move-result-object v0

    invoke-virtual {v0}, Ly0j;->a()Ly0j;

    move-result-object v0

    const-string v1, "measurement.redaction.app_instance_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->a:Lq1j;

    const-string v1, "measurement.redaction.client_ephemeral_aiid_generation"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->b:Lq1j;

    const-string v1, "measurement.redaction.config_redacted_fields"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->c:Lq1j;

    const-string v1, "measurement.redaction.device_info"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->d:Lq1j;

    const-string v1, "measurement.redaction.e_tag"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->e:Lq1j;

    const-string v1, "measurement.redaction.enhanced_uid"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->f:Lq1j;

    const-string v1, "measurement.redaction.populate_ephemeral_app_instance_id"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->g:Lq1j;

    const-string v1, "measurement.redaction.google_signals"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->h:Lq1j;

    const-string v1, "measurement.redaction.no_aiid_in_config_request"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->i:Lq1j;

    const-string v1, "measurement.redaction.retain_major_os_version"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->j:Lq1j;

    const-string v1, "measurement.redaction.scion_payload_generator"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->k:Lq1j;

    const-string v1, "measurement.redaction.upload_redacted_fields"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->l:Lq1j;

    const-string v1, "measurement.redaction.upload_subdomain_override"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Lqfj;->m:Lq1j;

    const-string v1, "measurement.redaction.user_id"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v0

    sput-object v0, Lqfj;->n:Lq1j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()Z
    .locals 0

    sget-object p0, Lqfj;->a:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzc()Z
    .locals 0

    sget-object p0, Lqfj;->b:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzd()Z
    .locals 0

    sget-object p0, Lqfj;->c:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zze()Z
    .locals 0

    sget-object p0, Lqfj;->d:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzf()Z
    .locals 0

    sget-object p0, Lqfj;->e:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzg()Z
    .locals 0

    sget-object p0, Lqfj;->f:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzh()Z
    .locals 0

    sget-object p0, Lqfj;->g:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzi()Z
    .locals 0

    sget-object p0, Lqfj;->h:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzj()Z
    .locals 0

    sget-object p0, Lqfj;->i:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzk()Z
    .locals 0

    sget-object p0, Lqfj;->j:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzl()Z
    .locals 0

    sget-object p0, Lqfj;->k:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzm()Z
    .locals 0

    sget-object p0, Lqfj;->l:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzn()Z
    .locals 0

    sget-object p0, Lqfj;->m:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzo()Z
    .locals 0

    sget-object p0, Lqfj;->n:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
