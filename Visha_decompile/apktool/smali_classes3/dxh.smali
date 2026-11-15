.class public final Ldxh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxh;->a:Landroid/content/Context;

    iput-object p2, p0, Ldxh;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/h6;->b0()Lnxh;

    move-result-object v0

    iget-object v1, p0, Ldxh;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnxh;->v(Ljava/lang/String;)Lnxh;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lnxh;->x(I)Lnxh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/g6;->b0()Llxh;

    move-result-object v3

    invoke-virtual {v3, p1}, Llxh;->v(Ljava/lang/String;)Llxh;

    invoke-virtual {v3, v2}, Llxh;->w(I)Llxh;

    invoke-virtual {v0, v3}, Lnxh;->w(Llxh;)Lnxh;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    iget-object p0, p0, Ldxh;->b:Landroid/os/Looper;

    new-instance v0, Lexh;

    invoke-direct {v0, v1, p0, p1}, Lexh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/h6;)V

    invoke-virtual {v0}, Lexh;->a()V

    return-void
.end method
