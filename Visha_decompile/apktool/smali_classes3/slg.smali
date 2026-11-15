.class public final Lslg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lslg;->a:Lqyi;

    iput-object p2, p0, Lslg;->b:Lqyi;

    iput-object p4, p0, Lslg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lslg;->a:Lqyi;

    check-cast v0, Lugh;

    invoke-virtual {v0}, Lugh;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lslg;->b:Lqyi;

    check-cast v1, Lskf;

    invoke-virtual {v1}, Lskf;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v2

    iget-object p0, p0, Lslg;->c:Lqyi;

    check-cast p0, Llyi;

    invoke-virtual {p0}, Llyi;->c()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    sget-object v3, Lcye;->g5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/o0;

    new-instance v4, Lexe;

    invoke-direct {v4, v1}, Lexe;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/o0;-><init>(Lexe;)V

    new-instance v1, Ltlg;

    invoke-direct {v1, v0}, Ltlg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/q4;

    invoke-direct {v0, v3, p0}, Lcom/google/android/gms/internal/ads/q4;-><init>(Lcom/google/android/gms/internal/ads/o0;Ljava/util/Map;)V

    new-instance p0, Li8g;

    invoke-direct {p0, v0, v2}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
