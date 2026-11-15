.class public final Lycg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lzcg;


# direct methods
.method public constructor <init>(Lzcg;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lycg;->a:Landroid/view/View;

    iput-object p1, p0, Lycg;->b:Lzcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    sget-object p0, Lcye;->u5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "omid native display exp"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lycg;->b:Lzcg;

    iget-object p0, p0, Lycg;->a:Landroid/view/View;

    check-cast p1, Lfxg;

    invoke-static {v0, p0, p1}, Lzcg;->d0(Lzcg;Landroid/view/View;Lfxg;)V

    return-void
.end method
