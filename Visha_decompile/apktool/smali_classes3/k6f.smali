.class public final Lk6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liff;


# instance fields
.field public final synthetic a:Lm6f;


# direct methods
.method public constructor <init>(Lm6f;)V
    .locals 0

    iput-object p1, p0, Lk6f;->a:Lm6f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr6f;

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lk6f;->a:Lm6f;

    invoke-static {p0}, Lm6f;->g(Lm6f;)Lq6f;

    move-result-object p0

    invoke-virtual {p0}, Lq6f;->j()V

    return-void
.end method
