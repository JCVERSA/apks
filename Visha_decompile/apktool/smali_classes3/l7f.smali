.class public final Ll7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgff;


# instance fields
.field public final synthetic a:Leff;

.field public final synthetic b:Lm6f;


# direct methods
.method public constructor <init>(Ln7f;Leff;Lm6f;)V
    .locals 0

    iput-object p2, p0, Ll7f;->a:Leff;

    iput-object p3, p0, Ll7f;->b:Lm6f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-string v0, "callJs > getEngine: Promise rejected"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnp;

    const-string v1, "Unable to obtain a JavascriptEngine."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll7f;->a:Leff;

    invoke-virtual {v1, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Ll7f;->b:Lm6f;

    invoke-virtual {p0}, Lm6f;->h()V

    return-void
.end method
