.class public final Lrzi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lozi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lozi;

    const-string v0, ""

    invoke-direct {p2, p1, v0, p3, p4}, Lozi;-><init>(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V

    iput-object p2, p0, Lrzi;->a:Lozi;

    return-void
.end method

.method public static b(Lozi;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lozi;->a:Lcom/google/android/gms/internal/play_billing/zzjg;

    iget-object p0, p0, Lozi;->c:Lcom/google/android/gms/internal/play_billing/zzjg;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lyci;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lyci;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)Lrzi;
    .locals 1

    new-instance p1, Lrzi;

    const-string v0, ""

    invoke-direct {p1, p0, v0, p2, p3}, Lrzi;-><init>(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static e(Lo4i;Lozi;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lozi;->a:Lcom/google/android/gms/internal/play_billing/zzjg;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lyci;->e(Lo4i;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V

    iget-object p1, p1, Lozi;->c:Lcom/google/android/gms/internal/play_billing/zzjg;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lyci;->e(Lo4i;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lrzi;->a:Lozi;

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lo4i;->w(I)I

    move-result p1

    invoke-static {p0, p2, p3}, Lrzi;->b(Lozi;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p2

    add-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public final c()Lozi;
    .locals 0

    iget-object p0, p0, Lrzi;->a:Lozi;

    return-object p0
.end method
