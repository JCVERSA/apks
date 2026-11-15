.class public final Lyci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyci;


# instance fields
.field public final a:Lo2j;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyci;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyci;-><init>(Z)V

    sput-object v0, Lyci;->d:Lyci;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La2j;

    invoke-direct {v0}, La2j;-><init>()V

    iput-object v0, p0, Lyci;->a:Lo2j;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    new-instance p1, La2j;

    invoke-direct {p1}, La2j;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyci;->a:Lo2j;

    .line 3
    invoke-virtual {p0}, Lyci;->c()V

    .line 4
    invoke-virtual {p0}, Lyci;->c()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lo4i;->w(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zzj:Lcom/google/android/gms/internal/play_billing/zzjg;

    if-ne p0, v0, :cond_0

    add-int/2addr p1, p1

    :cond_0
    invoke-static {p0, p2}, Lyci;->b(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)I
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjh;->zza:Lcom/google/android/gms/internal/play_billing/zzjh;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lo4i;->x(J)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p1, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v1

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v0

    :pswitch_4
    instance-of p0, p1, Lhni;

    if-eqz p0, :cond_0

    check-cast p1, Lhni;

    invoke-interface {p1}, Lhni;->zza()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lo4i;->x(J)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lo4i;->x(J)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p0

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_1
    check-cast p1, [B

    array-length p0, p1

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p1

    goto :goto_0

    :pswitch_7
    instance-of p0, p1, Ljti;

    if-eqz p0, :cond_2

    check-cast p1, Ljti;

    invoke-virtual {p1}, Ljti;->a()I

    move-result p0

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p1

    goto :goto_0

    :cond_2
    check-cast p1, Lg0j;

    invoke-static {p1}, Lo4i;->v(Lg0j;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lg0j;

    invoke-interface {p1}, Lg0j;->zzn()I

    move-result p0

    return p0

    :pswitch_9
    instance-of p0, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p0

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p1

    goto :goto_0

    :cond_3
    check-cast p1, Ljava/lang/String;

    sget p0, Ll4j;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/s;->b(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lo4i;->w(I)I

    move-result p1

    goto :goto_0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 p0, 0x1

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v1

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lo4i;->x(J)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lo4i;->x(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lo4i;->x(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    return v0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lo4i;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zzj:Lcom/google/android/gms/internal/play_billing/zzjg;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lo4i;->q(II)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjh;->zza:Lcom/google/android/gms/internal/play_billing/zzjh;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lo4i;->u(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lo4i;->s(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo4i;->k(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lhni;

    if-eqz p1, :cond_0

    check-cast p3, Lhni;

    invoke-interface {p3}, Lhni;->zza()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->m(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->m(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->s(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0, p3}, Lo4i;->g(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lo4i;->e([BII)V

    return-void

    :pswitch_7
    check-cast p3, Lg0j;

    invoke-virtual {p0, p3}, Lo4i;->n(Lg0j;)V

    return-void

    :pswitch_8
    check-cast p3, Lg0j;

    invoke-interface {p3, p0}, Lg0j;->a(Lo4i;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0, p3}, Lo4i;->g(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lo4i;->p(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->c(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo4i;->k(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->m(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo4i;->u(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo4i;->u(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo4i;->k(J)V

    return-void

    :cond_3
    check-cast p3, Lg0j;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lo4i;->q(II)V

    invoke-interface {p3, p0}, Lg0j;->a(Lo4i;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lo4i;->q(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final f(Lxbi;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0}, Lxbi;->zzb()Lcom/google/android/gms/internal/play_billing/zzjg;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjg;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjh;->zza:Lcom/google/android/gms/internal/play_billing/zzjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzjg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p1, Lg0j;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljti;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lhni;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lxbi;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lxbi;->zzb()Lcom/google/android/gms/internal/play_billing/zzjg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzjg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget-boolean v0, p0, Lyci;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyci;->a:Lo2j;

    invoke-virtual {v0}, Lo2j;->c()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lo2j;->g(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lkli;

    if-eqz v4, :cond_1

    check-cast v3, Lkli;

    invoke-virtual {v3}, Lkli;->x()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lo2j;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkli;

    if-eqz v3, :cond_3

    check-cast v2, Lkli;

    invoke-virtual {v2}, Lkli;->x()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lo2j;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyci;->b:Z

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lyci;

    invoke-direct {v0}, Lyci;-><init>()V

    iget-object v1, p0, Lyci;->a:Lo2j;

    invoke-virtual {v1}, Lo2j;->c()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lo2j;->g(I)Ljava/util/Map$Entry;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ld2j;

    invoke-virtual {v6}, Ld2j;->a()Lxbi;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lyci;->d(Lxbi;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lo2j;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lubc;->a(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lyci;->d(Lxbi;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lyci;->c:Z

    iput-boolean p0, v0, Lyci;->c:Z

    return-object v0
.end method

.method public final d(Lxbi;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p1}, Lxbi;->zze()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lyci;->f(Lxbi;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1, p2}, Lyci;->f(Lxbi;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Ljti;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyci;->c:Z

    :cond_3
    iget-object p0, p0, Lyci;->a:Lo2j;

    invoke-virtual {p0, p1, p2}, Lo2j;->f(Lxbi;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyci;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyci;

    iget-object p0, p0, Lyci;->a:Lo2j;

    iget-object p1, p1, Lyci;->a:Lo2j;

    invoke-virtual {p0}, Lo2j;->size()I

    move-result v1

    invoke-virtual {p1}, Lo2j;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lo2j;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v3}, Lo2j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-nez v3, :cond_7

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    instance-of v4, v1, Ljti;

    if-eqz v4, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_8
    instance-of v4, v3, Ljti;

    if-eqz v4, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_4

    goto :goto_0

    :cond_a
    :goto_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyci;->a:Lo2j;

    invoke-virtual {p0}, Lo2j;->hashCode()I

    move-result p0

    return p0
.end method
