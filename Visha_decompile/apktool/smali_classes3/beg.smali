.class public final Lbeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0f;


# instance fields
.field public final synthetic a:Ldfg;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ldfg;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lbeg;->a:Ldfg;

    iput-object p2, p0, Lbeg;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p0, p0, Lbeg;->a:Ldfg;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lbeg;->a:Ldfg;

    invoke-interface {p0}, Ldfg;->zzo()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lbeg;->a:Ldfg;

    invoke-interface {p0}, Ldfg;->zzp()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdim;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v1, p0, Lbeg;->a:Ldfg;

    invoke-interface {v1}, Ldfg;->zzm()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_1

    iget-object p0, p0, Lbeg;->b:Landroid/view/ViewGroup;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
