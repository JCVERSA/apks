.class public final Lszg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lubg;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lubg;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lszg;->a:Landroid/content/Context;

    iput-object p2, p0, Lszg;->b:Lubg;

    iput-object p3, p0, Lszg;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final c(Lvmh;I)Z
    .locals 0

    iget-object p0, p0, Lvmh;->a:Lsmh;

    iget-object p0, p0, Lsmh;->a:Lenh;

    iget-object p0, p0, Lenh;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 9

    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Leoh;

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v0, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lhmh;->s:Llmh;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzm(Llmh;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lszg;->a:Landroid/content/Context;

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v6, p0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v7, p1, Lenh;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    iget-object v8, p1, Lenh;->g:Ljava/util/ArrayList;

    iget-object v3, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual/range {v1 .. v8}, Leoh;->u(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/internal/ads/zzbfi;Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v0, Leoh;

    invoke-virtual {v0}, Leoh;->d()Lcom/google/android/gms/internal/ads/zzbpj;

    move-result-object v1

    invoke-virtual {v0}, Leoh;->e()Lcom/google/android/gms/internal/ads/zzbpk;

    move-result-object v2

    invoke-virtual {v0}, Leoh;->i()Lcom/google/android/gms/internal/ads/zzbpn;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eqz v3, :cond_0

    invoke-static {p1, v5}, Lszg;->c(Lvmh;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Lddg;->g0(Lcom/google/android/gms/internal/ads/zzbpn;)Lddg;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1, v5}, Lszg;->c(Lvmh;I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lddg;->J(Lcom/google/android/gms/internal/ads/zzbpj;)Lddg;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v6, 0x2

    invoke-static {p1, v6}, Lszg;->c(Lvmh;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lddg;->H(Lcom/google/android/gms/internal/ads/zzbpj;)Lddg;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p1, v5}, Lszg;->c(Lvmh;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lddg;->K(Lcom/google/android/gms/internal/ads/zzbpk;)Lddg;

    move-result-object v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    invoke-static {p1, v4}, Lszg;->c(Lvmh;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Lddg;->I(Lcom/google/android/gms/internal/ads/zzbpk;)Lddg;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_4

    iget-object v6, p1, Lvmh;->a:Lsmh;

    iget-object v6, v6, Lsmh;->a:Lenh;

    invoke-virtual {v5}, Lddg;->P()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lenh;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, p0, Lszg;->b:Lubg;

    iget-object v6, p3, Lnxg;->a:Ljava/lang/String;

    new-instance v7, Lpuf;

    invoke-direct {v7, p1, p2, v6}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Ltdg;

    invoke-direct {p1, v5}, Ltdg;-><init>(Lddg;)V

    new-instance p2, Ljfg;

    invoke-direct {p2, v2, v1, v3}, Ljfg;-><init>(Lcom/google/android/gms/internal/ads/zzbpk;Lcom/google/android/gms/internal/ads/zzbpj;Lcom/google/android/gms/internal/ads/zzbpn;)V

    invoke-virtual {v4, v7, p1, p2}, Lubg;->d(Lpuf;Ltdg;Ljfg;)Lfdg;

    move-result-object p1

    iget-object p2, p3, Lnxg;->c:Lx0g;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcuf;->g()Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p1}, Lcuf;->c()Lm0g;

    move-result-object p2

    new-instance p3, Lqpf;

    invoke-direct {p3, v0}, Lqpf;-><init>(Leoh;)V

    iget-object p0, p0, Lszg;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, p0}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lgdg;->h()Lzcg;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    const-string p1, "No corresponding native ad listener"

    invoke-direct {p0, v4, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    const-string p1, "No native ad mappers"

    invoke-direct {p0, v4, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p0
.end method
