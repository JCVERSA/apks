.class public final Lcom/google/android/gms/measurement/internal/g;
.super Lnlh;
.source "SourceFile"


# instance fields
.field public c:Lcom/google/android/gms/measurement/internal/f;

.field public d:Lrsi;

.field public final e:Ljava/util/Set;

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Ljava/lang/Object;

.field public i:Luee;

.field public j:I

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:J

.field public m:I

.field public final n:Lvjj;

.field public o:Z

.field public final p:Lz8j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 3

    invoke-direct {p0, p1}, Lnlh;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g;->o:Z

    new-instance v0, Lh0j;

    invoke-direct {v0, p0}, Lh0j;-><init>(Lcom/google/android/gms/measurement/internal/g;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->p:Lz8j;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Luee;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Luee;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->i:Luee;

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/measurement/internal/g;->j:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/g;->l:J

    iput v0, p0, Lcom/google/android/gms/measurement/internal/g;->m:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lvjj;

    invoke-direct {v0, p1}, Lvjj;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->n:Lvjj;

    return-void
.end method

.method public static bridge synthetic a0(Lcom/google/android/gms/measurement/internal/g;Luee;Luee;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    filled-new-array {v0, v1}, [Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p2, v3}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    filled-new-array {v0, v2}, [Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Luee;->k(Luee;[Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object p0

    invoke-virtual {p0}, Lwzg;->t()V

    return-void
.end method

.method public static synthetic b0(Lcom/google/android/gms/measurement/internal/g;Luee;IJZZ)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/g;->l:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/g;->m:I

    invoke-static {v0, p2}, Luee;->i(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object p0

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v1, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lini;->g()V

    invoke-virtual {v0, p2}, Lroh;->v(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "consent_settings"

    invoke-virtual {p1}, Luee;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/g;->l:J

    iput p2, p0, Lcom/google/android/gms/measurement/internal/g;->m:I

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/measurement/internal/j;->s(Z)V

    if-eqz p6, :cond_2

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/j;->R(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p0, p2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic c0(Lcom/google/android/gms/measurement/internal/g;Ljava/lang/Boolean;Z)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/g;->N(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public static bridge synthetic d0(Lcom/google/android/gms/measurement/internal/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g;->O()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzhj;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzhj;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/g;->D(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final D(Landroid/os/Bundle;J)V
    .locals 11

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v1

    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {v1, v2}, Lu6h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    invoke-static {v0, p1, v1, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    invoke-static {v0, v3, v1, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    const-string v5, "value"

    invoke-static {v0, v5, v4, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "trigger_event_name"

    invoke-static {v0, v4, v1, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "trigger_timeout"

    const-class v8, Ljava/lang/Long;

    invoke-static {v0, v7, v8, v6}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "timed_out_event_name"

    invoke-static {v0, v9, v1, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "timed_out_event_params"

    const-class v10, Landroid/os/Bundle;

    invoke-static {v0, v9, v10, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "triggered_event_name"

    invoke-static {v0, v9, v1, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "triggered_event_params"

    invoke-static {v0, v9, v10, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "time_to_live"

    invoke-static {v0, v9, v8, v6}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "expired_event_name"

    invoke-static {v0, v6, v1, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expired_event_params"

    invoke-static {v0, v1, v10, v2}, Lmpi;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p3

    invoke-virtual {p3, p1}, Lc9j;->l0(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lc9j;->h0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lc9j;->o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p3

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr3h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to normalize conditional user property value"

    invoke-virtual {p3, p1, p0, p2}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v0, p3}, Lmpi;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v1, :cond_3

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    cmp-long v1, p2, v4

    if-gtz v1, :cond_2

    cmp-long v1, p2, v2

    if-gez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr3h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Invalid conditional user property timeout"

    invoke-virtual {v0, p2, p0, p1}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    cmp-long v1, p2, v4

    if-gtz v1, :cond_5

    cmp-long v1, p2, v2

    if-gez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzhm;-><init>(Lcom/google/android/gms/measurement/internal/g;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr3h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Invalid conditional user property time to live"

    invoke-virtual {v0, p2, p0, p1}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object p3, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p3

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr3h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid conditional user property value"

    invoke-virtual {p3, p1, p0, p2}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p2

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr3h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid conditional user property name"

    invoke-virtual {p2, p1, p0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Landroid/os/Bundle;IJ)V
    .locals 3

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-static {p1}, Luee;->f(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Luee;->a(Landroid/os/Bundle;)Luee;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/g;->F(Luee;IJ)V

    return-void
.end method

.method public final F(Luee;IJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    const/16 v10, -0xa

    if-eq v9, v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Luee;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Luee;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v0

    const-string v1, "Discarding empty consent settings"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/g;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/g;->i:Luee;

    iget v3, v0, Lcom/google/android/gms/measurement/internal/g;->j:I

    invoke-static {v9, v3}, Luee;->i(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/g;->i:Luee;

    invoke-virtual {v1, v3}, Luee;->j(Luee;)Z

    move-result v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v5}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/g;->i:Luee;

    invoke-virtual {v6, v5}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v5

    if-nez v5, :cond_2

    move v4, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/g;->i:Luee;

    invoke-virtual {v1, v5}, Luee;->c(Luee;)Luee;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/g;->i:Luee;

    iput v9, v0, Lcom/google/android/gms/measurement/internal/g;->j:I

    move v12, v4

    move v4, v7

    move v15, v3

    move-object v3, v1

    move v1, v15

    goto :goto_2

    :cond_3
    move-object v3, v1

    move v1, v4

    move v12, v1

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v0

    const-string v1, "Ignoring lower-priority consent settings, proposed settings"

    invoke-virtual {v0, v1, v3}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v13

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzhx;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move v9, v12

    move-object v10, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzhx;-><init>(Lcom/google/android/gms/measurement/internal/g;Luee;JIJZLuee;)V

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/d;->x(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzhy;

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v12

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzhy;-><init>(Lcom/google/android/gms/measurement/internal/g;Luee;IJZLuee;)V

    const/16 v1, 0x1e

    if-eq v9, v1, :cond_7

    if-ne v9, v10, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_3
    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/d;->x(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final G(Lrsi;)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->d:Lrsi;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lwd8;->p(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g;->d:Lrsi;

    return-void
.end method

.method public final H(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhw;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I(Luee;)V
    .locals 5

    invoke-virtual {p0}, Lini;->g()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {p1, v0}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {p1, v0}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v2

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_2
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->p()Z

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/e;->l(Z)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v3, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lini;->g()V

    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/g;->N(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    const-string v1, "auto"

    const-string v2, "_ldl"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/g;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 11

    move-object v0, p0

    move-object v2, p2

    move-object v1, p3

    if-nez p1, :cond_0

    const-string v3, "app"

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x18

    if-eqz p4, :cond_1

    iget-object v6, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v6

    invoke-virtual {v6, p2}, Lc9j;->l0(Ljava/lang/String;)I

    move-result v6

    :goto_1
    move v9, v6

    goto :goto_2

    :cond_1
    iget-object v6, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v6

    const-string v7, "user property"

    invoke-virtual {v6, v7, p2}, Lc9j;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x6

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    sget-object v8, Lzri;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10, p2}, Lc9j;->L(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/16 v6, 0xf

    goto :goto_1

    :cond_3
    iget-object v8, v6, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {v6, v7, v5, p2}, Lc9j;->K(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    const/4 v6, 0x1

    if-eqz v9, :cond_6

    iget-object v1, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    iget-object v3, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {v1, p2, v5, v6}, Lc9j;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    :cond_5
    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g;->p:Lz8j;

    const/4 v3, 0x0

    const-string v5, "_ev"

    move-object p0, v2

    move-object p1, v0

    move-object p2, v3

    move p3, v9

    move-object p4, v5

    move-object/from16 p5, v1

    move/from16 p6, v4

    invoke-virtual/range {p0 .. p6}, Lc9j;->z(Lz8j;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz v1, :cond_b

    iget-object v7, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lc9j;->h0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_9

    iget-object v3, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v3

    iget-object v8, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {v3, p2, v5, v6}, Lc9j;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_7

    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_8
    iget-object v1, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g;->p:Lz8j;

    const/4 v3, 0x0

    const-string v5, "_ev"

    move-object p0, v1

    move-object p1, v0

    move-object p2, v3

    move p3, v7

    move-object p4, v5

    move-object/from16 p5, v2

    move/from16 p6, v4

    invoke-virtual/range {p0 .. p6}, Lc9j;->z(Lz8j;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9
    iget-object v4, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lc9j;->o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object v1, v3

    move-object v2, p2

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/g;->A(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p2

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/g;->A(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8

    invoke-static {p1}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const-string v0, "allow_personalized_ads"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "_npa"

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v2, 0x1

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->m:Lpnh;

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const-string p3, "true"

    :cond_1
    invoke-virtual {v0, p3}, Lpnh;->b(Ljava/lang/String;)V

    move-object v6, p2

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p2

    iget-object p2, p2, Lroh;->m:Lpnh;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lpnh;->b(Ljava/lang/String;)V

    move-object v6, p3

    goto :goto_1

    :cond_3
    move-object v3, p2

    move-object v6, p3

    :goto_2
    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object p0

    const-string p1, "User property not set since app measurement is disabled"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->r()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzlc;

    move-object v2, p2

    move-wide v4, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzlc;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/j;->x(Lcom/google/android/gms/measurement/internal/zzlc;)V

    return-void
.end method

.method public final M(Lkti;)V
    .locals 1

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p0

    const-string p1, "OnEventListener had not been registered"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final N(Ljava/lang/Boolean;Z)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v1, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lroh;->r(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p2

    iget-object v0, p2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lini;->g()V

    invoke-virtual {p2}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->p()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g;->O()V

    return-void
.end method

.method public final O()V
    .locals 8

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->m:Lpnh;

    invoke-virtual {v0}, Lpnh;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "unset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "app"

    const-string v3, "_npa"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "app"

    const-string v4, "_npa"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/g;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g;->e0()V

    invoke-static {}, Lhej;->b()Z

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lkwg;->f0:Llvg;

    invoke-virtual {v0, v1, v2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object v0

    iget-object v0, v0, Lb7j;->d:Lz6j;

    invoke-virtual {v0}, Lz6j;->a()V

    :cond_3
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzhg;-><init>(Lcom/google/android/gms/measurement/internal/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->v()V

    return-void
.end method

.method public final P(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    const/16 p0, 0x19

    return p0
.end method

.method public final Q()Ljava/lang/Boolean;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/d;->q(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public final R()Ljava/lang/Double;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhv;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/d;->q(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public final S()Ljava/lang/Integer;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhu;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhu;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/d;->q(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final T()Ljava/lang/Long;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzht;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzht;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/d;->q(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public final U()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final V()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h;->q()Lu2j;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lu2j;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final W()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h;->q()Lu2j;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lu2j;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final X()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhs;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhs;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/d;->q(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string p1, "Cannot get conditional user properties from analytics worker thread"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    invoke-static {}, Lb7e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string p1, "Cannot get conditional user properties from main thread"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v1

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzho;

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzho;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    const-string v6, "get conditional user properties"

    move-object v2, v1

    move-object v3, v0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/d;->q(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string p1, "Timed out waiting for get conditional user properties"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lc9j;->u(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string p1, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    invoke-static {}, Lb7e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string p1, "Cannot get user properties from main thread"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzhq;

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzhq;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x1388

    const-string v4, "get user properties"

    move-object v0, v8

    move-object v1, v7

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/d;->q(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "Timed out waiting for handle get user properties, includeInternal"

    invoke-virtual {p0, p2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/collection/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/collection/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzlc;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzlc;->zza()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzlc;->zzb:Ljava/lang/String;

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public final e0()V
    .locals 5

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    sget-object v1, Lkwg;->Z:Llvg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    iget-object v1, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    const-string v1, "google_analytics_deferred_deep_link_enabled"

    invoke-virtual {v0, v1}, Loce;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Deferred Deep Link feature enabled."

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzhf;-><init>(Lcom/google/android/gms/measurement/internal/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->N()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g;->o:Z

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "previous_os_version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->A()Ltme;

    move-result-object v2

    invoke-virtual {v2}, Lboi;->j()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->A()Ltme;

    move-result-object v0

    invoke-virtual {v0}, Lboi;->j()V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/g;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/zzhn;-><init>(Lcom/google/android/gms/measurement/internal/g;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final synthetic p(Landroid/os/Bundle;)V
    .locals 12

    if-nez p1, :cond_0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p0

    iget-object p0, p0, Lroh;->w:Ljjh;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Ljjh;->b(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->w:Ljjh;

    invoke-virtual {v0}, Ljjh;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_3

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc9j;->S(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/g;->p:Lz8j;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1b

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lc9j;->z(Lz8j;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v4

    const-string v5, "Invalid default event parameter type. Name, value"

    invoke-virtual {v4, v5, v2, v3}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lc9j;->U(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v3

    const-string v4, "Invalid default event parameter name. Name"

    invoke-virtual {v3, v4, v2}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v4

    iget-object v5, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    const-string v5, "param"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v2, v6, v3}, Lc9j;->N(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lc9j;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object p1

    invoke-virtual {p1}, Loce;->j()I

    move-result p1

    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    move-result v1

    if-gt v1, p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    if-le v2, p1, :cond_8

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g;->p:Lz8j;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lc9j;->z(Lz8j;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p1

    const-string v1, "Too many default event parameters set. Discarding beyond event parameter limit"

    invoke-virtual {p1, v1}, Lu6h;->a(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->w:Ljjh;

    invoke-virtual {p1, v0}, Ljjh;->b(Landroid/os/Bundle;)V

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/g;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10

    move-object v0, p0

    move-object v2, p2

    if-nez p1, :cond_0

    const-string v1, "app"

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    const-string v3, "screen_view"

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    const/4 v3, 0x1

    if-eqz p5, :cond_3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/g;->d:Lrsi;

    if-eqz v4, :cond_3

    invoke-static {p2}, Lc9j;->U(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    move v7, v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p6

    move v6, p5

    move v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/g;->z(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/gms/measurement/internal/h;->D(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/google/android/gms/measurement/internal/e;->t()V

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v1, "auto"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/g;->z(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p0}, Lini;->g()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g;->d:Lrsi;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lc9j;->U(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v7, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/g;->v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    const/4 v13, 0x1

    invoke-static/range {p1 .. p1}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lini;->g()V

    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v1, v9, v8}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, v7, Lcom/google/android/gms/measurement/internal/g;->f:Z

    const/4 v14, 0x0

    if-nez v0, :cond_3

    iput-boolean v13, v7, Lcom/google/android/gms/measurement/internal/g;->f:Z

    :try_start_0
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->s()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v13, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initialize"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_4
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    if-eqz p6, :cond_5

    invoke-static/range {p2 .. p2}, Lc9j;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v0

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v1, v1, Lroh;->w:Ljjh;

    invoke-virtual {v1}, Ljjh;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lc9j;->y(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    const/4 v15, 0x0

    if-nez p8, :cond_a

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    const-string v1, "_iap"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2, v9}, Lc9j;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    sget-object v3, Lkqi;->a:[Ljava/lang/String;

    sget-object v5, Lkqi;->b:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5, v9}, Lc9j;->L(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v4, 0xd

    goto :goto_3

    :cond_7
    iget-object v3, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {v1, v2, v0, v9}, Lc9j;->K(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move v4, v15

    :goto_3
    if-eqz v4, :cond_a

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->r()Lu6h;

    move-result-object v1

    iget-object v2, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object v2

    invoke-virtual {v2, v9}, Lr3h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    invoke-virtual {v1, v3, v2}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    iget-object v2, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {v1, v9, v0, v13}, Lc9j;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    :cond_9
    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/g;->p:Lz8j;

    const/4 v3, 0x0

    const-string v5, "_ev"

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v0

    move/from16 p6, v15

    invoke-virtual/range {p0 .. p6}, Lc9j;->z(Lz8j;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_a
    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/measurement/internal/h;->r(Z)Lu2j;

    move-result-object v1

    const-string v2, "_sc"

    if-eqz v1, :cond_b

    invoke-virtual {v12, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iput-boolean v13, v1, Lu2j;->d:Z

    :cond_b
    if-eqz p6, :cond_c

    if-nez p8, :cond_c

    move v3, v13

    goto :goto_4

    :cond_c
    move v3, v15

    :goto_4
    invoke-static {v1, v12, v3}, Lc9j;->x(Lu2j;Landroid/os/Bundle;Z)V

    const-string v1, "am"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static/range {p2 .. p2}, Lc9j;->U(Ljava/lang/String;)Z

    move-result v3

    if-eqz p6, :cond_e

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/g;->d:Lrsi;

    if-eqz v4, :cond_e

    if-nez v3, :cond_e

    if-eqz v1, :cond_d

    move/from16 v16, v13

    goto :goto_5

    :cond_d
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object v1

    invoke-virtual {v1, v9}, Lr3h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object v2

    invoke-virtual {v2, v12}, Lr3h;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v3, v1, v2}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/g;->d:Lrsi;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/g;->d:Lrsi;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lrsi;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_e
    move/from16 v16, v1

    :goto_5
    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->r()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    invoke-virtual {v1, v9}, Lc9j;->i0(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v2, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->r()Lu6h;

    move-result-object v2

    iget-object v3, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->D()Lr3h;

    move-result-object v3

    invoke-virtual {v3, v9}, Lr3h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    invoke-virtual {v2, v4, v3}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    iget-object v3, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {v2, v9, v0, v13}, Lc9j;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    :cond_f
    iget-object v2, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/g;->p:Lz8j;

    const-string v4, "_ev"

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move-object/from16 p2, p9

    move/from16 p3, v1

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    move/from16 p6, v15

    invoke-virtual/range {p0 .. p6}, Lc9j;->z(Lz8j;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_10
    const-string v0, "_sn"

    const-string v1, "_si"

    const-string v6, "_o"

    filled-new-array {v6, v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls71;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v0, v6

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lc9j;->s0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v12}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/measurement/internal/h;->r(Z)Lu2j;

    move-result-object v1

    const-wide/16 v5, 0x0

    const-string v4, "_ae"

    if-eqz v1, :cond_11

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object v1

    iget-object v1, v1, Lb7j;->e:Lw6j;

    iget-object v2, v1, Lw6j;->d:Lb7j;

    iget-object v2, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v13, v1, Lw6j;->b:J

    sub-long v13, v2, v13

    iput-wide v2, v1, Lw6j;->b:J

    cmp-long v1, v13, v5

    if-lez v1, :cond_11

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    invoke-virtual {v1, v12, v13, v14}, Lc9j;->v(Landroid/os/Bundle;J)V

    :cond_11
    invoke-static {}, Lkdj;->b()Z

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v1

    sget-object v2, Lkwg;->e0:Llvg;

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "auto"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_15

    const-string v1, "_ssr"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    invoke-virtual {v12, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lv0a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v2, v13

    goto :goto_6

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_13
    :goto_6
    iget-object v3, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v3

    iget-object v3, v3, Lroh;->t:Lpnh;

    invoke-virtual {v3}, Lpnh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx8j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v1, v1, Lroh;->t:Lpnh;

    invoke-virtual {v1, v2}, Lpnh;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    iget-object v0, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_15
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v1, v1, Lroh;->t:Lpnh;

    invoke-virtual {v1}, Lpnh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v12, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v1, v1, Lroh;->o:Likh;

    invoke-virtual {v1}, Likh;->a()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_17

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lroh;->u(J)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v1, v1, Lroh;->q:Llih;

    invoke-virtual {v1}, Llih;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v1

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    invoke-virtual {v1, v2}, Lu6h;->a(Ljava/lang/String;)V

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v18

    const-string v2, "auto"

    const-string v3, "_sid"

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v13, v4

    move-object/from16 v4, v17

    move-wide v8, v5

    move-wide/from16 v5, v18

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_8

    :cond_17
    move-object v13, v4

    move-wide v8, v5

    :goto_8
    const-string v1, "extend_session"

    invoke-virtual {v12, v1, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    invoke-virtual {v1, v2}, Lu6h;->a(Ljava/lang/String;)V

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object v1

    iget-object v1, v1, Lb7j;->d:Lz6j;

    const/4 v2, 0x1

    invoke-virtual {v1, v10, v11, v2}, Lz6j;->b(JZ)V

    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v15

    :goto_9
    if-ge v3, v2, :cond_1d

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1c

    iget-object v5, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    invoke-virtual {v12, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    new-array v8, v6, [Landroid/os/Bundle;

    check-cast v5, Landroid/os/Bundle;

    aput-object v5, v8, v15

    goto :goto_a

    :cond_19
    instance-of v6, v5, [Landroid/os/Parcelable;

    if-eqz v6, :cond_1a

    check-cast v5, [Landroid/os/Parcelable;

    array-length v6, v5

    const-class v8, [Landroid/os/Bundle;

    invoke-static {v5, v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Landroid/os/Bundle;

    goto :goto_a

    :cond_1a
    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_1b

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Landroid/os/Bundle;

    goto :goto_a

    :cond_1b
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_1c

    invoke-virtual {v12, v4, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1c
    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_9

    :cond_1d
    move v8, v15

    :goto_b
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_21

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v8, :cond_1e

    const-string v2, "_ep"

    move-object/from16 v9, p1

    goto :goto_c

    :cond_1e
    move-object/from16 v9, p1

    move-object/from16 v2, p2

    :goto_c
    invoke-virtual {v1, v0, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_1f

    iget-object v3, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc9j;->r0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1f
    move-object v12, v1

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaw;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {v3, v12}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Landroid/os/Bundle;)V

    move-object v1, v5

    move-object/from16 v4, p1

    move-object v15, v5

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;J)V

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object v1

    move-object/from16 v5, p9

    invoke-virtual {v1, v15, v5}, Lcom/google/android/gms/measurement/internal/j;->n(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V

    if-nez v16, :cond_20

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/g;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkti;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lkti;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v5, p9

    goto :goto_d

    :cond_20
    const/4 v1, 0x1

    add-int/2addr v8, v1

    const/4 v15, 0x0

    goto :goto_b

    :cond_21
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h;->r(Z)Lu2j;

    move-result-object v0

    if-eqz v0, :cond_22

    move-object/from16 v1, p2

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object v0

    iget-object v1, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Lb7j;->e:Lw6j;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Lw6j;->d(ZZJ)Z

    :cond_22
    return-void

    :cond_23
    iget-object v0, v7, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Lkti;)V
    .locals 1

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p0

    const-string p1, "OnEventListener already registered"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final x(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhl;-><init>(Lcom/google/android/gms/measurement/internal/g;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(JZ)V
    .locals 5

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Resetting analytics data (FE)"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, v0, Lb7j;->e:Lw6j;

    invoke-virtual {v0}, Lw6j;->a()V

    invoke-static {}, Lsfj;->b()Z

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    sget-object v1, Lkwg;->u0:Llvg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->t()V

    :cond_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v3, v1, Lroh;->e:Likh;

    invoke-virtual {v3, p1, p2}, Likh;->b(J)V

    iget-object p1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->t:Lpnh;

    invoke-virtual {p1}, Lpnh;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v1, Lroh;->t:Lpnh;

    invoke-virtual {p1, v2}, Lpnh;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lhej;->b()Z

    iget-object p1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object p1

    sget-object p2, Lkwg;->f0:Llvg;

    invoke-virtual {p1, v2, p2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2

    iget-object p1, v1, Lroh;->o:Likh;

    invoke-virtual {p1, v3, v4}, Likh;->b(J)V

    :cond_2
    iget-object p1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object p1

    invoke-virtual {p1}, Loce;->x()Z

    move-result p1

    if-nez p1, :cond_3

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {v1, p1}, Lroh;->s(Z)V

    :cond_3
    iget-object p1, v1, Lroh;->u:Lpnh;

    invoke-virtual {p1, v2}, Lpnh;->b(Ljava/lang/String;)V

    iget-object p1, v1, Lroh;->v:Likh;

    invoke-virtual {p1, v3, v4}, Likh;->b(J)V

    iget-object p1, v1, Lroh;->w:Ljjh;

    invoke-virtual {p1, v2}, Ljjh;->b(Landroid/os/Bundle;)V

    if-eqz p3, :cond_4

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j;->p()V

    :cond_4
    invoke-static {}, Lhej;->b()Z

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object p1

    iget-object p1, p1, Lb7j;->d:Lz6j;

    invoke-virtual {p1}, Lz6j;->a()V

    :cond_5
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/g;->o:Z

    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 13

    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v2, [Landroid/os/Parcelable;

    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_0

    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v2, Ljava/util/List;

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object v1, p0

    iget-object v0, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzhi;

    move-object v0, v12

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzhi;-><init>(Lcom/google/android/gms/measurement/internal/g;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method
