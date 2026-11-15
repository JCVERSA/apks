.class public final synthetic Lirh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5g;


# instance fields
.field public final synthetic a:Lrqh;


# direct methods
.method public synthetic constructor <init>(Lrqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirh;->a:Lrqh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lirh;->a:Lrqh;

    check-cast p1, Lmrh;

    invoke-virtual {p0}, Lrqh;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {p0}, Lrqh;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lmrh;->p(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;)V

    return-void
.end method
