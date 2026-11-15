.class public final Lkrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Llrg;


# direct methods
.method public constructor <init>(Llrg;)V
    .locals 0

    iput-object p1, p0, Lkrg;->a:Llrg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcye;->i6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Llrg;->d()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lkrg;->a:Llrg;

    invoke-static {p0}, Llrg;->b(Llrg;)Lpug;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lpug;->i(I)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lvmh;

    sget-object v0, Lcye;->i6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkrg;->a:Llrg;

    invoke-static {p0}, Llrg;->b(Llrg;)Lpug;

    move-result-object v0

    iget-object p1, p1, Lvmh;->b:Lumh;

    iget-object p1, p1, Lumh;->b:Lkmh;

    iget v1, p1, Lkmh;->f:I

    invoke-virtual {v0, v1}, Lpug;->i(I)V

    invoke-static {p0}, Llrg;->b(Llrg;)Lpug;

    move-result-object p0

    iget-wide v0, p1, Lkmh;->g:J

    invoke-virtual {p0, v0, v1}, Lpug;->j(J)V

    :cond_0
    return-void
.end method
