.class final Lcom/google/android/gms/measurement/internal/zzia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Landroid/net/Uri;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/f;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zze:Lcom/google/android/gms/measurement/internal/f;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zze:Lcom/google/android/gms/measurement/internal/f;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzd:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {v4}, Lini;->g()V

    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v4, v4, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "_cis"

    const-string v7, "Activity created with data \'referrer\' without required params"

    const-string v8, "utm_medium"

    const-string v9, "utm_source"

    const-string v10, "utm_campaign"

    const/4 v11, 0x0

    const-string v12, "gclid"

    if-eqz v5, :cond_0

    :goto_0
    move-object v4, v11

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "utm_id"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "dclid"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "srsltid"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v4

    invoke-virtual {v4, v7}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const-string v5, "https://google.com/search?"

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc9j;->q0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "referrer"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    const-string v5, "_cmp"

    if-eqz v1, :cond_4

    :try_start_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    invoke-virtual {v1, v2}, Lc9j;->q0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "intent"

    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "_cer"

    const-string v13, "gclid=%s"

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/g;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/g;->n:Lvjj;

    invoke-virtual {v2, v3, v1}, Lvjj;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v1

    const-string v2, "Activity created with referrer"

    invoke-virtual {v1, v2, p0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v1

    sget-object v2, Lkwg;->a0:Llvg;

    invoke-virtual {v1, v11, v2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    const-string v6, "_ldl"

    const-string v13, "auto"

    if-eqz v1, :cond_7

    if-eqz v4, :cond_6

    :try_start_3
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/g;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/g;->n:Lvjj;

    invoke-virtual {p0, v3, v4}, Lvjj;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v1

    const-string v3, "Referrer does not contain valid parameters"

    invoke-virtual {v1, v3, p0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {p0, v13, v6, v11, v2}, Lcom/google/android/gms/measurement/internal/g;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_7
    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "utm_term"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "utm_content"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {v1, v13, v6, p0, v2}, Lcom/google/android/gms/measurement/internal/g;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object p0

    invoke-virtual {p0, v7}, Lu6h;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v0

    const-string v1, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v0, v1, p0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
