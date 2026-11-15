.class public final synthetic Lqwh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxh1;


# instance fields
.field public final synthetic a:Lboe;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lboe;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqwh;->a:Lboe;

    iput p2, p0, Lqwh;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lxda;)Ljava/lang/Object;
    .locals 1

    sget v0, Lrwh;->e:I

    invoke-virtual {p1}, Lxda;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lqwh;->b:I

    iget-object p0, p0, Lqwh;->a:Lboe;

    invoke-virtual {p1}, Lxda;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/i6;

    invoke-virtual {p0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/g;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/i6;->a([B)Liyh;

    move-result-object p0

    invoke-virtual {p0, v0}, Liyh;->a(I)Liyh;

    invoke-virtual {p0}, Liyh;->c()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method
