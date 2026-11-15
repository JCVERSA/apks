.class public final Laej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsdj;


# static fields
.field public static final a:Lq1j;

.field public static final b:Lq1j;

.field public static final c:Lq1j;

.field public static final d:Lq1j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly0j;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lc0j;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Ly0j;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Ly0j;->a()Ly0j;

    move-result-object v0

    const-string v1, "measurement.service.audience.fix_skip_audience_with_failed_filters"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Laej;->a:Lq1j;

    const-string v1, "measurement.audience.refresh_event_count_filters_timestamp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Laej;->b:Lq1j;

    const-string v1, "measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Laej;->c:Lq1j;

    const-string v1, "measurement.audience.use_bundle_timestamp_for_event_count_filters"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v0

    sput-object v0, Laej;->d:Lq1j;

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

    sget-object p0, Laej;->b:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzc()Z
    .locals 0

    sget-object p0, Laej;->c:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzd()Z
    .locals 0

    sget-object p0, Laej;->d:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
