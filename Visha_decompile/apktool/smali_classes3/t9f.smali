.class public final Lt9f;
.super Laaf;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Map;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lejf;Ljava/util/Map;)V
    .locals 1

    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0}, Laaf;-><init>(Lejf;Ljava/lang/String;)V

    iput-object p2, p0, Lt9f;->c:Ljava/util/Map;

    invoke-interface {p1}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lt9f;->d:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic h(Lt9f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lt9f;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final i()V
    .locals 6

    iget-object v0, p0, Lt9f;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Laaf;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance v1, Lhxe;

    invoke-direct {v1, v0}, Lhxe;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lhxe;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Feature is not supported by the device."

    invoke-virtual {p0, v0}, Laaf;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lt9f;->c:Ljava/util/Map;

    const-string v2, "iurl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Image url cannot be empty."

    invoke-virtual {p0, v0}, Laaf;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    const-string v3, "([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v3

    invoke-virtual {v3}, Lqef;->f()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v3, :cond_4

    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string v4, "Save image"

    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_5

    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    const-string v4, "Allow Ad to store image in Picture gallery?"

    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_6

    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v4, "Accept"

    :goto_2
    new-instance v5, Lr9f;

    invoke-direct {v5, p0, v1, v2}, Lr9f;-><init>(Lt9f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_7

    sget v1, Lcom/google/android/gms/ads/impl/R$string;->s4:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const-string v1, "Decline"

    :goto_3
    new-instance v2, Ls9f;

    invoke-direct {v2, p0}, Ls9f;-><init>(Lt9f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_8
    :goto_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Image type not recognized: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaf;->c(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid image url: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laaf;->c(Ljava/lang/String;)V

    return-void
.end method
