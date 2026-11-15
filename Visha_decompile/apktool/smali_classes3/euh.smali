.class public final Leuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lave;


# instance fields
.field public final synthetic a:Lguh;


# direct methods
.method public constructor <init>(Lguh;)V
    .locals 0

    iput-object p1, p0, Leuh;->a:Lguh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    sget-object v0, Lcye;->w:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Leuh;->a:Lguh;

    invoke-static {p0, p1}, Lguh;->e(Lguh;Z)V

    :cond_0
    return-void
.end method
