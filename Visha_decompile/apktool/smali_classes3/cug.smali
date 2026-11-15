.class public final Lcug;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkbf;


# direct methods
.method public constructor <init>(Lkbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcug;->a:Lkbf;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcug;->a:Lkbf;

    invoke-virtual {p0}, Lkbf;->a()Lim5;

    move-result-object p0

    sget-object v0, Lcye;->M7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "persistFlags"

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcff;->b(Lim5;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0, v1}, Lcff;->a(Lim5;Ljava/lang/String;)V

    return-void
.end method
