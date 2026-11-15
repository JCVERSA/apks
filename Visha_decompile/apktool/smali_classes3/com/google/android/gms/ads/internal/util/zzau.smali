.class public final Lcom/google/android/gms/ads/internal/util/zzau;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lzog;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PointF;

.field public j:Landroid/graphics/PointF;

.field public k:Landroid/os/Handler;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->g:I

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzaf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzaf;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->l:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->h:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbt;->zza()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->k:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzay;->zza()Lzog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->b:Lzog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzau;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->c:Ljava/lang/String;

    return-void
.end method

.method public static final c(Ljava/util/List;Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/internal/util/zzau;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzau;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzm()Z

    move-result v4

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzay;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/util/zzay;->zzh(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzm()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/android/gms/ads/internal/util/zzay;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Device is linked for debug signals."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "The device is successfully linked for troubleshooting."

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzay;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzay;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/ads/internal/util/zzau;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzau;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/ads/internal/util/zzau;IIIIILandroid/content/DialogInterface;I)V
    .locals 0

    if-ne p7, p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Can not create dialog without Activity Context"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "No debug information"

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, "\\+"

    const-string p5, "%20"

    invoke-virtual {p2, p3, p5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroid/net/Uri$Builder;

    invoke-direct {p3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p3, p2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " = "

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "\n\n"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object p4, p2

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p2, "Ad Information"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzah;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/ads/internal/util/zzah;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;Ljava/lang/String;)V

    const-string p0, "Share"

    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/google/android/gms/ads/internal/util/zzai;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzai;-><init>()V

    const-string p2, "Close"

    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_4
    if-ne p7, p2, :cond_5

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Debug mode [Creative Preview] selected."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    sget-object p1, Lzef;->a:Lg8i;

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzag;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/util/zzag;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    if-ne p7, p3, :cond_6

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Debug mode [Troubleshooting] selected."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    sget-object p1, Lzef;->a:Lg8i;

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzat;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/util/zzat;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    if-ne p7, p4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->b:Lzog;

    sget-object p2, Lzef;->f:Lg8i;

    sget-object p3, Lzef;->a:Lg8i;

    invoke-virtual {p1}, Lzog;->r()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/google/android/gms/ads/internal/util/zzar;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/util/zzar;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    new-instance p1, Lcom/google/android/gms/ads/internal/util/zzas;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/ads/internal/util/zzas;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;Lg8i;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    if-ne p7, p5, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->b:Lzog;

    sget-object p2, Lzef;->f:Lg8i;

    sget-object p3, Lzef;->a:Lg8i;

    invoke-virtual {p1}, Lzog;->r()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/google/android/gms/ads/internal/util/zzae;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/util/zzae;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    new-instance p1, Lcom/google/android/gms/ads/internal/util/zzal;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/ads/internal/util/zzal;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;Lg8i;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/ads/internal/util/zzau;Lg8i;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzay;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzak;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/ads/internal/util/zzau;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzau;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/ads/internal/util/zzau;Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5

    if-eq p5, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p2, p3, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->b:Lzog;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdtz;->zzb:Lcom/google/android/gms/internal/ads/zzdtz;

    invoke-virtual {p1, p2}, Lzog;->n(Lcom/google/android/gms/internal/ads/zzdtz;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->b:Lzog;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdtz;->zzc:Lcom/google/android/gms/internal/ads/zzdtz;

    invoke-virtual {p1, p2}, Lzog;->n(Lcom/google/android/gms/internal/ads/zzdtz;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->b:Lzog;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdtz;->zza:Lcom/google/android/gms/internal/ads/zzdtz;

    invoke-virtual {p1, p2}, Lzog;->n(Lcom/google/android/gms/internal/ads/zzdtz;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzau;->zzr()V

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/ads/internal/util/zzau;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "text/plain"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "android.intent.extra.TEXT"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Share via"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzU(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/ads/internal/util/zzau;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzc(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/ads/internal/util/zzau;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->g:I

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzau;->zzr()V

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/ads/internal/util/zzau;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/ads/internal/util/zzay;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const-string p0, "In-app preview failed to load because of a system error. Please try again later."

    invoke-virtual {v0, v1, p0, v4, v4}, Lcom/google/android/gms/ads/internal/util/zzay;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzay;->f:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Creative is not pushed for this device."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    const-string p0, "There was no creative pushed from DFP to the device."

    invoke-virtual {v0, v1, p0, v5, v5}, Lcom/google/android/gms/ads/internal/util/zzay;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzay;->f:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "The app is not linked for creative preview."

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/ads/internal/util/zzay;->f:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Device is linked for in app preview."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    const-string p0, "The device is successfully linked for creative preview."

    invoke-virtual {v0, v1, p0, v5, v4}, Lcom/google/android/gms/ads/internal/util/zzay;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_3
    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/ads/internal/util/zzau;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzc(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/ads/internal/util/zzau;Lg8i;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzay;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzaj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzaj;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "None"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v1

    const-string v3, "Shake"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v8

    const-string v3, "Flick"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v9

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzau;->b:Lzog;

    invoke-virtual {v3}, Lzog;->b()Lcom/google/android/gms/internal/ads/zzdtz;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const-string v1, "Setup gesture"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzan;

    invoke-direct {v1, v6}, Lcom/google/android/gms/ads/internal/util/zzan;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p1, v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzao;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    const-string v1, "Dismiss"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzap;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/ads/internal/util/zzap;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;Ljava/util/concurrent/atomic/AtomicInteger;III)V

    const-string v1, "Save"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzaq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzaq;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final b(FFFF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->h:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->i:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->h:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->j:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->h:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->j:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->h:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DebugSignal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",AFMA Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Ad Unit ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzm(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzau;->g:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->i:Landroid/graphics/PointF;

    return-void

    :cond_0
    iget v4, p0, Lcom/google/android/gms/ads/internal/util/zzau;->g:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v6, 0x5

    const/4 v7, 0x1

    if-nez v4, :cond_2

    if-ne v0, v6, :cond_6

    iput v6, p0, Lcom/google/android/gms/ads/internal/util/zzau;->g:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->j:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->k:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->l:Ljava/lang/Runnable;

    sget-object v0, Lcye;->T4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    if-ne v4, v6, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v4, :cond_6

    move v0, v3

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    invoke-virtual {p0, v4, v6, v8, v9}, Lcom/google/android/gms/ads/internal/util/zzau;->b(FFFF)Z

    move-result v4

    xor-int/2addr v4, v7

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/google/android/gms/ads/internal/util/zzau;->b(FFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    :goto_1
    iput v5, p0, Lcom/google/android/gms/ads/internal/util/zzau;->g:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->k:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->d:Ljava/lang/String;

    return-void
.end method

.method public final zzo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->e:Ljava/lang/String;

    return-void
.end method

.method public final zzp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->c:Ljava/lang/String;

    return-void
.end method

.method public final zzq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->f:Ljava/lang/String;

    return-void
.end method

.method public final zzr()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string p0, "Can not create dialog without Activity Context"

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzay;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Creative preview (enabled)"

    const-string v3, "Creative preview"

    const/4 v4, 0x1

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzay;->zzm()Z

    move-result v1

    const-string v3, "Troubleshooting (enabled)"

    const-string v5, "Troubleshooting"

    if-eq v4, v1, :cond_2

    move-object v3, v5

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "Ad information"

    invoke-static {v1, v5, v4}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v8

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v10

    sget-object v2, Lcye;->o9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "Open ad inspector"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v11

    const-string v3, "Ad inspector settings"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/ads/internal/util/zzau;->c(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v12

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Select a debug mode"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzam;

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/ads/internal/util/zzam;-><init>(Lcom/google/android/gms/ads/internal/util/zzau;IIIII)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
