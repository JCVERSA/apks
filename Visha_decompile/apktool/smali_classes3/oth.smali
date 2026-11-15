.class public final Loth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldwg;


# direct methods
.method public constructor <init>(Ldwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loth;->a:Ldwg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v6, Lfwg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    move-object v0, v6

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lfwg;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Loth;->a:Ldwg;

    invoke-virtual {p0, v6}, Ldwg;->e(Lfwg;)V

    return-void
.end method
