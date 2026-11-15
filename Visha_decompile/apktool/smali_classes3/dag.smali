.class public final Ldag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lw9g;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldag;->a:Lqyi;

    iput-object p3, p0, Ldag;->b:Lqyi;

    iput-object p4, p0, Ldag;->c:Lqyi;

    iput-object p5, p0, Ldag;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ldag;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ldag;->b:Lqyi;

    check-cast v1, Lklf;

    invoke-virtual {v1}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v2, p0, Ldag;->c:Lqyi;

    check-cast v2, Lquf;

    invoke-virtual {v2}, Lquf;->a()Lhmh;

    move-result-object v2

    iget-object p0, p0, Ldag;->d:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object p0

    new-instance v3, Li8g;

    new-instance v4, Lu9g;

    invoke-direct {v4, v0, v1, v2, p0}, Lu9g;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lenh;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-direct {v3, v4, p0}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
