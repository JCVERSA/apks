.class public final Lctf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lctf;->a:Lqyi;

    iput-object p3, p0, Lctf;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/g4;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lctf;->a:Lqyi;

    check-cast v1, Lj0h;

    invoke-virtual {v1}, Lj0h;->a()Li0h;

    move-result-object v1

    iget-object p0, p0, Lctf;->b:Lqyi;

    check-cast p0, Lg2h;

    invoke-virtual {p0}, Lg2h;->a()Lf2h;

    move-result-object p0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method
