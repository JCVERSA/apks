.class public final Lpjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lsjh;


# direct methods
.method public constructor <init>(Lsjh;)V
    .locals 0

    iput-object p1, p0, Lpjh;->a:Lsjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuy;

    new-instance v0, Lqjh;

    new-instance v1, Leph;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzj:Ljava/lang/String;

    invoke-direct {v1, v2}, Leph;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lqjh;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcph;Lrjh;)V

    iget-object p0, p0, Lpjh;->a:Lsjh;

    invoke-static {p0, v0}, Lsjh;->d(Lsjh;Lqjh;)V

    invoke-static {p0}, Lsjh;->a(Lsjh;)Lqjh;

    move-result-object p0

    return-object p0
.end method
