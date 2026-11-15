.class public final Llej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljej;


# static fields
.field public static final a:Lq1j;

.field public static final b:Lq1j;

.field public static final c:Lq1j;


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

    const-string v1, "measurement.client.sessions.check_on_reset_and_enable2"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Llej;->a:Lq1j;

    const-string v1, "measurement.client.sessions.check_on_startup"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v1

    sput-object v1, Llej;->b:Lq1j;

    const-string v1, "measurement.client.sessions.start_session_before_view_screen"

    invoke-virtual {v0, v1, v2}, Ly0j;->f(Ljava/lang/String;Z)Lq1j;

    move-result-object v0

    sput-object v0, Llej;->c:Lq1j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzb()Z
    .locals 0

    sget-object p0, Llej;->a:Lq1j;

    invoke-virtual {p0}, Lq1j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
