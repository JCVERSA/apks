.class public final Lp6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liff;


# instance fields
.field public final synthetic a:Lq6f;


# direct methods
.method public constructor <init>(Lq6f;)V
    .locals 0

    iput-object p1, p0, Lp6f;->a:Lq6f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ls5f;

    sget-object v0, Lzef;->f:Lg8i;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbnj;-><init>(Lp6f;Ls5f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
