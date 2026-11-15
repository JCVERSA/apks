.class public final synthetic Lupj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnqj;


# instance fields
.field public final synthetic a:Lhqj;


# direct methods
.method public synthetic constructor <init>(Lhqj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lupj;->a:Lhqj;

    return-void
.end method


# virtual methods
.method public final a(ILn5f;[I)Ljava/util/List;
    .locals 9

    sget-object v0, Lrqj;->i:Lcom/google/android/gms/internal/ads/zzfyh;

    sget v0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v0, Ll4i;

    invoke-direct {v0}, Ll4i;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p2, Ln5f;->a:I

    if-ge v1, v2, :cond_0

    iget-object v6, p0, Lupj;->a:Lhqj;

    new-instance v8, Laqj;

    aget v7, p3, v1

    move-object v2, v8

    move v3, p1

    move-object v4, p2

    move v5, v1

    invoke-direct/range {v2 .. v7}, Laqj;-><init>(ILn5f;ILhqj;I)V

    invoke-virtual {v0, v8}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
