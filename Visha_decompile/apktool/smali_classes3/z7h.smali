.class public final Lz7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lenh;


# direct methods
.method public constructor <init>(Lenh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7h;->a:Lenh;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x3a

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    iget-object p0, p0, Lz7h;->a:Lenh;

    new-instance v0, La8h;

    iget-boolean p0, p0, Lenh;->p:Z

    invoke-direct {v0, p0}, La8h;-><init>(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
