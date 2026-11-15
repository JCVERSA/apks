.class public final synthetic Lgrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5g;


# instance fields
.field public final synthetic a:Lrqh;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lrqh;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgrh;->a:Lrqh;

    iput-object p2, p0, Lgrh;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lgrh;->a:Lrqh;

    check-cast p1, Lmrh;

    invoke-virtual {v0}, Lrqh;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {v0}, Lrqh;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lgrh;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v1, v0, p0}, Lmrh;->o(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
