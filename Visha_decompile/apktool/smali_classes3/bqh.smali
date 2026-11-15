.class public final Lbqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbqh;
    .locals 1

    sget-object v0, Laqh;->a:Lbqh;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lozh;->a()Llzh;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Llzh;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m8;->a(Ljava/util/concurrent/ExecutorService;)Lg8i;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
