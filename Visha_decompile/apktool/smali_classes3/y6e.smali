.class public final Ly6e;
.super Lfq9;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lfq9;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final v()Lxda;
    .locals 2

    invoke-static {}, Lyda;->a()Lyda$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth-api-phone/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth-api-phone/a;-><init>(Ly6e;)V

    invoke-virtual {v0, v1}, Lyda$a;->b(Las8;)Lyda$a;

    move-result-object v0

    sget-object v1, Ls7e;->c:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyda$a;->d([Lcom/google/android/gms/common/Feature;)Lyda$a;

    move-result-object v0

    const/16 v1, 0x61f

    invoke-virtual {v0, v1}, Lyda$a;->e(I)Lyda$a;

    move-result-object v0

    invoke-virtual {v0}, Lyda$a;->a()Lyda;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->k(Lyda;)Lxda;

    move-result-object p0

    return-object p0
.end method
