.class public final synthetic Lhjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkf;


# instance fields
.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Leff;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Leff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjg;->b:Landroid/os/Bundle;

    iput-object p2, p0, Lhjg;->c:Leff;

    return-void
.end method


# virtual methods
.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lhjg;->c:Leff;

    if-eqz p1, :cond_1

    sget-object p1, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lhjg;->b:Landroid/os/Bundle;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzA:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p2

    invoke-interface {p2}, Lfy0;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Leff;->c(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Web View failed to load. Error code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Description: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Failing URL: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
