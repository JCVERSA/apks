.class public final Ln6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liff;


# instance fields
.field public final synthetic a:Lm6f;


# direct methods
.method public constructor <init>(Lq6f;Lm6f;)V
    .locals 0

    iput-object p2, p0, Ln6f;->a:Lm6f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ls5f;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-interface {p1}, Ls5f;->zzj()Ls6f;

    move-result-object p1

    iget-object p0, p0, Ln6f;->a:Lm6f;

    invoke-virtual {p0, p1}, Llff;->e(Ljava/lang/Object;)V

    return-void
.end method
