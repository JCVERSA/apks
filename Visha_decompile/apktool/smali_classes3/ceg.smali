.class public final Lceg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Landroid/widget/ImageView$ScaleType;


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/zzg;

.field public final b:Lenh;

.field public final c:Lidg;

.field public final d:Lddg;

.field public final e:Lteg;

.field public final f:Lbfg;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lcom/google/android/gms/internal/ads/zzbfi;

.field public final j:Lbdg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lceg;->k:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;Lenh;Lidg;Lddg;Lteg;Lbfg;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lbdg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceg;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p2, p0, Lceg;->b:Lenh;

    iget-object p1, p2, Lenh;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object p1, p0, Lceg;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object p3, p0, Lceg;->c:Lidg;

    iput-object p4, p0, Lceg;->d:Lddg;

    iput-object p5, p0, Lceg;->e:Lteg;

    iput-object p6, p0, Lceg;->f:Lbfg;

    iput-object p7, p0, Lceg;->g:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lceg;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lceg;->j:Lbdg;

    return-void
.end method

.method public static synthetic a(Lceg;Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lceg;->d:Lddg;

    invoke-virtual {v0}, Lddg;->S()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lddg;->P()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lddg;->P()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lddg;->P()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lceg;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object p0, p0, Lceg;->b:Lenh;

    iget-object p0, p0, Lenh;->f:Ljava/lang/String;

    const-string v1, "2"

    invoke-interface {v0, p0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "1"

    invoke-interface {v0, p0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_1
    iget-object v1, p0, Lceg;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object p0, p0, Lceg;->b:Lenh;

    invoke-virtual {v0}, Lddg;->P()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lenh;->f:Ljava/lang/String;

    invoke-interface {v1, p0, v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public static synthetic b(Lceg;Ldfg;)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lceg;->c:Lidg;

    invoke-virtual {v1}, Lidg;->f()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lidg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    goto :goto_2

    :cond_1
    :goto_0
    const-string v1, "1098"

    const-string v2, "3011"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move v2, v3

    :goto_1
    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    aget-object v5, v1, v2

    invoke-interface {p1, v5}, Ldfg;->zzg(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lceg;->d:Lddg;

    invoke-virtual {v6}, Lddg;->R()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lddg;->R()Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lceg;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    if-nez v5, :cond_7

    iget v5, v7, Lcom/google/android/gms/internal/ads/zzbfi;->zze:I

    invoke-static {v2, v5}, Lceg;->h(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lddg;->Y()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v7

    instance-of v7, v7, Lcom/google/android/gms/internal/ads/zzbfd;

    if-nez v7, :cond_5

    move-object v1, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lddg;->Y()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbfd;

    if-nez v5, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbfd;->zzc()I

    move-result v5

    invoke-static {v2, v5}, Lceg;->h(Landroid/widget/RelativeLayout$LayoutParams;I)V

    move-object v5, v4

    :cond_6
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbfe;

    invoke-direct {v8, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzbfe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfd;Landroid/widget/RelativeLayout$LayoutParams;)V

    sget-object v1, Lcye;->a4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v1, v8

    :cond_7
    :goto_3
    const/4 v2, -0x1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    new-instance v5, Lcom/google/android/gms/ads/formats/zza;

    invoke-interface {p1}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/android/gms/ads/formats/zza;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    :goto_4
    invoke-interface {p1}, Ldfg;->zzk()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v1, v0}, Ldfg;->zzq(Ljava/lang/String;Landroid/view/View;Z)V

    :goto_5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdim;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v7, v3

    :cond_c
    if-ge v7, v5, :cond_d

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v8}, Ldfg;->zzg(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup;

    add-int/2addr v7, v0

    if-eqz v9, :cond_c

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_d
    move-object v8, v4

    :goto_6
    iget-object v1, p0, Lceg;->h:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdin;

    invoke-direct {v5, p0, v8}, Lcom/google/android/gms/internal/ads/zzdin;-><init>(Lceg;Landroid/view/ViewGroup;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v8, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-virtual {p0, v8, v0}, Lceg;->i(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v6}, Lddg;->f0()Lejf;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {v6}, Lddg;->f0()Lejf;

    move-result-object p0

    new-instance v0, Lbeg;

    invoke-direct {v0, p1, v8}, Lbeg;-><init>(Ldfg;Landroid/view/ViewGroup;)V

    invoke-interface {p0, v0}, Lejf;->zzar(Lz0f;)V

    return-void

    :cond_f
    sget-object v0, Lcye;->fa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v8, v3}, Lceg;->i(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v6}, Lddg;->d0()Lejf;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {v6}, Lddg;->d0()Lejf;

    move-result-object p0

    new-instance v0, Lbeg;

    invoke-direct {v0, p1, v8}, Lbeg;-><init>(Ldfg;Landroid/view/ViewGroup;)V

    invoke-interface {p0, v0}, Lejf;->zzar(Lz0f;)V

    return-void

    :cond_10
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    :cond_11
    if-eqz v4, :cond_14

    iget-object p0, p0, Lceg;->j:Lbdg;

    invoke-virtual {p0}, Lbdg;->a()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object p0

    if-eqz p0, :cond_14

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_14

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Ldfg;->zzj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    if-eqz p0, :cond_13

    sget-object p1, Lcye;->h6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_8

    :cond_13
    :goto_7
    sget-object p0, Lceg;->k:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_8
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Could not get main image drawable"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_14
    :goto_9
    return-void
.end method

.method public static h(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method


# virtual methods
.method public final c(Ldfg;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lceg;->e:Lteg;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lceg;->c:Lidg;

    invoke-virtual {p0}, Lidg;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {v0}, Lteg;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcex; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "web view can not be obtained"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ldfg;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lceg;->c:Lidg;

    iget-object v1, v1, Lidg;->a:Lhmh;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzh(Landroid/content/Context;Lhmh;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Activity context is needed for policy validator."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lceg;->f:Lbfg;

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lbfg;->a(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzb()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcex; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "web view can not be obtained"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e(Ldfg;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdio;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdio;-><init>(Lceg;Ldfg;)V

    iget-object p0, p0, Lceg;->g:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lceg;->i(Landroid/view/ViewGroup;Z)Z

    move-result p0

    return p0
.end method

.method public final g(Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lceg;->i(Landroid/view/ViewGroup;Z)Z

    move-result p0

    return p0
.end method

.method public final i(Landroid/view/ViewGroup;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lceg;->d:Lddg;

    invoke-virtual {p0}, Lddg;->S()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lceg;->d:Lddg;

    invoke-virtual {p0}, Lddg;->T()Landroid/view/View;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    sget-object p2, Lcye;->c4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/16 v0, 0x11

    if-eqz p2, :cond_3

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_1

    :cond_3
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_1
    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    return p0
.end method
