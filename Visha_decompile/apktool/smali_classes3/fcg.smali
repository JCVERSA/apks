.class public final Lfcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lldg;


# instance fields
.field public A:J

.field public B:J

.field public C:Lcom/google/android/gms/ads/internal/client/zzdc;

.field public final D:La2g;

.field public final E:Leeg;

.field public final a:Landroid/content/Context;

.field public final b:Lsdg;

.field public final c:Lorg/json/JSONObject;

.field public final d:Lhig;

.field public final e:Lddg;

.field public final f:Lfre;

.field public final g:Lb0g;

.field public final h:Lizf;

.field public final i:Lr8g;

.field public final j:Lhmh;

.field public final k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final l:Lenh;

.field public final m:Loqf;

.field public final n:Lieg;

.field public final o:Lfy0;

.field public final p:Lk8g;

.field public final q:Lwth;

.field public final r:Lyjg;

.field public final s:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final t:Lcom/google/android/gms/internal/ads/zzebe;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Landroid/graphics/Point;

.field public z:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsdg;Lorg/json/JSONObject;Lhig;Lddg;Lfre;Lb0g;Lizf;Lr8g;Lhmh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lenh;Loqf;Lieg;Lfy0;Lk8g;Lwth;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzebe;Lyjg;Leeg;La2g;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfcg;->u:Z

    iput-boolean v1, v0, Lfcg;->w:Z

    iput-boolean v1, v0, Lfcg;->x:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lfcg;->y:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lfcg;->z:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lfcg;->A:J

    iput-wide v1, v0, Lfcg;->B:J

    move-object v1, p1

    iput-object v1, v0, Lfcg;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lfcg;->b:Lsdg;

    move-object v1, p3

    iput-object v1, v0, Lfcg;->c:Lorg/json/JSONObject;

    move-object v1, p4

    iput-object v1, v0, Lfcg;->d:Lhig;

    move-object v1, p5

    iput-object v1, v0, Lfcg;->e:Lddg;

    move-object v1, p6

    iput-object v1, v0, Lfcg;->f:Lfre;

    move-object v1, p7

    iput-object v1, v0, Lfcg;->g:Lb0g;

    move-object v1, p8

    iput-object v1, v0, Lfcg;->h:Lizf;

    move-object v1, p9

    iput-object v1, v0, Lfcg;->i:Lr8g;

    move-object v1, p10

    iput-object v1, v0, Lfcg;->j:Lhmh;

    move-object v1, p11

    iput-object v1, v0, Lfcg;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v1, p12

    iput-object v1, v0, Lfcg;->l:Lenh;

    move-object/from16 v1, p13

    iput-object v1, v0, Lfcg;->m:Loqf;

    move-object/from16 v1, p14

    iput-object v1, v0, Lfcg;->n:Lieg;

    move-object/from16 v1, p15

    iput-object v1, v0, Lfcg;->o:Lfy0;

    move-object/from16 v1, p16

    iput-object v1, v0, Lfcg;->p:Lk8g;

    move-object/from16 v1, p17

    iput-object v1, v0, Lfcg;->q:Lwth;

    move-object/from16 v1, p18

    iput-object v1, v0, Lfcg;->s:Lcom/google/android/gms/internal/ads/zzfgn;

    move-object/from16 v1, p19

    iput-object v1, v0, Lfcg;->t:Lcom/google/android/gms/internal/ads/zzebe;

    move-object/from16 v1, p20

    iput-object v1, v0, Lfcg;->r:Lyjg;

    move-object/from16 v1, p21

    iput-object v1, v0, Lfcg;->E:Leeg;

    move-object/from16 v1, p22

    iput-object v1, v0, Lfcg;->D:La2g;

    return-void
.end method

.method public static bridge synthetic u(Lfcg;)Lizf;
    .locals 0

    iget-object p0, p0, Lfcg;->h:Lizf;

    return-object p0
.end method

.method public static bridge synthetic v(Lfcg;)Lb0g;
    .locals 0

    iget-object p0, p0, Lfcg;->g:Lb0g;

    return-object p0
.end method

.method public static bridge synthetic w(Lfcg;)La2g;
    .locals 0

    iget-object p0, p0, Lfcg;->D:La2g;

    return-object p0
.end method

.method public static bridge synthetic x(Lfcg;)Lr8g;
    .locals 0

    iget-object p0, p0, Lfcg;->i:Lr8g;

    return-object p0
.end method

.method public static bridge synthetic y(Lfcg;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lfcg;->j:Lhmh;

    iget-object p0, p0, Lfcg;->E:Leeg;

    invoke-virtual {p0, p1, v0}, Leeg;->a(Landroid/view/View;Lhmh;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Touch event data is null. No touch event is reported."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "touch_reporting"

    invoke-virtual {p0, v0}, Lfcg;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lfcg;->f:Lfre;

    invoke-virtual {p0}, Lfre;->c()Lare;

    move-result-object p0

    invoke-interface {p0, v0, v1, p1}, Lare;->zzl(III)V

    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-virtual {p0}, Lfcg;->zza()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcye;->Fb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfcg;->l:Lenh;

    iget-object p0, p0, Lenh;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzj:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    iget-object v3, v1, Lfcg;->c:Lorg/json/JSONObject;

    const-string v4, "allow_sdk_custom_click_gesture"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcye;->Fb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_3

    iget-boolean v4, v1, Lfcg;->x:Z

    if-nez v4, :cond_1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lfcg;->s()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Custom click reporting failed. Ad unit id not in the allow list."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    iget-object v4, v1, Lfcg;->a:Landroid/content/Context;

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    invoke-static {v4, v0, v6, v2, v7}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzg(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzf(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zze(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v1, v10, v0}, Lfcg;->q(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lfcg;->z:Landroid/graphics/Point;

    iget-object v11, v1, Lfcg;->y:Landroid/graphics/Point;

    invoke-static {v10, v4, v0, v11}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzc(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v5, :cond_6

    :try_start_0
    const-string v4, "custom_click_gesture_signal"

    iget-object v0, v1, Lfcg;->z:Landroid/graphics/Point;

    iget-object v5, v1, Lfcg;->y:Landroid/graphics/Point;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v15, "y"

    const-string v1, "x"

    if-eqz v0, :cond_4

    :try_start_3
    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    iget v0, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "start_point"

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "end_point"

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "duration_ms"

    move/from16 v1, p7

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    :goto_2
    :try_start_4
    const-string v1, "Error occurred while grabbing custom click gesture signals."

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {v3, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Error occurred while adding CustomClickGestureSignals to adJson."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "FirstPartyNativeAdCore.performCustomClickGesture"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_6
    :goto_4
    const/4 v0, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v0

    move/from16 v10, p5

    move v11, v12

    invoke-virtual/range {v1 .. v11}, Lfcg;->z(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/internal/client/zzdc;)V
    .locals 0

    iput-object p1, p0, Lfcg;->C:Lcom/google/android/gms/ads/internal/client/zzdc;

    return-void
.end method

.method public final e(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lfcg;->y:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lfcg;->z:Landroid/graphics/Point;

    iget-boolean v0, p0, Lfcg;->v:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lfcg;->p:Lk8g;

    invoke-virtual {v0, p1}, Lk8g;->F(Landroid/view/View;)V

    iput-boolean v1, p0, Lfcg;->v:Z

    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lfcg;->m:Loqf;

    invoke-virtual {p1, p0}, Loqf;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lfcg;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget p0, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzi(I)Z

    move-result p0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_4

    if-eqz p0, :cond_5

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final f(Landroid/os/Bundle;)Z
    .locals 11

    const-string v0, "impression_reporting"

    invoke-virtual {p0, v0}, Lfcg;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzl(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    sget-object p1, Lcye;->Bb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lfcg;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lfcg;->t(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final g(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    iget-object v3, v0, Lfcg;->a:Landroid/content/Context;

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static {v3, p3, v4, p2, v5}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzg(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzf(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zze(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v8, p1

    invoke-virtual {p0, p1, p3}, Lfcg;->q(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lfcg;->z:Landroid/graphics/Point;

    iget-object v10, v0, Lfcg;->y:Landroid/graphics/Point;

    invoke-static {v9, v3, v2, v10}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzc(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v10

    sget-object v2, Lcye;->S3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v8

    :goto_0
    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move/from16 v9, p5

    move v10, v11

    invoke-virtual/range {v0 .. v10}, Lfcg;->z(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lfcg;->i(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-boolean p3, p0, Lfcg;->x:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lfcg;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "custom_click_gesture_eligible"

    const/4 p3, 0x1

    invoke-virtual {p2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string p0, "nas"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Unable to create native click meta data JSON."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object p2
.end method

.method public final i(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 1

    iget-object p0, p0, Lfcg;->a:Landroid/content/Context;

    invoke-static {p0, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzg(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzf(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zze(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "asset_view_signal"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Unable to create native ad view signals JSON."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j(Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lfcg;->y:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lfcg;->z:Landroid/graphics/Point;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lfcg;->p:Lk8g;

    invoke-virtual {p2, p1}, Lk8g;->G(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lfcg;->v:Z

    return-void
.end method

.method public final k(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    invoke-static {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbv;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lfcg;->y:Landroid/graphics/Point;

    iget-object p1, p0, Lfcg;->o:Lfy0;

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfcg;->B:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfcg;->r:Lyjg;

    invoke-virtual {p1, p2}, Lyjg;->b(Landroid/view/InputEvent;)V

    iput-wide v0, p0, Lfcg;->A:J

    iget-object p1, p0, Lfcg;->y:Landroid/graphics/Point;

    iput-object p1, p0, Lfcg;->z:Landroid/graphics/Point;

    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p2, p0, Lfcg;->y:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p0, p0, Lfcg;->f:Lfre;

    invoke-virtual {p0, p1}, Lfre;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final l(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .locals 10

    iget-object v0, p0, Lfcg;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzg(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzf(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zze(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, p1}, Lfcg;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lfcg;->j:Lhmh;

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzh(Landroid/content/Context;Lhmh;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v9, p1

    invoke-virtual/range {v1 .. v9}, Lfcg;->t(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lfcg;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lfcg;->n:Lieg;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lieg;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/zzbhk;)V
    .locals 3

    iget-object v0, p0, Lfcg;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lfcg;->n:Lieg;

    invoke-virtual {p0, p1}, Lieg;->c(Lcom/google/android/gms/internal/ads/zzbhk;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lfcg;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lfcg;->e:Lddg;

    invoke-virtual {v2}, Lddg;->X()Lcom/google/android/gms/ads/internal/client/zzev;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lfcg;->w:Z

    iget-object p1, p0, Lfcg;->q:Lwth;

    invoke-virtual {v2}, Lddg;->X()Lcom/google/android/gms/ads/internal/client/zzev;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzev;->zzf()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfcg;->j:Lhmh;

    iget-object v2, v2, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v3, p0, Lfcg;->s:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {p1, v1, v2, v3, v0}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    invoke-virtual {p0}, Lfcg;->zzi()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lfcg;->w:Z

    iget-object v1, p0, Lfcg;->q:Lwth;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdg;->zzf()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lfcg;->j:Lhmh;

    iget-object v2, v2, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v3, p0, Lfcg;->s:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1, p1, v2, v3, v0}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    invoke-virtual {p0}, Lfcg;->zzi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcye;->L3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lfcg;->f:Lfre;

    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    iget-object p0, p0, Lfcg;->a:Landroid/content/Context;

    invoke-interface {v0, p0, p1, v1}, Lare;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Exception getting data."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-object v1
.end method

.method public final q(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lfcg;->e:Lddg;

    invoke-virtual {p0}, Lddg;->P()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p0, "3099"

    return-object p0

    :cond_3
    const-string p0, "2099"

    return-object p0

    :cond_4
    const-string p0, "1099"

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lfcg;->c:Lorg/json/JSONObject;

    const-string v0, "allow_pub_event_reporting"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final s()Z
    .locals 2

    iget-object p0, p0, Lfcg;->c:Lorg/json/JSONObject;

    const-string v0, "allow_custom_click_gesture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final t(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lfcg;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcye;->L3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "view_signals"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    const-string p1, "policy_validator_enabled"

    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    iget-object p2, p0, Lfcg;->a:Landroid/content/Context;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string p4, "window"

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/WindowManager;

    invoke-static {p4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzu(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p5, 0x0

    :try_start_1
    const-string p6, "width"

    iget p7, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v1

    invoke-virtual {v1, p2, p7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzb(Landroid/content/Context;I)I

    move-result p7

    invoke-virtual {p3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p6, "height"

    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object p7

    invoke-virtual {p7, p2, p4}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzb(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object p3, p5

    :goto_1
    :try_start_2
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcye;->J8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lfcg;->d:Lhig;

    const-string p2, "/clickRecorded"

    new-instance p3, Lbcg;

    invoke-direct {p3, p0, p5}, Lbcg;-><init>(Lfcg;Lecg;)V

    invoke-virtual {p1, p2, p3}, Lhig;->l(Ljava/lang/String;Ln3f;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lfcg;->d:Lhig;

    const-string p2, "/logScionEvent"

    new-instance p3, Lacg;

    invoke-direct {p3, p0, p5}, Lacg;-><init>(Lfcg;Lecg;)V

    invoke-virtual {p1, p2, p3}, Lhig;->l(Ljava/lang/String;Ln3f;)V

    :goto_2
    iget-object p1, p0, Lfcg;->d:Lhig;

    const-string p2, "/nativeImpression"

    new-instance p3, Lccg;

    invoke-direct {p3, p0, p8, p5}, Lccg;-><init>(Lfcg;Landroid/view/View;Lecg;)V

    invoke-virtual {p1, p2, p3}, Lhig;->l(Ljava/lang/String;Ln3f;)V

    const-string p2, "/nativeImpressionFlowControl"

    new-instance v1, Ldcg;

    iget-object p5, p0, Lfcg;->q:Lwth;

    iget-object p3, p0, Lfcg;->j:Lhmh;

    iget-object p6, p3, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object p7, p0, Lfcg;->s:Lcom/google/android/gms/internal/ads/zzfgn;

    const/4 p8, 0x0

    move-object p3, v1

    move-object p4, p0

    invoke-direct/range {p3 .. p8}, Ldcg;-><init>(Lfcg;Lwth;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;Lecg;)V

    invoke-virtual {p1, p2, v1}, Lhig;->l(Ljava/lang/String;Ln3f;)V

    const-string p2, "google.afma.nativeAds.handleImpression"

    invoke-virtual {p1, p2, v0}, Lhig;->g(Ljava/lang/String;Lorg/json/JSONObject;)Lim5;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    invoke-static {p1, p2}, Lcff;->a(Lim5;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    iget-boolean p1, p0, Lfcg;->u:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lfcg;->j:Lhmh;

    iget-object p2, p0, Lfcg;->a:Landroid/content/Context;

    iget-object p3, p0, Lfcg;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object p4, p0, Lfcg;->l:Lenh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object p5

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object p1, p1, Lhmh;->C:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p4, Lenh;->f:Ljava/lang/String;

    invoke-virtual {p5, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzay;->zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lfcg;->u:Z

    :cond_2
    const/4 p0, 0x1

    return p0

    :goto_3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Unable to create impression JSON."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final z(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .locals 5

    const-string v0, "tracking_urls_and_actions"

    const-string v1, "has_custom_click_handler"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ad"

    iget-object v4, p0, Lfcg;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "asset_view_signal"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    invoke-virtual {v2, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    invoke-virtual {v2, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    invoke-virtual {v2, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    invoke-virtual {v2, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lfcg;->b:Lsdg;

    iget-object p3, p0, Lfcg;->e:Lddg;

    invoke-virtual {p3}, Lddg;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lsdg;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgx;

    move-result-object p4

    const/4 p5, 0x0

    const/4 p7, 0x1

    if-eqz p4, :cond_0

    move p4, p7

    goto :goto_0

    :cond_0
    move p4, p5

    :goto_0
    invoke-virtual {v2, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p4, "provided_signals"

    invoke-virtual {v2, p4, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string p8, "asset_id"

    invoke-virtual {p4, p8, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "template"

    invoke-virtual {p3}, Lddg;->P()I

    move-result p8

    invoke-virtual {p4, p6, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p6, "view_aware_api_used"

    invoke-virtual {p4, p6, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p6, "custom_mute_requested"

    iget-object p8, p0, Lfcg;->l:Lenh;

    iget-object p8, p8, Lenh;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz p8, :cond_1

    iget-boolean p8, p8, Lcom/google/android/gms/internal/ads/zzbfi;->zzg:Z

    if-eqz p8, :cond_1

    move p8, p7

    goto :goto_1

    :cond_1
    move p8, p5

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :goto_1
    invoke-virtual {p4, p6, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p6, "custom_mute_enabled"

    invoke-virtual {p3}, Lddg;->h()Ljava/util/List;

    move-result-object p8

    invoke-interface {p8}, Ljava/util/List;->isEmpty()Z

    move-result p8

    if-nez p8, :cond_2

    invoke-virtual {p3}, Lddg;->X()Lcom/google/android/gms/ads/internal/client/zzev;

    move-result-object p8

    if-eqz p8, :cond_2

    move p8, p7

    goto :goto_2

    :cond_2
    move p8, p5

    :goto_2
    invoke-virtual {p4, p6, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p6, p0, Lfcg;->n:Lieg;

    invoke-virtual {p6}, Lieg;->a()Lcom/google/android/gms/internal/ads/zzbhk;

    move-result-object p6

    if-eqz p6, :cond_3

    const-string p6, "custom_one_point_five_click_enabled"

    invoke-virtual {v4, p6, p5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p6

    if-eqz p6, :cond_3

    const-string p6, "custom_one_point_five_click_eligible"

    invoke-virtual {p4, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string p6, "timestamp"

    iget-object p8, p0, Lfcg;->o:Lfy0;

    invoke-interface {p8}, Lfy0;->currentTimeMillis()J

    move-result-wide p8

    invoke-virtual {p4, p6, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean p6, p0, Lfcg;->x:Z

    if-eqz p6, :cond_4

    invoke-virtual {p0}, Lfcg;->s()Z

    move-result p6

    if-eqz p6, :cond_4

    const-string p6, "custom_click_gesture_eligible"

    invoke-virtual {p4, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz p10, :cond_5

    const-string p6, "is_custom_click_gesture"

    invoke-virtual {p4, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p3}, Lddg;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lsdg;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgx;

    move-result-object p2

    if-eqz p2, :cond_6

    move p5, p7

    :cond_6
    invoke-virtual {p4, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "click_signals"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x0

    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-nez p5, :cond_7

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_7
    :goto_3
    const-string p6, "click_string"

    invoke-virtual {p5, p6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lfcg;->f:Lfre;

    invoke-virtual {p6}, Lfre;->c()Lare;

    move-result-object p6

    iget-object p8, p0, Lfcg;->a:Landroid/content/Context;

    invoke-interface {p6, p8, p5, p1}, Lare;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    :try_start_2
    const-string p5, "Exception obtaining click signals"

    sget p6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p5, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p3

    :goto_5
    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "open_chrome_custom_tab"

    invoke-virtual {p4, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p1, Lcye;->N8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Ld28;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "try_fallback_for_deep_link"

    invoke-virtual {p4, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_8
    sget-object p1, Lcye;->O8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Ld28;->j()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "in_app_link_handling_for_android_11_enabled"

    invoke-virtual {p4, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    const-string p1, "click"

    invoke-virtual {v2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lfcg;->o:Lfy0;

    invoke-interface {p2}, Lfy0;->currentTimeMillis()J

    move-result-wide p4

    const-string p2, "time_from_last_touch_down"

    iget-wide p6, p0, Lfcg;->A:J

    sub-long p6, p4, p6

    invoke-virtual {p1, p2, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "time_from_last_touch"

    iget-wide p6, p0, Lfcg;->B:J

    sub-long/2addr p4, p6

    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lfcg;->j:Lhmh;

    invoke-virtual {p1}, Lhmh;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lfcg;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_a

    const-string p2, "gws_query_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_a
    if-eqz p3, :cond_b

    iget-object p1, p0, Lfcg;->t:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object p2, p0, Lfcg;->e:Lddg;

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzebe;->zzq(Ljava/lang/String;Lddg;)V

    :cond_b
    iget-object p0, p0, Lfcg;->d:Lhig;

    const-string p1, "google.afma.nativeAds.handleClick"

    invoke-virtual {p0, p1, v2}, Lhig;->g(Ljava/lang/String;Lorg/json/JSONObject;)Lim5;

    move-result-object p0

    const-string p1, "Error during performing handleClick"

    invoke-static {p0, p1}, Lcff;->a(Lim5;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_6
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Unable to create click JSON."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzD()Z
    .locals 0

    invoke-virtual {p0}, Lfcg;->s()Z

    move-result p0

    return p0
.end method

.method public final zza()I
    .locals 2

    iget-object p0, p0, Lfcg;->l:Lenh;

    iget-object p0, p0, Lenh;->i:Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz p0, :cond_1

    sget-object v0, Lcye;->Fb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zzi:I

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzi()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfcg;->C:Lcom/google/android/gms/ads/internal/client/zzdc;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdc;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzj()V
    .locals 3

    iget-object v0, p0, Lfcg;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lfcg;->n:Lieg;

    invoke-virtual {p0}, Lieg;->b()V

    return-void
.end method

.method public final zzk()V
    .locals 0

    iget-object p0, p0, Lfcg;->d:Lhig;

    invoke-virtual {p0}, Lhig;->i()V

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lfcg;->z(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzo(Landroid/os/Bundle;)V
    .locals 13

    if-nez p1, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Click data is null. No click is reported."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "click_reporting"

    invoke-virtual {p0, v0}, Lfcg;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "click_signal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "asset_id"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzl(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lfcg;->z(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzr()V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lfcg;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lfcg;->d:Lhig;

    const-string v1, "google.afma.nativeAds.handleDownloadedImpression"

    invoke-virtual {p0, v1, v0}, Lhig;->g(Ljava/lang/String;Lorg/json/JSONObject;)Lim5;

    move-result-object p0

    const-string v0, "Error during performing handleDownloadedImpression"

    invoke-static {p0, v0}, Lcff;->a(Lim5;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzt()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lfcg;->t(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z

    return-void
.end method

.method public final zzx()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcg;->x:Z

    return-void
.end method
