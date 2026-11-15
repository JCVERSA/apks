.class public final Lpsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lasf;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpsf;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lpsf;->a:Lqyi;

    check-cast p0, Lwtf;

    invoke-virtual {p0}, Lwtf;->a()Lcom/google/android/gms/internal/ads/i4;

    move-result-object p0

    new-instance v0, Li8g;

    new-instance v1, Lzrf;

    invoke-direct {v1, p0}, Lzrf;-><init>(Lcom/google/android/gms/internal/ads/i4;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-direct {v0, v1, p0}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
