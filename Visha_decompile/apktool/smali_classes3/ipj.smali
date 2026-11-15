.class public final synthetic Lipj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfke;


# instance fields
.field public final a:Lcom/google/android/gms/location/a;

.field public final b:Lbme;

.field public final c:Lio5;

.field public final d:Lfke;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/a;Lbme;Lio5;Lfke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lipj;->a:Lcom/google/android/gms/location/a;

    iput-object p2, p0, Lipj;->b:Lbme;

    iput-object p3, p0, Lipj;->c:Lio5;

    iput-object p4, p0, Lipj;->d:Lfke;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    iget-object v0, p0, Lipj;->a:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lipj;->b:Lbme;

    iget-object v2, p0, Lipj;->c:Lio5;

    iget-object p0, p0, Lipj;->d:Lfke;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lbme;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/a;->w(Lio5;)Lxda;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lfke;->zza()V

    :cond_0
    return-void
.end method
