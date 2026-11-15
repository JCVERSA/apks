.class public final Lpmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvng;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/String;

.field public final c:Lzlf;

.field public final d:Lrmf;


# direct methods
.method public constructor <init>(Lzlf;Lrmf;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpmf;->c:Lzlf;

    iput-object p2, p0, Lpmf;->d:Lrmf;

    iput-object p3, p0, Lpmf;->a:Ljava/lang/Long;

    iput-object p4, p0, Lpmf;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/r4;
    .locals 8

    iget-object v0, p0, Lpmf;->d:Lrmf;

    iget-object v1, p0, Lpmf;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0}, Lrmf;->a(Lrmf;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lrmf;->b()Lyng;

    move-result-object v5

    iget-object v6, p0, Lpmf;->c:Lzlf;

    iget-object v7, p0, Lpmf;->b:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Ldog;->a(JLandroid/content/Context;Lyng;Llkf;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r4;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/s4;
    .locals 8

    iget-object v0, p0, Lpmf;->d:Lrmf;

    iget-object v1, p0, Lpmf;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0}, Lrmf;->a(Lrmf;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lrmf;->b()Lyng;

    move-result-object v5

    iget-object v6, p0, Lpmf;->c:Lzlf;

    iget-object v7, p0, Lpmf;->b:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Leog;->a(JLandroid/content/Context;Lyng;Llkf;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    move-result-object p0

    return-object p0
.end method
