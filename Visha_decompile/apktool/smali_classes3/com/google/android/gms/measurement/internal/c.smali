.class public final Lcom/google/android/gms/measurement/internal/c;
.super Lboi;
.source "SourceFile"


# instance fields
.field public c:C

.field public d:J

.field public e:Ljava/lang/String;

.field public final f:Lu6h;

.field public final g:Lu6h;

.field public final h:Lu6h;

.field public final i:Lu6h;

.field public final j:Lu6h;

.field public final k:Lu6h;

.field public final l:Lu6h;

.field public final m:Lu6h;

.field public final n:Lu6h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 3

    invoke-direct {p0, p1}, Lboi;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/c;->c:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/c;->d:J

    new-instance v0, Lu6h;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->f:Lu6h;

    new-instance v0, Lu6h;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->g:Lu6h;

    new-instance v0, Lu6h;

    invoke-direct {v0, p0, v1, p1, v2}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->h:Lu6h;

    new-instance v0, Lu6h;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->i:Lu6h;

    new-instance v0, Lu6h;

    invoke-direct {v0, p0, v1, v2, p1}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->j:Lu6h;

    new-instance v0, Lu6h;

    invoke-direct {v0, p0, v1, p1, v2}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->k:Lu6h;

    new-instance v0, Lu6h;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->l:Lu6h;

    new-instance v0, Lu6h;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->m:Lu6h;

    new-instance v0, Lu6h;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lu6h;-><init>(Lcom/google/android/gms/measurement/internal/c;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->n:Lu6h;

    return-void
.end method

.method public static A(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_4

    move-object v0, v2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    add-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/c;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_a

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/c;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p1, Lx7h;

    if-eqz v0, :cond_c

    check-cast p1, Lx7h;

    invoke-static {p1}, Lx7h;->a(Lx7h;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p0, :cond_d

    return-object v2

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/google/android/gms/measurement/internal/c;J)V
    .locals 0

    const-wide/32 p1, 0x11d28

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c;->d:J

    return-void
.end method

.method public static bridge synthetic D(Lcom/google/android/gms/measurement/internal/c;C)V
    .locals 0

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/c;->c:C

    return-void
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/google/android/gms/measurement/internal/c;)C
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/c;->c:C

    return p0
.end method

.method public static bridge synthetic o(Lcom/google/android/gms/measurement/internal/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/c;->d:J

    return-wide v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lx7h;

    invoke-direct {v0, p0}, Lx7h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static z(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/c;->A(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/c;->A(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/c;->A(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->Q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/String;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final E(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->B()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p2, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/c;->z(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_4

    const/4 p2, 0x5

    if-lt p1, p2, :cond_4

    invoke-static {p4}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->G()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->B()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Scheduler not set. Not logging error/warn"

    invoke-static {p3, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Lboi;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->B()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    invoke-static {p3, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 p3, 0x9

    if-lt p1, p3, :cond_3

    const/16 p1, 0x8

    :cond_3
    move v2, p1

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzel;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzel;-><init>(Lcom/google/android/gms/measurement/internal/c;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->m:Lu6h;

    return-object p0
.end method

.method public final q()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->f:Lu6h;

    return-object p0
.end method

.method public final r()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->h:Lu6h;

    return-object p0
.end method

.method public final s()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->g:Lu6h;

    return-object p0
.end method

.method public final t()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->l:Lu6h;

    return-object p0
.end method

.method public final u()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->n:Lu6h;

    return-object p0
.end method

.method public final v()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->i:Lu6h;

    return-object p0
.end method

.method public final w()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->k:Lu6h;

    return-object p0
.end method

.method public final x()Lu6h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c;->j:Lu6h;

    return-object p0
.end method
