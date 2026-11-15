.class public final Lpdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpdh;->a:Ljava/lang/String;

    iput-object p2, p0, Lpdh;->b:Ljava/lang/String;

    iput-object p3, p0, Lpdh;->c:Ljava/lang/String;

    iput-object p4, p0, Lpdh;->d:Ljava/lang/String;

    iput-object p5, p0, Lpdh;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->b:Landroid/os/Bundle;

    const-string v0, "fbs_aeid"

    iget-object p0, p0, Lpdh;->c:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    const-string v0, "gmp_app_id"

    iget-object v1, p0, Lpdh;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fbs_aiid"

    iget-object v1, p0, Lpdh;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fbs_aeid"

    iget-object v1, p0, Lpdh;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apm_id_origin"

    iget-object v1, p0, Lpdh;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lunh;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lpdh;->e:Ljava/lang/Long;

    if-eqz p0, :cond_0

    const-string v0, "sai_timeout"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
