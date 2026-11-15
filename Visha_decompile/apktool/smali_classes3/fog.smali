.class public final synthetic Lfog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/t4;

.field public final synthetic c:Lwrh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/t4;Lwrh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfog;->b:Lcom/google/android/gms/internal/ads/t4;

    iput-object p2, p0, Lfog;->c:Lwrh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfog;->b:Lcom/google/android/gms/internal/ads/t4;

    iget-object p0, p0, Lfog;->c:Lwrh;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/t4;->f(Lcom/google/android/gms/internal/ads/t4;Lwrh;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
