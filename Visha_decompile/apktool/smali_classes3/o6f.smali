.class public final Lo6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgff;


# instance fields
.field public final synthetic a:Lm6f;


# direct methods
.method public constructor <init>(Lq6f;Lm6f;)V
    .locals 0

    iput-object p2, p0, Lo6f;->a:Lm6f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    sget-object v0, Lcye;->L7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo6f;->a:Lm6f;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create JS engine reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "SdkJavascriptFactory.createNewReference.FailureCallback"

    invoke-virtual {p0, v0, v1}, Llff;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lo6f;->a:Lm6f;

    invoke-virtual {p0}, Llff;->c()V

    return-void
.end method
