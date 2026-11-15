.class public final Lzof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpof;


# instance fields
.field public final a:Lzog;


# direct methods
.method public constructor <init>(Lzog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzof;->a:Lzog;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lcye;->p9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lzof;->a:Lzog;

    invoke-virtual {p0, p1}, Lzog;->o(Lorg/json/JSONObject;)V

    return-void
.end method
