.class public final Lfzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyag;

.field public final c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lyag;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzg;->a:Landroid/content/Context;

    iput-object p2, p0, Lfzg;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lfzg;->b:Lyag;

    iput-object p4, p0, Lfzg;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic c(Lfzg;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 0

    iget-object p0, p0, Lfzg;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object p0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 7

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

    iget-object v2, p0, Lfzg;->a:Landroid/content/Context;

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v6, p0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v3, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual/range {v1 .. v6}, Leoh;->t(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lpuf;

    iget-object v1, p3, Lnxg;->a:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lw9g;

    new-instance v1, Lezg;

    invoke-direct {v1, p0, p3, p2}, Lezg;-><init>(Lfzg;Lnxg;Lhmh;)V

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lw9g;-><init>(Lebg;Lejf;)V

    iget-object p2, p0, Lfzg;->b:Lyag;

    invoke-virtual {p2, v0, p1}, Lyag;->c(Lpuf;Lw9g;)Lt9g;

    move-result-object p1

    invoke-virtual {p1}, Lcuf;->c()Lm0g;

    move-result-object p2

    new-instance v0, Lqpf;

    iget-object v1, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v1, Leoh;

    invoke-direct {v0, v1}, Lqpf;-><init>(Leoh;)V

    iget-object p0, p0, Lfzg;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p0}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcuf;->g()Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p1}, Lt9g;->i()Ls9g;

    move-result-object p0

    return-object p0
.end method
