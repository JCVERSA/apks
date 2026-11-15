.class public final Lq0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1j;


# static fields
.field public static final l:[I

.field public static final m:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lg0j;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lg3j;

.field public final k:Ls8i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lq0j;->l:[I

    invoke-static {}, Lx3j;->g()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lq0j;->m:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILg0j;Z[IIILw0j;Lhxi;Lg3j;Ls8i;Lwzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0j;->a:[I

    iput-object p2, p0, Lq0j;->b:[Ljava/lang/Object;

    iput p3, p0, Lq0j;->c:I

    iput p4, p0, Lq0j;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq0j;->f:Z

    iput-object p7, p0, Lq0j;->g:[I

    iput p8, p0, Lq0j;->h:I

    iput p9, p0, Lq0j;->i:I

    iput-object p12, p0, Lq0j;->j:Lg3j;

    iput-object p13, p0, Lq0j;->k:Ls8i;

    iput-object p5, p0, Lq0j;->e:Lg0j;

    return-void
.end method

.method public static C(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static E(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static L(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static M(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static p(Ljava/lang/Object;ILu1j;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lu1j;->f(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static q(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lkli;

    if-eqz v0, :cond_1

    check-cast p0, Lkli;

    invoke-virtual {p0}, Lkli;->h()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final u([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lqoh;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lqph;->l([BILqoh;)I

    move-result p0

    iget-wide p1, p5, Lqoh;->b:J

    invoke-static {p1, p2}, La2i;->b(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lqoh;->c:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p0, p1, p5}, Lqph;->i([BILqoh;)I

    move-result p0

    iget p1, p5, Lqoh;->a:I

    invoke-static {p1}, La2i;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lqoh;->c:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    invoke-static {p0, p1, p5}, Lqph;->a([BILqoh;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lc1j;->a()Lc1j;

    move-result-object p3

    invoke-virtual {p3, p4}, Lc1j;->b(Ljava/lang/Class;)Lu1j;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lqph;->d(Lu1j;[BIILqoh;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p0, p1, p5}, Lqph;->g([BILqoh;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_6
    invoke-static {p0, p1, p5}, Lqph;->l([BILqoh;)I

    move-result p0

    iget-wide p1, p5, Lqoh;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lqoh;->c:Ljava/lang/Object;

    goto :goto_2

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lqph;->b([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lqoh;->c:Ljava/lang/Object;

    :goto_1
    move p0, p2

    goto :goto_2

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lqph;->p([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lqoh;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_9
    invoke-static {p0, p1, p5}, Lqph;->i([BILqoh;)I

    move-result p0

    iget p1, p5, Lqoh;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lqoh;->c:Ljava/lang/Object;

    goto :goto_2

    :pswitch_a
    invoke-static {p0, p1, p5}, Lqph;->l([BILqoh;)I

    move-result p0

    iget-wide p1, p5, Lqoh;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lqoh;->c:Ljava/lang/Object;

    goto :goto_2

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lqph;->b([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lqoh;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lqph;->p([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lqoh;->c:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final v(ILjava/lang/Object;La5j;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, La5j;->s(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {p2, p0, p1}, La5j;->D(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method

.method public static x(Ljava/lang/Object;)Li3j;
    .locals 2

    check-cast p0, Lkli;

    iget-object v0, p0, Lkli;->zzc:Li3j;

    invoke-static {}, Li3j;->c()Li3j;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Li3j;->f()Li3j;

    move-result-object v0

    iput-object v0, p0, Lkli;->zzc:Li3j;

    :cond_0
    return-object v0
.end method

.method public static y(Ljava/lang/Class;Lb0j;Lw0j;Lhxi;Lg3j;Ls8i;Lwzi;)Lq0j;
    .locals 34

    move-object/from16 v0, p1

    sget-object v1, Lq0j;->m:Lsun/misc/Unsafe;

    if-eqz v1, :cond_37

    instance-of v2, v0, Lr1j;

    if-eqz v2, :cond_36

    check-cast v0, Lr1j;

    invoke-virtual {v0}, Lr1j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_1

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :cond_1
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_1
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    add-int/lit8 v10, v10, 0xd

    move v5, v11

    goto :goto_1

    :cond_2
    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    move v5, v11

    :cond_3
    if-nez v8, :cond_4

    sget-object v8, Lq0j;->l:[I

    move v12, v4

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move/from16 v18, v16

    move-object/from16 v17, v8

    move/from16 v8, v18

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    const/16 v10, 0xd

    :goto_2
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_5

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v11

    goto :goto_2

    :cond_5
    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    move v8, v11

    :cond_6
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_3
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_7

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_3

    :cond_7
    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    move v10, v12

    :cond_8
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_4
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_9

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_4

    :cond_9
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_a
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_5
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_5

    :cond_b
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_c
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_6
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_6

    :cond_d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_e
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_7
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_7

    :cond_f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_10
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_12

    :goto_8
    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_11

    move v15, v14

    goto :goto_8

    :cond_11
    move v15, v14

    :cond_12
    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v16

    or-int/2addr v15, v14

    add-int/lit8 v16, v16, 0xd

    move/from16 v14, v17

    goto :goto_9

    :cond_13
    shl-int v14, v14, v16

    or-int/2addr v15, v14

    move/from16 v14, v17

    :cond_14
    add-int v16, v15, v13

    add-int v4, v16, v5

    add-int v16, v5, v5

    add-int v16, v16, v8

    new-array v8, v4, [I

    move v4, v5

    move-object/from16 v17, v8

    move v8, v10

    move v5, v14

    move/from16 v18, v15

    move v14, v11

    :goto_a
    invoke-virtual {v0}, Lr1j;->b()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lr1j;->zza()Lg0j;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    add-int v19, v18, v13

    add-int v13, v12, v12

    mul-int/lit8 v12, v12, 0x3

    new-array v12, v12, [I

    new-array v13, v13, [Ljava/lang/Object;

    move/from16 v22, v18

    move/from16 v21, v19

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v5, v3, :cond_35

    add-int/lit8 v23, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_16

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v9, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_15

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v23

    or-int/2addr v5, v9

    add-int/lit8 v23, v23, 0xd

    move/from16 v9, v24

    goto :goto_c

    :cond_15
    shl-int v9, v9, v23

    or-int/2addr v5, v9

    move/from16 v9, v24

    goto :goto_d

    :cond_16
    move/from16 v9, v23

    :goto_d
    add-int/lit8 v23, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_18

    and-int/lit16 v9, v9, 0x1fff

    move/from16 v7, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v23

    or-int/2addr v9, v7

    add-int/lit8 v23, v23, 0xd

    move/from16 v7, v25

    goto :goto_e

    :cond_17
    shl-int v7, v7, v23

    or-int/2addr v9, v7

    move/from16 v7, v25

    goto :goto_f

    :cond_18
    move/from16 v7, v23

    :goto_f
    and-int/lit16 v6, v9, 0x400

    if-eqz v6, :cond_19

    add-int/lit8 v6, v15, 0x1

    aput v20, v17, v15

    move v15, v6

    :cond_19
    and-int/lit16 v6, v9, 0xff

    move/from16 v25, v3

    and-int/lit16 v3, v9, 0x800

    move/from16 v26, v15

    const/16 v15, 0x33

    if-lt v6, v15, :cond_23

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v7, v15, :cond_1b

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v15, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v31, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v32, v14

    const v14, 0xd800

    if-lt v15, v14, :cond_1a

    and-int/lit16 v14, v15, 0x1fff

    shl-int v14, v14, v27

    or-int/2addr v7, v14

    add-int/lit8 v27, v27, 0xd

    move/from16 v15, v31

    move/from16 v14, v32

    goto :goto_10

    :cond_1a
    shl-int v14, v15, v27

    or-int/2addr v7, v14

    move/from16 v15, v31

    goto :goto_11

    :cond_1b
    move/from16 v32, v14

    move/from16 v15, v27

    :goto_11
    add-int/lit8 v14, v6, -0x33

    move/from16 v27, v15

    const/16 v15, 0x9

    if-eq v14, v15, :cond_1c

    const/16 v15, 0x11

    if-ne v14, v15, :cond_1d

    :cond_1c
    const/4 v15, 0x1

    goto :goto_14

    :cond_1d
    const/16 v15, 0xc

    if-ne v14, v15, :cond_20

    invoke-virtual {v0}, Lr1j;->zzc()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1f

    if-eqz v3, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v3, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v14, v16, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v16, v10, v16

    aput-object v16, v13, v24

    :goto_13
    move/from16 v16, v14

    goto :goto_15

    :goto_14
    add-int/lit8 v14, v16, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    aget-object v15, v10, v16

    aput-object v15, v13, v28

    goto :goto_13

    :cond_20
    :goto_15
    add-int/2addr v7, v7

    aget-object v14, v10, v7

    instance-of v15, v14, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_21

    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v14, Ljava/lang/String;

    invoke-static {v11, v14}, Lq0j;->L(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v10, v7

    add-int/lit8 v15, v21, 0x1

    aput v20, v17, v21

    move/from16 v21, v15

    :goto_16
    invoke-virtual {v1, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/lit8 v7, v7, 0x1

    aget-object v15, v10, v7

    move/from16 v28, v3

    instance-of v3, v15, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_22

    check-cast v15, Ljava/lang/reflect/Field;

    :goto_17
    move v3, v14

    goto :goto_18

    :cond_22
    check-cast v15, Ljava/lang/String;

    invoke-static {v11, v15}, Lq0j;->L(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    aput-object v15, v10, v7

    goto :goto_17

    :goto_18
    invoke-virtual {v1, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v7, v14

    move-object/from16 v29, v2

    move v14, v3

    move/from16 v3, v28

    move-object/from16 v28, v0

    const/4 v0, 0x0

    move/from16 v33, v16

    move/from16 v16, v7

    move/from16 v7, v27

    move/from16 v27, v8

    move/from16 v8, v33

    goto/16 :goto_24

    :cond_23
    move/from16 v32, v14

    add-int/lit8 v14, v16, 0x1

    aget-object v15, v10, v16

    check-cast v15, Ljava/lang/String;

    invoke-static {v11, v15}, Lq0j;->L(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move/from16 v27, v8

    const/16 v8, 0x9

    if-eq v6, v8, :cond_24

    const/16 v8, 0x11

    if-ne v6, v8, :cond_25

    :cond_24
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v8, 0x1b

    if-eq v6, v8, :cond_2d

    const/16 v8, 0x31

    if-ne v6, v8, :cond_26

    add-int/lit8 v16, v16, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    :cond_26
    const/16 v8, 0xc

    if-eq v6, v8, :cond_2a

    const/16 v8, 0x1e

    if-eq v6, v8, :cond_2a

    const/16 v8, 0x2c

    if-ne v6, v8, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v8, 0x32

    if-ne v6, v8, :cond_29

    add-int/lit8 v8, v16, 0x2

    add-int/lit8 v28, v22, 0x1

    aput v20, v17, v22

    div-int/lit8 v22, v20, 0x3

    aget-object v14, v10, v14

    add-int v22, v22, v22

    aput-object v14, v13, v22

    if-eqz v3, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v14, v16, 0x3

    aget-object v8, v10, v8

    aput-object v8, v13, v22

    move v8, v14

    move/from16 v22, v28

    :goto_19
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_20

    :cond_28
    move/from16 v22, v28

    const/4 v3, 0x0

    goto :goto_19

    :cond_29
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1f

    :cond_2a
    :goto_1a
    invoke-virtual {v0}, Lr1j;->zzc()I

    move-result v8

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v8, v0, :cond_2c

    if-eqz v3, :cond_2b

    goto :goto_1b

    :cond_2b
    move v8, v14

    const/4 v3, 0x0

    goto :goto_20

    :cond_2c
    :goto_1b
    add-int/lit8 v16, v16, 0x2

    div-int/lit8 v8, v20, 0x3

    add-int/2addr v8, v8

    add-int/2addr v8, v0

    aget-object v14, v10, v14

    aput-object v14, v13, v8

    :goto_1c
    move/from16 v8, v16

    goto :goto_20

    :cond_2d
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v16, v16, 0x2

    :goto_1d
    div-int/lit8 v8, v20, 0x3

    add-int/2addr v8, v8

    add-int/2addr v8, v0

    aget-object v14, v10, v14

    aput-object v14, v13, v8

    goto :goto_1c

    :goto_1e
    div-int/lit8 v8, v20, 0x3

    add-int/2addr v8, v8

    add-int/2addr v8, v0

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v13, v8

    :goto_1f
    move v8, v14

    :goto_20
    invoke-virtual {v1, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v14, v14

    and-int/lit16 v15, v9, 0x1000

    const v16, 0xfffff

    if-eqz v15, :cond_31

    const/16 v15, 0x11

    if-gt v6, v15, :cond_31

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v0, 0xd800

    if-lt v7, v0, :cond_2f

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_21
    add-int/lit8 v23, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v0, :cond_2e

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v7, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v23

    goto :goto_21

    :cond_2e
    shl-int v15, v15, v16

    or-int/2addr v7, v15

    move/from16 v15, v23

    :cond_2f
    add-int v16, v4, v4

    div-int/lit8 v23, v7, 0x20

    add-int v16, v16, v23

    aget-object v0, v10, v16

    move-object/from16 v29, v2

    instance-of v2, v0, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_30

    check-cast v0, Ljava/lang/reflect/Field;

    :goto_22
    move/from16 v30, v3

    goto :goto_23

    :cond_30
    check-cast v0, Ljava/lang/String;

    invoke-static {v11, v0}, Lq0j;->L(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v10, v16

    goto :goto_22

    :goto_23
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v0, v2

    rem-int/lit8 v7, v7, 0x20

    move/from16 v16, v0

    move v0, v7

    move v7, v15

    move/from16 v3, v30

    goto :goto_24

    :cond_31
    move-object/from16 v29, v2

    move/from16 v30, v3

    const/4 v0, 0x0

    :goto_24
    add-int/lit8 v2, v20, 0x1

    aput v5, v12, v20

    add-int/lit8 v5, v20, 0x2

    and-int/lit16 v15, v9, 0x200

    if-eqz v15, :cond_32

    const/high16 v15, 0x20000000

    goto :goto_25

    :cond_32
    const/4 v15, 0x0

    :goto_25
    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_33

    const/high16 v9, 0x10000000

    goto :goto_26

    :cond_33
    const/4 v9, 0x0

    :goto_26
    if-eqz v3, :cond_34

    const/high16 v3, -0x80000000

    goto :goto_27

    :cond_34
    const/4 v3, 0x0

    :goto_27
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v9, v15

    or-int/2addr v3, v9

    or-int/2addr v3, v6

    or-int/2addr v3, v14

    aput v3, v12, v2

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v0, 0x14

    or-int v0, v0, v16

    aput v0, v12, v5

    move v5, v7

    move/from16 v16, v8

    move/from16 v3, v25

    move/from16 v15, v26

    move/from16 v8, v27

    move-object/from16 v0, v28

    move-object/from16 v2, v29

    move/from16 v14, v32

    const v6, 0xd800

    goto/16 :goto_b

    :cond_35
    move-object/from16 v28, v0

    move/from16 v27, v8

    move/from16 v32, v14

    new-instance v0, Lq0j;

    invoke-virtual/range {v28 .. v28}, Lr1j;->zza()Lg0j;

    move-result-object v15

    const/16 v16, 0x0

    move-object v10, v0

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v27

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    invoke-direct/range {v10 .. v24}, Lq0j;-><init>([I[Ljava/lang/Object;IILg0j;Z[IIILw0j;Lhxi;Lg3j;Ls8i;Lwzi;)V

    return-object v0

    :cond_36
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(I)I
    .locals 0

    iget-object p0, p0, Lq0j;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public final B(II)I
    .locals 5

    iget-object p0, p0, Lq0j;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final D(I)I
    .locals 0

    iget-object p0, p0, Lq0j;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public final F(I)Lcoi;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lq0j;->b:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lcoi;

    return-object p0
.end method

.method public final G(I)Lu1j;
    .locals 2

    iget-object p0, p0, Lq0j;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, p0, p1

    check-cast v0, Lu1j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {}, Lc1j;->a()Lc1j;

    move-result-object v1

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lc1j;->b(Ljava/lang/Class;)Lu1j;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final H(Ljava/lang/Object;ILjava/lang/Object;Lg3j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p4, p0, Lq0j;->a:[I

    aget p4, p4, p2

    invoke-virtual {p0, p2}, Lq0j;->D(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p2}, Lq0j;->F(I)Lcoi;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {p0, p2}, Lq0j;->I(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrzi;

    invoke-virtual {p0}, Lrzi;->c()Lozi;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcoi;->zza(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p3, :cond_3

    invoke-static {p5}, Lk3j;->a(Ljava/lang/Object;)Li3j;

    move-result-object p3

    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lrzi;->b(Lozi;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    new-array v2, v1, [B

    new-instance v3, Ly2i;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Ly2i;-><init>([BII)V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p0, v1, p2}, Lrzi;->e(Lo4i;Lozi;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/q;->a(Lo4i;[B)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p2

    move-object v1, p3

    check-cast v1, Li3j;

    shl-int/lit8 v2, p4, 0x3

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, p2}, Li3j;->j(ILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    return-object p3
.end method

.method public final I(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lq0j;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final J(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lq0j;->G(I)Lu1j;

    move-result-object v0

    invoke-virtual {p0, p2}, Lq0j;->D(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v1, v1

    sget-object p0, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final K(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p3}, Lq0j;->G(I)Lu1j;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lq0j;->D(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v1, p0

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lkli;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkli;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lkli;->g(I)V

    iput v1, v0, Lplh;->zza:I

    invoke-virtual {v0}, Lkli;->e()V

    :cond_1
    iget-object v0, p0, Lq0j;->a:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lq0j;->D(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lq0j;->C(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnpi;

    invoke-interface {v2}, Lnpi;->zzb()V

    goto :goto_1

    :cond_2
    aget v2, v0, v1

    invoke-virtual {p0, p1, v2, v1}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lq0j;->G(I)Lu1j;

    move-result-object v2

    sget-object v5, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lu1j;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lq0j;->G(I)Lu1j;

    move-result-object v2

    sget-object v5, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lu1j;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Lkli;

    iget-object v0, v0, Lkli;->zzc:Li3j;

    invoke-virtual {v0}, Li3j;->h()V

    iget-boolean p0, p0, Lq0j;->f:Z

    if-nez p0, :cond_6

    :goto_2
    return-void

    :cond_6
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lq0j;->M(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lq0j;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lq0j;->D(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lq0j;->C(I)I

    move-result v2

    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lq0j;->h(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p2, v1, v0}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lx3j;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lq0j;->j(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lq0j;->h(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p2, v1, v0}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lx3j;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lq0j;->j(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_4
    sget-object v1, Ly1j;->a:Lg3j;

    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lwzi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnpi;

    invoke-static {p2, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnpi;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    invoke-interface {v1}, Lnpi;->zzc()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    invoke-interface {v1, v6}, Lnpi;->d(I)Lnpi;

    move-result-object v1

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {p1, v3, v4, v2}, Lx3j;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lq0j;->g(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lx3j;->o(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lx3j;->o(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lq0j;->g(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->t(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lx3j;->o(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lx3j;->o(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lx3j;->o(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->b(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lx3j;->m(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lx3j;->a(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lx3j;->l(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lq0j;->i(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lq0j;->j:Lg3j;

    invoke-static {v0, p1, p2}, Ly1j;->u(Lg3j;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lq0j;->f:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lq0j;->k:Ls8i;

    invoke-static {p0, p1, p2}, Ly1j;->t(Ls8i;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;[BIILqoh;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lq0j;->w(Ljava/lang/Object;[BIIILqoh;)I

    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lq0j;->a:[I

    array-length v2, v2

    const v3, 0xfffff

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lq0j;->D(I)I

    move-result v2

    invoke-static {v2}, Lq0j;->C(I)I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_0

    const/16 v5, 0x45

    if-ge v4, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/2addr v2, v3

    int-to-long v2, v2

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->r(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->t(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->t(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v4, v2, :cond_2

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->b(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p2, v2, v3}, Lx3j;->b(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lq0j;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v3}, Lx3j;->a(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lx3j;->a(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    :goto_3
    return v0

    :cond_3
    iget v1, p0, Lq0j;->i:I

    :goto_4
    iget-object v2, p0, Lq0j;->g:[I

    array-length v4, v2

    if-ge v1, v4, :cond_7

    aget v2, v2, v1

    invoke-virtual {p0, p1, p2, v2}, Lq0j;->r(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1, v0, v2}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v2}, Lq0j;->D(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ly1j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move-object v1, p1

    check-cast v1, Lkli;

    iget-object v1, v1, Lkli;->zzc:Li3j;

    check-cast p2, Lkli;

    iget-object p2, p2, Lkli;->zzc:Li3j;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    return v0

    :cond_8
    iget-boolean p0, p0, Lq0j;->f:Z

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;La5j;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x1

    iget-boolean v0, v6, Lq0j;->f:Z

    if-nez v0, :cond_6

    iget-object v10, v6, Lq0j;->a:[I

    sget-object v11, Lq0j;->m:Lsun/misc/Unsafe;

    const v12, 0xfffff

    const/4 v13, 0x0

    move v0, v12

    move v1, v13

    move v14, v1

    :goto_0
    array-length v2, v10

    if-ge v14, v2, :cond_5

    invoke-virtual {v6, v14}, Lq0j;->D(I)I

    move-result v2

    invoke-static {v2}, Lq0j;->C(I)I

    move-result v3

    aget v15, v10, v14

    const/16 v4, 0x11

    if-gt v3, v4, :cond_2

    add-int/lit8 v4, v14, 0x2

    aget v4, v10, v4

    and-int v5, v4, v12

    if-eq v5, v0, :cond_1

    if-ne v5, v12, :cond_0

    move v1, v13

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v11, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v9, v4

    move/from16 v16, v0

    move/from16 v17, v1

    move v5, v4

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    move v5, v13

    :goto_2
    and-int v0, v2, v12

    int-to-long v1, v0

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_3
    move-object/from16 v18, v10

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, La5j;->A(ILjava/lang/Object;Lu1j;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->u(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->v(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->a(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->I(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->h(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->B(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v8, v15, v0}, La5j;->D(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, La5j;->t(ILjava/lang/Object;Lu1j;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lq0j;->v(ILjava/lang/Object;La5j;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->c(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->f(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->l(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->b(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->x(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->n(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->j(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v6, v7, v15, v14}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v1, v2}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->e(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v14}, Lq0j;->I(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrzi;

    invoke-virtual {v1}, Lrzi;->c()Lozi;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-interface {v8, v15, v1, v0}, La5j;->E(ILozi;Ljava/util/Map;)V

    goto/16 :goto_3

    :pswitch_13
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v14}, Lq0j;->G(I)Lu1j;

    move-result-object v2

    sget-object v3, Ly1j;->a:Lg3j;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v13

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Le5i;

    invoke-virtual {v5, v0, v4, v2}, Le5i;->A(ILjava/lang/Object;Lu1j;)V

    add-int/2addr v3, v9

    goto :goto_4

    :pswitch_14
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->b(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_15
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->a(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_16
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->E(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_17
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->D(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_18
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->x(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_19
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->c(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_1a
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->v(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_1b
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->y(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_1c
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->z(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_1d
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->B(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_1e
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->d(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_1f
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->C(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_20
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->A(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_21
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Ly1j;->w(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->b(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_23
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->a(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_24
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->E(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_25
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->D(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_26
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->x(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_27
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->c(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_28
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget-object v2, Ly1j;->a:Lg3j;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v8, v0, v1}, La5j;->m(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_29
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v14}, Lq0j;->G(I)Lu1j;

    move-result-object v2

    sget-object v3, Ly1j;->a:Lg3j;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v13

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Le5i;

    invoke-virtual {v5, v0, v4, v2}, Le5i;->t(ILjava/lang/Object;Lu1j;)V

    add-int/2addr v3, v9

    goto :goto_5

    :pswitch_2a
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget-object v2, Ly1j;->a:Lg3j;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v8, v0, v1}, La5j;->z(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->v(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_2c
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->y(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_2d
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->z(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_2e
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->B(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_2f
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->d(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_30
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->C(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_31
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->A(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_32
    aget v0, v10, v14

    invoke-virtual {v11, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Ly1j;->w(ILjava/util/List;La5j;Z)V

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v14

    move-object/from16 v18, v10

    move-wide v9, v3

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, La5j;->A(ILjava/lang/Object;Lu1j;)V

    goto/16 :goto_6

    :pswitch_34
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->u(IJ)V

    goto/16 :goto_6

    :pswitch_35
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->v(II)V

    goto/16 :goto_6

    :pswitch_36
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->a(IJ)V

    goto/16 :goto_6

    :pswitch_37
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->I(II)V

    goto/16 :goto_6

    :pswitch_38
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->h(II)V

    goto/16 :goto_6

    :pswitch_39
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->B(II)V

    goto/16 :goto_6

    :pswitch_3a
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v8, v15, v0}, La5j;->D(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto/16 :goto_6

    :pswitch_3b
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, La5j;->t(ILjava/lang/Object;Lu1j;)V

    goto/16 :goto_6

    :pswitch_3c
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lq0j;->v(ILjava/lang/Object;La5j;)V

    goto/16 :goto_6

    :pswitch_3d
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v9, v10}, Lx3j;->t(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->c(IZ)V

    goto/16 :goto_6

    :pswitch_3e
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->f(II)V

    goto/16 :goto_6

    :pswitch_3f
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->l(IJ)V

    goto/16 :goto_6

    :pswitch_40
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->b(II)V

    goto/16 :goto_6

    :pswitch_41
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->x(IJ)V

    goto :goto_6

    :pswitch_42
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->n(IJ)V

    goto :goto_6

    :pswitch_43
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v9, v10}, Lx3j;->b(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v15, v0}, La5j;->j(IF)V

    goto :goto_6

    :pswitch_44
    move-object/from16 v18, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v9, v10}, Lx3j;->a(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, La5j;->e(ID)V

    :cond_4
    :goto_6
    add-int/lit8 v14, v14, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v10, v18

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    move-object v0, v7

    check-cast v0, Lkli;

    iget-object v0, v0, Lkli;->zzc:Li3j;

    invoke-virtual {v0, v8}, Li3j;->k(La5j;)V

    return-void

    :cond_6
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final f(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lq0j;->h:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lq0j;->g:[I

    aget v12, v2, v10

    invoke-virtual {v6, v12}, Lq0j;->D(I)I

    move-result v13

    iget-object v14, v6, Lq0j;->a:[I

    add-int/lit8 v2, v12, 0x2

    aget v2, v14, v2

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return v8

    :cond_2
    invoke-static {v13}, Lq0j;->C(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v6, v12}, Lq0j;->I(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrzi;

    invoke-virtual {v1}, Lrzi;->c()Lozi;

    move-result-object v1

    iget-object v1, v1, Lozi;->c:Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzjg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjh;->zzi:Lcom/google/android/gms/internal/play_billing/zzjh;

    if-ne v1, v2, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v11, :cond_5

    invoke-static {}, Lc1j;->a()Lc1j;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc1j;->b(Ljava/lang/Class;)Lu1j;

    move-result-object v2

    move-object v11, v2

    :cond_5
    invoke-interface {v11, v1}, Lu1j;->f(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v8

    :cond_6
    aget v0, v14, v12

    invoke-virtual {v6, v7, v0, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lq0j;->p(Ljava/lang/Object;ILu1j;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    move v2, v8

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lu1j;->f(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lq0j;->p(Ljava/lang/Object;ILu1j;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lq0j;->f:Z

    if-nez v0, :cond_c

    return v3

    :cond_c
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    throw v11
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lq0j;->D(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lq0j;->m:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lq0j;->G(I)Lu1j;

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lq0j;->i(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v0}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lq0j;->a:[I

    new-instance p1, Ljava/lang/IllegalStateException;

    aget p0, p0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lq0j;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, p2, v1, p3}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lq0j;->D(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lq0j;->m:Lsun/misc/Unsafe;

    int-to-long v4, v2

    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p3}, Lq0j;->G(I)Lu1j;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p3}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v1, p3}, Lq0j;->j(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lq0j;->q(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v2}, Lu1j;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    aget p1, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Ljava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lq0j;->A(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lx3j;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final j(Ljava/lang/Object;II)V
    .locals 2

    invoke-virtual {p0, p3}, Lq0j;->A(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lx3j;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final k(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lq0j;->D(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lq0j;->i(Ljava/lang/Object;I)V

    return-void
.end method

.method public final l(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lq0j;->m:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lq0j;->D(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lq0j;->j(Ljava/lang/Object;II)V

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p1, p3}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n(Ljava/lang/Object;I)Z
    .locals 7

    invoke-virtual {p0, p2}, Lq0j;->A(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p2}, Lq0j;->D(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lq0j;->C(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0}, Lq0j;->t()Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {p1, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p2, :cond_c

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    invoke-virtual {p0}, Lq0j;->t()Z

    move-result p0

    return p0

    :pswitch_a
    invoke-static {p1, v0, v1}, Lx3j;->t(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lx3j;->b(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lx3j;->a(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p1, v2, v3}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

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

.method public final o(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lq0j;->n(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2

    invoke-virtual {p0, p3}, Lq0j;->A(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p2, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s(Ljava/lang/Object;II)Z
    .locals 2

    invoke-virtual {p0, p3}, Lq0j;->A(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t()Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final w(Ljava/lang/Object;[BIIILqoh;)I
    .locals 33

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    const/4 v1, 0x3

    const/4 v0, 0x1

    invoke-static/range {p1 .. p1}, Lq0j;->M(Ljava/lang/Object;)V

    sget-object v14, Lq0j;->m:Lsun/misc/Unsafe;

    const/4 v13, 0x0

    const/4 v12, -0x1

    move/from16 v8, p3

    move v9, v12

    move v10, v13

    move/from16 v17, v10

    move/from16 v18, v17

    const v16, 0xfffff

    :goto_0
    const-string v3, "Failed to parse the message."

    const/16 v20, 0x0

    if-ge v8, v4, :cond_87

    add-int/lit8 v11, v8, 0x1

    aget-byte v8, v15, v8

    if-gez v8, :cond_0

    invoke-static {v8, v15, v11, v2}, Lqph;->j(I[BILqoh;)I

    move-result v8

    iget v11, v2, Lqoh;->a:I

    move/from16 v31, v11

    move v11, v8

    move/from16 v8, v31

    :cond_0
    ushr-int/lit8 v0, v8, 0x3

    if-le v0, v9, :cond_2

    div-int/2addr v10, v1

    iget v9, v6, Lq0j;->c:I

    if-lt v0, v9, :cond_1

    iget v9, v6, Lq0j;->d:I

    if-gt v0, v9, :cond_1

    invoke-virtual {v6, v0, v10}, Lq0j;->B(II)I

    move-result v9

    goto :goto_1

    :cond_1
    move v9, v12

    :goto_1
    move v10, v9

    goto :goto_2

    :cond_2
    iget v9, v6, Lq0j;->c:I

    if-lt v0, v9, :cond_3

    iget v9, v6, Lq0j;->d:I

    if-gt v0, v9, :cond_3

    invoke-virtual {v6, v0, v13}, Lq0j;->B(II)I

    move-result v9

    goto :goto_1

    :cond_3
    move v10, v12

    :goto_2
    if-ne v10, v12, :cond_4

    move/from16 v19, v1

    move-object/from16 p3, v3

    move v10, v13

    move/from16 v24, v10

    move-object v13, v14

    move/from16 v23, v16

    move-object v14, v6

    move/from16 v16, v12

    move-object v6, v2

    move-object v12, v7

    move v2, v11

    move v7, v5

    move v11, v8

    move v8, v0

    goto/16 :goto_3f

    :cond_4
    and-int/lit8 v9, v8, 0x7

    iget-object v12, v6, Lq0j;->a:[I

    const/16 v18, 0x1

    add-int/lit8 v23, v10, 0x1

    aget v13, v12, v23

    invoke-static {v13}, Lq0j;->C(I)I

    move-result v1

    move-object/from16 p3, v3

    const v18, 0xfffff

    and-int v3, v13, v18

    int-to-long v3, v3

    const/high16 v18, 0x20000000

    const-wide/16 v25, 0x0

    const-string v5, ""

    move/from16 v28, v8

    const-string v8, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v29, v8

    const/16 v8, 0x11

    if-gt v1, v8, :cond_13

    const/16 v19, 0x2

    add-int/lit8 v8, v10, 0x2

    aget v8, v12, v8

    ushr-int/lit8 v12, v8, 0x14

    const/16 v22, 0x1

    shl-int v12, v22, v12

    move-object/from16 v27, v5

    const v5, 0xfffff

    and-int/2addr v8, v5

    move/from16 v21, v13

    move/from16 v13, v16

    if-eq v8, v13, :cond_7

    if-eq v13, v5, :cond_5

    int-to-long v5, v13

    move/from16 v13, v17

    invoke-virtual {v14, v7, v5, v6, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v5, 0xfffff

    :cond_5
    if-ne v8, v5, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    int-to-long v5, v8

    invoke-virtual {v14, v7, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_3
    move/from16 v17, v5

    move v6, v8

    goto :goto_4

    :cond_7
    move/from16 v6, v17

    move v6, v13

    :goto_4
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v9, v1, :cond_8

    or-int v17, v17, v12

    move-object/from16 v5, p0

    invoke-virtual {v5, v7, v10}, Lq0j;->J(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v0, 0x3

    or-int/lit8 v13, v4, 0x4

    invoke-virtual {v5, v10}, Lq0j;->G(I)Lu1j;

    move-result-object v9

    move/from16 v4, v28

    move-object v8, v3

    move v12, v10

    move-object/from16 v10, p2

    move/from16 v23, v6

    const v6, 0xfffff

    move v6, v12

    const/16 v16, -0x1

    move/from16 v12, p4

    const/16 v24, 0x0

    move-object/from16 v28, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lqph;->m(Ljava/lang/Object;Lu1j;[BIIILqoh;)I

    move-result v8

    invoke-virtual {v5, v7, v6, v3}, Lq0j;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    move v9, v0

    move/from16 v18, v4

    move v10, v6

    move/from16 v12, v16

    move/from16 v0, v22

    move/from16 v16, v23

    move/from16 v13, v24

    move-object/from16 v14, v28

    move/from16 v4, p4

    move-object v6, v5

    :goto_5
    move/from16 v5, p5

    goto/16 :goto_0

    :cond_8
    move/from16 v23, v6

    move v6, v10

    const/16 v16, -0x1

    const/16 v24, 0x0

    move-object/from16 v8, p0

    move-object v13, v2

    move-object v10, v14

    move/from16 v14, v22

    move/from16 v22, v0

    goto/16 :goto_f

    :pswitch_0
    const/4 v1, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move-object/from16 v5, p0

    move/from16 v23, v6

    move v6, v10

    move/from16 v31, v28

    move-object/from16 v28, v14

    move/from16 v14, v31

    if-nez v9, :cond_9

    or-int v17, v17, v12

    invoke-static {v15, v11, v2}, Lqph;->l([BILqoh;)I

    move-result v8

    iget-wide v9, v2, Lqoh;->b:J

    invoke-static {v9, v10}, La2i;->b(J)J

    move-result-wide v9

    move v13, v0

    move/from16 v12, v22

    move-object/from16 v0, v28

    move v11, v1

    move-object/from16 v1, p1

    move/from16 p3, v8

    move/from16 v22, v13

    move/from16 v8, v19

    move-object v13, v2

    move-wide v2, v3

    move-object v8, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move/from16 v5, p5

    move v10, v6

    move-object v6, v8

    move v1, v11

    move v0, v12

    move-object v2, v13

    move/from16 v18, v14

    move/from16 v12, v16

    move/from16 v9, v22

    move/from16 v16, v23

    move/from16 v13, v24

    move-object/from16 v14, v28

    move/from16 v8, p3

    goto/16 :goto_0

    :cond_9
    move-object v13, v2

    move-object v8, v5

    move/from16 v12, v22

    move/from16 v22, v0

    move-object/from16 v10, v28

    move/from16 v28, v14

    move v14, v12

    goto/16 :goto_f

    :pswitch_1
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move/from16 v5, v22

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    move/from16 v31, v28

    move-object/from16 v28, v14

    move/from16 v14, v31

    if-nez v9, :cond_a

    or-int v17, v17, v12

    invoke-static {v15, v11, v13}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, v13, Lqoh;->a:I

    invoke-static {v1}, La2i;->a(I)I

    move-result v1

    move-object/from16 v2, v28

    invoke-virtual {v2, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_6
    move/from16 v4, p4

    move v1, v10

    move/from16 v18, v14

    move/from16 v12, v16

    move/from16 v9, v22

    move/from16 v16, v23

    move-object v14, v2

    move v10, v6

    move-object v6, v8

    move-object v2, v13

    move/from16 v13, v24

    move v8, v0

    move v0, v5

    goto/16 :goto_5

    :cond_a
    move-object/from16 v10, v28

    :goto_7
    move/from16 v28, v14

    move v14, v5

    goto/16 :goto_f

    :pswitch_2
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v2, v14

    move/from16 v5, v22

    move/from16 v14, v28

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    if-nez v9, :cond_d

    invoke-static {v15, v11, v13}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, v13, Lqoh;->a:I

    invoke-virtual {v8, v6}, Lq0j;->F(I)Lcoi;

    move-result-object v9

    const/high16 v11, -0x80000000

    and-int v11, v21, v11

    if-eqz v11, :cond_c

    if-eqz v9, :cond_c

    invoke-interface {v9, v1}, Lcoi;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    invoke-static/range {p1 .. p1}, Lq0j;->x(Ljava/lang/Object;)Li3j;

    move-result-object v3

    int-to-long v11, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v14, v1}, Li3j;->j(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    :goto_8
    or-int v17, v17, v12

    invoke-virtual {v2, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :cond_d
    move-object v10, v2

    goto :goto_7

    :pswitch_3
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v2, v14

    move/from16 v5, v22

    move/from16 v14, v28

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_d

    or-int v17, v17, v12

    invoke-static {v15, v11, v13}, Lqph;->a([BILqoh;)I

    move-result v1

    iget-object v9, v13, Lqoh;->c:Ljava/lang/Object;

    invoke-virtual {v2, v7, v3, v4, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v4, p4

    move v0, v5

    move/from16 v18, v14

    move/from16 v12, v16

    move/from16 v9, v22

    move/from16 v16, v23

    move/from16 v5, p5

    move-object v14, v2

    move-object v2, v13

    move/from16 v13, v24

    move-object/from16 v31, v8

    move v8, v1

    move v1, v10

    :goto_9
    move v10, v6

    move-object/from16 v6, v31

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v2, v14

    move/from16 v5, v22

    move/from16 v14, v28

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_d

    or-int v17, v17, v12

    invoke-virtual {v8, v7, v6}, Lq0j;->J(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v6}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    move-object v0, v9

    move-object v12, v2

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move v11, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->n(Ljava/lang/Object;Lu1j;[BIILqoh;)I

    move-result v0

    invoke-virtual {v8, v7, v6, v9}, Lq0j;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v5, p5

    move v1, v10

    move-object v2, v13

    move/from16 v18, v14

    move/from16 v9, v22

    move/from16 v13, v24

    move v10, v6

    move-object v6, v8

    move-object v14, v12

    move/from16 v12, v16

    move/from16 v16, v23

    move v8, v0

    move v0, v11

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v2, v14

    move/from16 v5, v22

    move/from16 v14, v28

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_d

    and-int v0, v21, v18

    if-eqz v0, :cond_e

    or-int v0, v17, v12

    invoke-static {v15, v11, v13}, Lqph;->g([BILqoh;)I

    move-result v1

    move/from16 v17, v0

    move v0, v1

    goto :goto_b

    :cond_e
    invoke-static {v15, v11, v13}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, v13, Lqoh;->a:I

    if-ltz v1, :cond_10

    or-int v9, v17, v12

    if-nez v1, :cond_f

    move-object/from16 v12, v27

    iput-object v12, v13, Lqoh;->c:Ljava/lang/Object;

    :goto_a
    move/from16 v17, v9

    goto :goto_b

    :cond_f
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v0, v1, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v11, v13, Lqoh;->c:Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_a

    :goto_b
    iget-object v1, v13, Lqoh;->c:Ljava/lang/Object;

    invoke-virtual {v2, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    move-object/from16 v2, v29

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v2, v14

    move/from16 v5, v22

    move/from16 v14, v28

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    if-nez v9, :cond_d

    or-int v17, v17, v12

    invoke-static {v15, v11, v13}, Lqph;->l([BILqoh;)I

    move-result v0

    iget-wide v11, v13, Lqoh;->b:J

    cmp-long v1, v11, v25

    if-eqz v1, :cond_11

    move v1, v5

    goto :goto_c

    :cond_11
    move/from16 v1, v24

    :goto_c
    invoke-static {v7, v3, v4, v1}, Lx3j;->k(Ljava/lang/Object;JZ)V

    goto/16 :goto_6

    :pswitch_7
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v2, v14

    move/from16 v5, v22

    move/from16 v14, v28

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    const/4 v0, 0x5

    if-ne v9, v0, :cond_d

    add-int/lit8 v0, v11, 0x4

    or-int v17, v17, v12

    invoke-static {v15, v11}, Lqph;->b([BI)I

    move-result v1

    invoke-virtual {v2, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_8
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v2, v14

    move/from16 v5, v22

    move/from16 v14, v28

    const/4 v10, 0x3

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    if-ne v9, v5, :cond_d

    add-int/lit8 v9, v11, 0x8

    or-int v17, v17, v12

    invoke-static {v15, v11}, Lqph;->p([BI)J

    move-result-wide v11

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v10, v2

    move-wide v2, v3

    move/from16 v28, v14

    move v14, v5

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_d
    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v13

    move v0, v14

    move/from16 v12, v16

    move/from16 v16, v23

    move/from16 v13, v24

    move/from16 v18, v28

    const/4 v1, 0x3

    move-object v14, v10

    move v10, v6

    move-object v6, v8

    move v8, v9

    move/from16 v9, v22

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v10, v14

    move/from16 v14, v22

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    if-nez v9, :cond_12

    or-int v17, v17, v12

    invoke-static {v15, v11, v13}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, v13, Lqoh;->a:I

    invoke-virtual {v10, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_e
    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v13

    move/from16 v12, v16

    move/from16 v9, v22

    move/from16 v16, v23

    move/from16 v13, v24

    move/from16 v18, v28

    const/4 v1, 0x3

    move-object/from16 v31, v8

    move v8, v0

    move v0, v14

    move-object v14, v10

    goto/16 :goto_9

    :pswitch_a
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v10, v14

    move/from16 v14, v22

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    if-nez v9, :cond_12

    or-int v17, v17, v12

    invoke-static {v15, v11, v13}, Lqph;->l([BILqoh;)I

    move-result v9

    iget-wide v11, v13, Lqoh;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_d

    :pswitch_b
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v10, v14

    move/from16 v14, v22

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    const/4 v0, 0x5

    if-ne v9, v0, :cond_12

    add-int/lit8 v0, v11, 0x4

    or-int v17, v17, v12

    invoke-static {v15, v11}, Lqph;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v7, v3, v4, v1}, Lx3j;->m(Ljava/lang/Object;JF)V

    goto :goto_e

    :pswitch_c
    move-object/from16 v8, p0

    move-object v13, v2

    move/from16 v23, v6

    move v6, v10

    move-object v10, v14

    move/from16 v14, v22

    const/16 v16, -0x1

    const/16 v24, 0x0

    move/from16 v22, v0

    if-ne v9, v14, :cond_12

    add-int/lit8 v0, v11, 0x8

    or-int v17, v17, v12

    invoke-static {v15, v11}, Lqph;->p([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v7, v3, v4, v1, v2}, Lx3j;->l(Ljava/lang/Object;JD)V

    goto :goto_e

    :cond_12
    :goto_f
    move-object v12, v7

    move-object v14, v8

    move v2, v11

    move/from16 v8, v22

    move/from16 v11, v28

    const/16 v19, 0x3

    move/from16 v7, p5

    move-object/from16 v31, v10

    move v10, v6

    move-object v6, v13

    move-object/from16 v13, v31

    goto/16 :goto_3f

    :cond_13
    move-object v8, v6

    move v6, v10

    move/from16 v21, v13

    move-object v10, v14

    move/from16 v23, v16

    const/16 v16, -0x1

    const/16 v24, 0x0

    move-object v13, v2

    move-object/from16 v2, v29

    move-object/from16 v31, v5

    move v5, v0

    move-object/from16 v0, v31

    const/16 v14, 0x1b

    if-ne v1, v14, :cond_17

    const/4 v14, 0x2

    if-ne v9, v14, :cond_16

    invoke-virtual {v10, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnpi;

    invoke-interface {v0}, Lnpi;->zzc()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0xa

    goto :goto_10

    :cond_14
    add-int/2addr v1, v1

    :goto_10
    invoke-interface {v0, v1}, Lnpi;->d(I)Lnpi;

    move-result-object v0

    invoke-virtual {v10, v7, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    invoke-virtual {v8, v6}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    move-object v2, v8

    move v3, v14

    move-object v8, v1

    move/from16 v9, v28

    move-object v1, v10

    const/4 v4, 0x3

    move-object/from16 v10, p2

    move/from16 v12, p4

    move-object v14, v13

    move-object v13, v0

    move-object v0, v14

    move/from16 v15, v28

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lqph;->e(Lu1j;I[BIILnpi;Lqoh;)I

    move-result v8

    move-object v14, v1

    move v1, v4

    move v9, v5

    move v10, v6

    move/from16 v18, v15

    move/from16 v12, v16

    move/from16 v16, v23

    move/from16 v13, v24

    move-object/from16 v15, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v2

    move-object v2, v0

    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_16
    move-object v2, v8

    move-object/from16 v15, p2

    move-object/from16 v7, p3

    move/from16 v14, p4

    move/from16 v22, v5

    move v5, v6

    move-object/from16 v29, v10

    move v12, v11

    move-object v6, v13

    move/from16 v30, v28

    goto/16 :goto_34

    :cond_17
    move-object v14, v8

    move/from16 v15, v28

    const/16 v8, 0x31

    move/from16 v22, v5

    const-string v5, "Protocol message had invalid UTF-8."

    move-object/from16 v19, v12

    const-string v12, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v1, v8, :cond_6c

    move/from16 v8, v21

    move-object/from16 v21, v12

    int-to-long v12, v8

    invoke-virtual {v10, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnpi;

    invoke-interface {v8}, Lnpi;->zzc()Z

    move-result v18

    if-nez v18, :cond_18

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move-wide/from16 v28, v12

    add-int v12, v18, v18

    invoke-interface {v8, v12}, Lnpi;->d(I)Lnpi;

    move-result-object v8

    invoke-virtual {v10, v7, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_12
    move-object v13, v8

    goto :goto_13

    :cond_18
    move-wide/from16 v28, v12

    goto :goto_12

    :goto_13
    packed-switch v1, :pswitch_data_1

    const/4 v8, 0x3

    if-ne v9, v8, :cond_1b

    and-int/lit8 v0, v15, -0x8

    or-int/lit8 v9, v0, 0x4

    invoke-virtual {v14, v6}, Lq0j;->G(I)Lu1j;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    move v2, v11

    move-object/from16 v5, p3

    move/from16 v3, p4

    move v4, v9

    move/from16 v28, v15

    move/from16 v15, v22

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->c(Lu1j;[BIIILqoh;)I

    move-result v0

    iget-object v1, v5, Lqoh;->c:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p4

    :goto_14
    if-ge v0, v4, :cond_1a

    move-object/from16 v3, p2

    move/from16 v2, v28

    invoke-static {v3, v0, v5}, Lqph;->i([BILqoh;)I

    move-result v18

    iget v1, v5, Lqoh;->a:I

    if-ne v2, v1, :cond_19

    move-object v0, v12

    move-object/from16 v1, p2

    move-object/from16 v19, v12

    move v12, v2

    move/from16 v2, v18

    move-object/from16 v28, v10

    move-object v10, v3

    move/from16 v3, p4

    move v8, v4

    move v4, v9

    move-object v7, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->c(Lu1j;[BIIILqoh;)I

    move-result v0

    iget-object v1, v7, Lqoh;->c:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v7

    move v4, v8

    move-object/from16 v10, v28

    const/4 v8, 0x3

    move-object/from16 v7, p1

    move/from16 v28, v12

    move-object/from16 v12, v19

    goto :goto_14

    :cond_19
    move v12, v2

    move v8, v4

    move-object v7, v5

    move-object/from16 v28, v10

    move-object v10, v3

    goto :goto_15

    :cond_1a
    move v8, v4

    move-object v7, v5

    move/from16 v12, v28

    move-object/from16 v28, v10

    move-object/from16 v10, p2

    :goto_15
    move v4, v0

    move v0, v6

    move-object v6, v7

    move v14, v8

    move-object v8, v10

    move-object/from16 v7, v28

    const/4 v1, 0x1

    const/4 v3, 0x2

    :goto_16
    move-object/from16 v10, p1

    :goto_17
    move/from16 v31, v12

    move v12, v11

    move/from16 v11, v31

    goto/16 :goto_30

    :cond_1b
    move v12, v15

    move/from16 v15, v22

    move-object/from16 v8, p2

    move/from16 v14, p4

    move v0, v6

    move-object v7, v10

    const/4 v1, 0x1

    const/4 v3, 0x2

    move-object/from16 v10, p1

    move-object/from16 v6, p6

    :goto_18
    move/from16 v31, v12

    move v12, v11

    move/from16 v11, v31

    goto/16 :goto_2f

    :pswitch_d
    move/from16 v8, p4

    move-object/from16 v7, p6

    move-object/from16 v28, v10

    move v12, v15

    move/from16 v15, v22

    const/4 v5, 0x2

    move-object/from16 v10, p2

    if-ne v9, v5, :cond_21

    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v10, v11, v7}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, v7, Lqoh;->a:I

    if-ltz v1, :cond_20

    array-length v2, v10

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_1f

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_1e

    if-ne v0, v1, :cond_1d

    :cond_1c
    :goto_19
    move v4, v0

    move v3, v5

    move v0, v6

    move-object v6, v7

    move v14, v8

    move-object v8, v10

    move-object/from16 v7, v28

    const/4 v1, 0x1

    goto :goto_16

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-static {v10, v0, v7}, Lqph;->l([BILqoh;)I

    iget-wide v0, v7, Lqoh;->b:J

    invoke-static {v0, v1}, La2i;->b(J)J

    throw v20

    :cond_1f
    move-object/from16 v1, v21

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-eqz v9, :cond_23

    :cond_22
    move v3, v5

    move v0, v6

    move-object v6, v7

    move v14, v8

    move-object v8, v10

    move-object/from16 v7, v28

    :goto_1a
    const/4 v1, 0x1

    move-object/from16 v10, p1

    goto :goto_18

    :cond_23
    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v10, v11, v7}, Lqph;->l([BILqoh;)I

    iget-wide v0, v7, Lqoh;->b:J

    invoke-static {v0, v1}, La2i;->b(J)J

    throw v20

    :pswitch_e
    move/from16 v8, p4

    move-object/from16 v7, p6

    move-object/from16 v28, v10

    move v12, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v5, 0x2

    move-object/from16 v10, p2

    if-ne v9, v5, :cond_28

    sget v0, Lqph;->a:I

    check-cast v13, Lmmi;

    invoke-static {v10, v11, v7}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v3, v7, Lqoh;->a:I

    if-ltz v3, :cond_27

    array-length v2, v10

    sub-int/2addr v2, v0

    if-gt v3, v2, :cond_26

    add-int/2addr v3, v0

    :goto_1b
    if-ge v0, v3, :cond_24

    invoke-static {v10, v0, v7}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v2, v7, Lqoh;->a:I

    invoke-static {v2}, La2i;->a(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lmmi;->zzh(I)V

    goto :goto_1b

    :cond_24
    if-ne v0, v3, :cond_25

    goto :goto_19

    :cond_25
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    if-nez v9, :cond_22

    sget v0, Lqph;->a:I

    check-cast v13, Lmmi;

    invoke-static {v10, v11, v7}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, v7, Lqoh;->a:I

    invoke-static {v1}, La2i;->a(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lmmi;->zzh(I)V

    :goto_1c
    if-ge v0, v8, :cond_1c

    invoke-static {v10, v0, v7}, Lqph;->i([BILqoh;)I

    move-result v1

    iget v2, v7, Lqoh;->a:I

    if-ne v12, v2, :cond_1c

    invoke-static {v10, v1, v7}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, v7, Lqoh;->a:I

    invoke-static {v1}, La2i;->a(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lmmi;->zzh(I)V

    goto :goto_1c

    :pswitch_f
    move/from16 v8, p4

    move-object/from16 v7, p6

    move-object/from16 v28, v10

    move v12, v15

    move/from16 v15, v22

    const/4 v5, 0x2

    move-object/from16 v10, p2

    if-ne v9, v5, :cond_29

    invoke-static {v10, v11, v13, v7}, Lqph;->f([BILnpi;Lqoh;)I

    move-result v0

    move v9, v5

    goto :goto_1d

    :cond_29
    if-nez v9, :cond_31

    move v0, v12

    move-object/from16 v1, p2

    move v2, v11

    move/from16 v3, p4

    move-object v4, v13

    move v9, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->k(I[BIILnpi;Lqoh;)I

    move-result v0

    :goto_1d
    invoke-virtual {v14, v6}, Lq0j;->F(I)Lcoi;

    move-result-object v1

    iget-object v2, v14, Lq0j;->j:Lg3j;

    sget-object v3, Ly1j;->a:Lg3j;

    if-eqz v1, :cond_2f

    if-eqz v13, :cond_2d

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v9, v20

    move/from16 v4, v24

    move v5, v4

    :goto_1e
    if-ge v4, v3, :cond_2c

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v21, v0

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1, v7}, Lcoi;->zza(I)Z

    move-result v18

    if-eqz v18, :cond_2b

    if-eq v4, v5, :cond_2a

    invoke-interface {v13, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const/4 v0, 0x1

    add-int/2addr v5, v0

    move v7, v0

    move/from16 v29, v6

    move-object/from16 v0, p1

    move-object/from16 v6, p6

    goto :goto_1f

    :cond_2b
    move-object/from16 v0, p1

    move/from16 v29, v6

    move-object/from16 v6, p6

    invoke-static {v0, v15, v7, v9, v2}, Ly1j;->s(Ljava/lang/Object;IILjava/lang/Object;Lg3j;)Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    :goto_1f
    add-int/2addr v4, v7

    move-object v7, v6

    move/from16 v0, v21

    move/from16 v6, v29

    goto :goto_1e

    :cond_2c
    move/from16 v21, v0

    move/from16 v29, v6

    move-object v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    if-eq v5, v3, :cond_30

    invoke-interface {v13, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_21

    :cond_2d
    move/from16 v21, v0

    move/from16 v29, v6

    move-object v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v4, v20

    :cond_2e
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Lcoi;->zza(I)Z

    move-result v9

    if-nez v9, :cond_2e

    invoke-static {v0, v15, v5, v4, v2}, Ly1j;->s(Ljava/lang/Object;IILjava/lang/Object;Lg3j;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_20

    :cond_2f
    move/from16 v21, v0

    move/from16 v29, v6

    move-object v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    :cond_30
    :goto_21
    move v1, v7

    move v14, v8

    move-object v8, v10

    move/from16 v4, v21

    move-object/from16 v7, v28

    const/4 v3, 0x2

    move-object v10, v0

    move/from16 v0, v29

    goto/16 :goto_17

    :cond_31
    move/from16 v29, v6

    move-object v6, v7

    move v3, v5

    move v14, v8

    move-object v8, v10

    move-object/from16 v7, v28

    move/from16 v0, v29

    goto/16 :goto_1a

    :pswitch_10
    move/from16 v8, p4

    move/from16 v29, v6

    move-object v0, v7

    move-object/from16 v28, v10

    move v12, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v10, p2

    move-object/from16 v6, p6

    if-ne v9, v4, :cond_39

    invoke-static {v10, v11, v6}, Lqph;->i([BILqoh;)I

    move-result v3

    iget v5, v6, Lqoh;->a:I

    if-ltz v5, :cond_38

    array-length v9, v10

    sub-int/2addr v9, v3

    if-gt v5, v9, :cond_37

    if-nez v5, :cond_32

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_32
    invoke-static {v10, v3, v5}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/2addr v3, v5

    :goto_23
    if-ge v3, v8, :cond_36

    invoke-static {v10, v3, v6}, Lqph;->i([BILqoh;)I

    move-result v5

    iget v9, v6, Lqoh;->a:I

    if-ne v12, v9, :cond_36

    invoke-static {v10, v5, v6}, Lqph;->i([BILqoh;)I

    move-result v3

    iget v5, v6, Lqoh;->a:I

    if-ltz v5, :cond_35

    array-length v9, v10

    sub-int/2addr v9, v3

    if-gt v5, v9, :cond_34

    if-nez v5, :cond_33

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_33
    invoke-static {v10, v3, v5}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move v1, v7

    move v14, v8

    move-object v8, v10

    move-object/from16 v7, v28

    move-object v10, v0

    move/from16 v0, v29

    move/from16 v31, v4

    move v4, v3

    move/from16 v3, v31

    move/from16 v32, v12

    move v12, v11

    move/from16 v11, v32

    goto/16 :goto_30

    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move v3, v4

    move v1, v7

    move v14, v8

    move-object v8, v10

    move-object/from16 v7, v28

    :goto_24
    move-object v10, v0

    move/from16 v0, v29

    goto/16 :goto_18

    :pswitch_11
    move/from16 v8, p4

    move/from16 v29, v6

    move-object v0, v7

    move-object/from16 v28, v10

    move v12, v15

    move/from16 v15, v22

    const/4 v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v10, p2

    move-object/from16 v6, p6

    if-ne v9, v4, :cond_3a

    move/from16 v3, v29

    invoke-virtual {v14, v3}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    move v2, v8

    const/4 v5, 0x3

    move-object v8, v1

    move v9, v12

    move-object v1, v10

    move-object/from16 v7, v28

    move-object/from16 v10, p2

    move/from16 v21, v11

    move/from16 v30, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lqph;->e(Lu1j;I[BIILnpi;Lqoh;)I

    move-result v8

    move-object v10, v0

    move v14, v2

    move v0, v3

    move v3, v4

    move v4, v8

    move/from16 v12, v21

    move/from16 v11, v30

    move-object v8, v1

    :goto_25
    const/4 v1, 0x1

    goto/16 :goto_30

    :cond_3a
    move-object/from16 v7, v28

    move v3, v4

    move v14, v8

    move-object v8, v10

    const/4 v1, 0x1

    goto :goto_24

    :pswitch_12
    move-object/from16 v1, p2

    move/from16 v14, p4

    move v3, v6

    move/from16 v21, v11

    move/from16 v30, v15

    move/from16 v15, v22

    move-wide/from16 v11, v28

    const/4 v4, 0x2

    const/4 v8, 0x1

    move-object/from16 v6, p6

    move-object/from16 v31, v10

    move-object v10, v0

    move-object v0, v7

    move-object/from16 v7, v31

    if-ne v9, v4, :cond_49

    const-wide/32 v18, 0x20000000

    and-long v11, v11, v18

    cmp-long v9, v11, v25

    if-nez v9, :cond_41

    move/from16 v12, v21

    invoke-static {v1, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v5

    iget v9, v6, Lqoh;->a:I

    if-ltz v9, :cond_40

    if-nez v9, :cond_3b

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3b
    new-instance v11, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v1, v5, v9, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v9

    :goto_26
    if-ge v5, v14, :cond_3e

    invoke-static {v1, v5, v6}, Lqph;->i([BILqoh;)I

    move-result v8

    iget v9, v6, Lqoh;->a:I

    move/from16 v11, v30

    if-ne v11, v9, :cond_3f

    invoke-static {v1, v8, v6}, Lqph;->i([BILqoh;)I

    move-result v5

    iget v8, v6, Lqoh;->a:I

    if-ltz v8, :cond_3d

    if-nez v8, :cond_3c

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v30, v11

    goto :goto_26

    :cond_3c
    new-instance v9, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v5, v8, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v8

    move/from16 v30, v11

    const/4 v4, 0x2

    goto :goto_26

    :cond_3d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move/from16 v11, v30

    :cond_3f
    move-object v10, v0

    move-object v8, v1

    move v0, v3

    move v4, v5

    :goto_27
    const/4 v1, 0x1

    const/4 v3, 0x2

    goto/16 :goto_30

    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    move/from16 v12, v21

    move/from16 v11, v30

    invoke-static {v1, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v4

    iget v8, v6, Lqoh;->a:I

    if-ltz v8, :cond_48

    if-nez v8, :cond_42

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v29, v3

    goto :goto_28

    :cond_42
    add-int v9, v4, v8

    invoke-static {v1, v4, v9}, Ll4j;->b([BII)Z

    move-result v18

    if-eqz v18, :cond_47

    new-instance v0, Ljava/lang/String;

    move/from16 v29, v3

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v4, v8, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v9

    :goto_28
    if-ge v4, v14, :cond_46

    invoke-static {v1, v4, v6}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v3, v6, Lqoh;->a:I

    if-ne v11, v3, :cond_46

    invoke-static {v1, v0, v6}, Lqph;->i([BILqoh;)I

    move-result v4

    iget v0, v6, Lqoh;->a:I

    if-ltz v0, :cond_45

    if-nez v0, :cond_43

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_43
    add-int v3, v4, v0

    invoke-static {v1, v4, v3}, Ll4j;->b([BII)Z

    move-result v8

    if-eqz v8, :cond_44

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v1, v4, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_28

    :cond_44
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    move-object/from16 v10, p1

    move-object v8, v1

    :goto_29
    move/from16 v0, v29

    goto :goto_27

    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    move/from16 v12, v21

    move/from16 v11, v30

    move-object/from16 v10, p1

    move v0, v3

    move v3, v4

    move/from16 v31, v8

    move-object v8, v1

    move/from16 v1, v31

    goto/16 :goto_2f

    :pswitch_13
    move-object/from16 v8, p2

    move/from16 v14, p4

    move/from16 v29, v6

    move-object v7, v10

    move v12, v11

    move v11, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v0, 0x2

    move-object/from16 v6, p6

    if-ne v9, v0, :cond_4f

    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v3, v6, Lqoh;->a:I

    if-ltz v3, :cond_4e

    array-length v2, v8

    sub-int/2addr v2, v0

    if-gt v3, v2, :cond_4d

    add-int/2addr v3, v0

    if-lt v0, v3, :cond_4c

    if-ne v0, v3, :cond_4b

    :cond_4a
    move-object/from16 v10, p1

    move v4, v0

    goto :goto_29

    :cond_4b
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    invoke-static {v8, v0, v6}, Lqph;->l([BILqoh;)I

    throw v20

    :cond_4d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    if-eqz v9, :cond_51

    :cond_50
    move-object/from16 v10, p1

    move/from16 v0, v29

    const/4 v1, 0x1

    :goto_2a
    const/4 v3, 0x2

    goto/16 :goto_2f

    :cond_51
    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12, v6}, Lqph;->l([BILqoh;)I

    iget-wide v0, v6, Lqoh;->b:J

    throw v20

    :pswitch_14
    move-object/from16 v8, p2

    move/from16 v14, p4

    move/from16 v29, v6

    move-object v7, v10

    move v12, v11

    move v11, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v0, 0x2

    move-object/from16 v6, p6

    if-ne v9, v0, :cond_56

    sget v3, Lqph;->a:I

    check-cast v13, Lmmi;

    invoke-static {v8, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v3

    iget v4, v6, Lqoh;->a:I

    if-ltz v4, :cond_55

    array-length v2, v8

    sub-int/2addr v2, v3

    if-gt v4, v2, :cond_54

    add-int v2, v3, v4

    invoke-virtual {v13}, Lmmi;->size()I

    move-result v5

    shr-int/2addr v4, v0

    add-int/2addr v5, v4

    invoke-virtual {v13, v5}, Lmmi;->zzi(I)V

    :goto_2b
    if-ge v3, v2, :cond_52

    invoke-static {v8, v3}, Lqph;->b([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lmmi;->zzh(I)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_2b

    :cond_52
    if-ne v3, v2, :cond_53

    move-object/from16 v10, p1

    move v4, v3

    goto/16 :goto_29

    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    const/4 v0, 0x5

    if-ne v9, v0, :cond_50

    add-int/lit8 v0, v12, 0x4

    sget v1, Lqph;->a:I

    check-cast v13, Lmmi;

    invoke-static {v8, v12}, Lqph;->b([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lmmi;->zzh(I)V

    :goto_2c
    if-ge v0, v14, :cond_4a

    invoke-static {v8, v0, v6}, Lqph;->i([BILqoh;)I

    move-result v1

    iget v2, v6, Lqoh;->a:I

    if-ne v11, v2, :cond_4a

    invoke-static {v8, v1}, Lqph;->b([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lmmi;->zzh(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_2c

    :pswitch_15
    move-object/from16 v8, p2

    move/from16 v14, p4

    move/from16 v29, v6

    move-object v7, v10

    move v12, v11

    move v11, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v0, 0x2

    move-object/from16 v6, p6

    if-ne v9, v0, :cond_59

    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v3, v6, Lqoh;->a:I

    if-ltz v3, :cond_58

    array-length v2, v8

    sub-int/2addr v2, v0

    if-le v3, v2, :cond_57

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    throw v20

    :cond_58
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const/4 v0, 0x1

    if-eq v9, v0, :cond_5a

    move-object/from16 v10, p1

    move v1, v0

    move/from16 v0, v29

    goto/16 :goto_2a

    :cond_5a
    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12}, Lqph;->p([BI)J

    throw v20

    :pswitch_16
    move-object/from16 v8, p2

    move/from16 v14, p4

    move/from16 v29, v6

    move-object v7, v10

    move v12, v11

    move v11, v15

    move/from16 v15, v22

    const/4 v4, 0x2

    move-object/from16 v6, p6

    if-ne v9, v4, :cond_5b

    invoke-static {v8, v12, v13, v6}, Lqph;->f([BILnpi;Lqoh;)I

    move-result v0

    move-object/from16 v10, p1

    move v3, v4

    const/4 v1, 0x1

    move v4, v0

    move/from16 v0, v29

    goto/16 :goto_30

    :cond_5b
    if-nez v9, :cond_5c

    move-object/from16 v10, p1

    move v0, v11

    move-object/from16 v1, p2

    move v2, v12

    move/from16 v9, v29

    move/from16 v3, p4

    move v5, v4

    move-object v4, v13

    move v13, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->k(I[BIILnpi;Lqoh;)I

    move-result v0

    move v4, v0

    move v0, v9

    move v3, v13

    goto/16 :goto_25

    :cond_5c
    move-object/from16 v10, p1

    move v3, v4

    move/from16 v0, v29

    :goto_2d
    const/4 v1, 0x1

    goto/16 :goto_2f

    :pswitch_17
    move-object/from16 v8, p2

    move/from16 v14, p4

    move v0, v6

    move v12, v11

    move v11, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v3, 0x2

    move-object/from16 v6, p6

    move-object/from16 v31, v10

    move-object v10, v7

    move-object/from16 v7, v31

    if-ne v9, v3, :cond_61

    sget v4, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v4

    iget v5, v6, Lqoh;->a:I

    if-ltz v5, :cond_60

    array-length v2, v8

    sub-int/2addr v2, v4

    if-gt v5, v2, :cond_5f

    add-int/2addr v5, v4

    if-lt v4, v5, :cond_5e

    if-ne v4, v5, :cond_5d

    goto/16 :goto_25

    :cond_5d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    invoke-static {v8, v4, v6}, Lqph;->l([BILqoh;)I

    throw v20

    :cond_5f
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    if-eqz v9, :cond_62

    :goto_2e
    goto :goto_2d

    :cond_62
    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12, v6}, Lqph;->l([BILqoh;)I

    iget-wide v0, v6, Lqoh;->b:J

    throw v20

    :pswitch_18
    move-object/from16 v8, p2

    move/from16 v14, p4

    move v0, v6

    move v12, v11

    move v11, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v3, 0x2

    move-object/from16 v6, p6

    move-object/from16 v31, v10

    move-object v10, v7

    move-object/from16 v7, v31

    if-ne v9, v3, :cond_65

    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v3, v6, Lqoh;->a:I

    if-ltz v3, :cond_64

    array-length v2, v8

    sub-int/2addr v2, v0

    if-le v3, v2, :cond_63

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    throw v20

    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    const/4 v1, 0x5

    if-eq v9, v1, :cond_66

    goto :goto_2e

    :cond_66
    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12}, Lqph;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v20

    :pswitch_19
    move-object/from16 v8, p2

    move/from16 v14, p4

    move v0, v6

    move v12, v11

    move v11, v15

    move-object/from16 v1, v21

    move/from16 v15, v22

    const/4 v3, 0x2

    move-object/from16 v6, p6

    move-object/from16 v31, v10

    move-object v10, v7

    move-object/from16 v7, v31

    if-ne v9, v3, :cond_69

    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v3, v6, Lqoh;->a:I

    if-ltz v3, :cond_68

    array-length v2, v8

    sub-int/2addr v2, v0

    if-le v3, v2, :cond_67

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    throw v20

    :cond_68
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    const/4 v1, 0x1

    if-eq v9, v1, :cond_6b

    :goto_2f
    move v4, v12

    :goto_30
    if-eq v4, v12, :cond_6a

    move/from16 v5, p5

    move-object v2, v6

    move/from16 v18, v11

    move v9, v15

    move/from16 v12, v16

    move/from16 v16, v23

    move/from16 v13, v24

    move-object/from16 v6, p0

    move-object v15, v8

    move v8, v4

    move v4, v14

    move-object v14, v7

    move-object v7, v10

    move v10, v0

    move v0, v1

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_6a
    move-object/from16 v14, p0

    move v2, v4

    move-object v13, v7

    move-object v12, v10

    const/16 v19, 0x3

    move/from16 v7, p5

    move v10, v0

    move/from16 v31, v15

    move-object v15, v8

    move/from16 v8, v31

    goto/16 :goto_3f

    :cond_6b
    sget v0, Lqph;->a:I

    invoke-static {v13}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v8, v12}, Lqph;->p([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v20

    :cond_6c
    move-object/from16 v2, p2

    move/from16 v14, p4

    move-object/from16 v27, v0

    move v0, v6

    move-object v6, v13

    move/from16 v28, v21

    move-object/from16 v21, v5

    move-object v13, v7

    move-object v7, v10

    move-object v5, v12

    const/4 v10, 0x2

    move v12, v11

    move v11, v15

    move/from16 v15, v22

    const/16 v8, 0x32

    if-ne v1, v8, :cond_78

    if-ne v9, v10, :cond_77

    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Lq0j;->I(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v13, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/play_billing/zzhm;->zze()Z

    move-result v18

    if-nez v18, :cond_6d

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzb()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v10

    invoke-static {v10, v9}, Lwzi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v13, v3, v4, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v9, v10

    :cond_6d
    check-cast v1, Lrzi;

    invoke-virtual {v1}, Lrzi;->c()Lozi;

    move-result-object v10

    check-cast v9, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-static {v2, v12, v6}, Lqph;->i([BILqoh;)I

    move-result v1

    iget v3, v6, Lqoh;->a:I

    if-ltz v3, :cond_76

    sub-int v4, v14, v1

    if-gt v3, v4, :cond_76

    add-int v5, v1, v3

    iget-object v3, v10, Lozi;->b:Ljava/lang/Object;

    iget-object v4, v10, Lozi;->d:Ljava/lang/Object;

    move-object/from16 v29, v7

    move-object v7, v4

    :goto_31
    if-ge v1, v5, :cond_73

    move/from16 v22, v0

    const/4 v8, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_6e

    invoke-static {v1, v2, v0, v6}, Lqph;->j(I[BILqoh;)I

    move-result v0

    iget v1, v6, Lqoh;->a:I

    :cond_6e
    move/from16 v18, v0

    const/4 v8, 0x3

    ushr-int/lit8 v0, v1, 0x3

    and-int/lit8 v8, v1, 0x7

    const/4 v13, 0x1

    if-eq v0, v13, :cond_71

    const/4 v13, 0x2

    if-eq v0, v13, :cond_6f

    move-object v13, v4

    move v8, v5

    move/from16 v30, v11

    move/from16 v5, v22

    move-object v11, v3

    move/from16 v22, v15

    move-object v15, v2

    move/from16 v2, v18

    goto/16 :goto_33

    :cond_6f
    iget-object v13, v10, Lozi;->c:Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v0

    if-ne v8, v0, :cond_70

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move/from16 v1, v18

    move/from16 v8, v22

    move-object/from16 v0, p2

    move/from16 v22, v15

    move-object v15, v2

    move/from16 v2, p4

    move/from16 v30, v11

    move-object v11, v3

    move-object v3, v13

    move-object v13, v4

    move-object v4, v7

    move v7, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lq0j;->u([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lqoh;)I

    move-result v1

    iget-object v0, v6, Lqoh;->c:Ljava/lang/Object;

    move v5, v7

    move-object v3, v11

    move-object v4, v13

    move-object v2, v15

    move/from16 v15, v22

    move/from16 v11, v30

    move-object/from16 v13, p1

    move-object v7, v0

    move v0, v8

    move-object/from16 v8, p0

    goto :goto_31

    :cond_70
    move-object v13, v4

    move/from16 v30, v11

    move/from16 v8, v22

    move-object v11, v3

    move/from16 v22, v15

    move-object v15, v2

    move/from16 v2, v18

    move/from16 v31, v8

    move v8, v5

    move/from16 v5, v31

    goto :goto_33

    :cond_71
    move-object v13, v4

    move/from16 v30, v11

    move/from16 v4, v22

    move-object v11, v3

    move/from16 v22, v15

    move-object v15, v2

    move/from16 v2, v18

    iget-object v3, v10, Lozi;->a:Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v0

    if-ne v8, v0, :cond_72

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move v1, v2

    move/from16 v2, p4

    move v11, v4

    move-object v4, v8

    move v8, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lq0j;->u([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lqoh;)I

    move-result v1

    iget-object v3, v6, Lqoh;->c:Ljava/lang/Object;

    move v5, v8

    move v0, v11

    :goto_32
    move-object v4, v13

    move-object v2, v15

    move/from16 v15, v22

    move/from16 v11, v30

    move-object/from16 v8, p0

    move-object/from16 v13, p1

    goto/16 :goto_31

    :cond_72
    move v8, v5

    move v5, v4

    :goto_33
    invoke-static {v1, v15, v2, v14, v6}, Lqph;->o(I[BIILqoh;)I

    move-result v1

    move v0, v5

    move v5, v8

    move-object v3, v11

    goto :goto_32

    :cond_73
    move v8, v5

    move/from16 v30, v11

    move/from16 v22, v15

    move v5, v0

    move-object v15, v2

    move-object v11, v3

    if-ne v1, v8, :cond_75

    invoke-interface {v9, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v8, v12, :cond_74

    move-object/from16 v7, p1

    move v10, v5

    move-object v2, v6

    move v4, v14

    move/from16 v12, v16

    move/from16 v9, v22

    move/from16 v16, v23

    move/from16 v13, v24

    move-object/from16 v14, v29

    move/from16 v18, v30

    const/4 v0, 0x1

    const/4 v1, 0x3

    move-object/from16 v6, p0

    goto/16 :goto_5

    :cond_74
    move-object/from16 v14, p0

    move-object/from16 v12, p1

    move/from16 v7, p5

    move v10, v5

    move v2, v8

    move/from16 v8, v22

    move-object/from16 v13, v29

    move/from16 v11, v30

    const/16 v19, 0x3

    goto/16 :goto_3f

    :cond_75
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    move-object/from16 v7, p3

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    move v5, v0

    move-object/from16 v29, v7

    move/from16 v30, v11

    move/from16 v22, v15

    move-object/from16 v7, p3

    move-object v15, v2

    :goto_34
    move-object/from16 v14, p0

    move v10, v5

    move-object/from16 p3, v7

    move v2, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    move/from16 v11, v30

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v7, p5

    goto/16 :goto_3f

    :cond_78
    move v5, v0

    move-object/from16 v29, v7

    move v0, v10

    move/from16 v30, v11

    move/from16 v22, v15

    move-object/from16 v7, p3

    move-object v15, v2

    add-int/lit8 v10, v5, 0x2

    aget v2, v19, v10

    const v8, 0xfffff

    and-int/2addr v2, v8

    int-to-long v10, v2

    packed-switch v1, :pswitch_data_2

    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/16 v19, 0x3

    move-object/from16 v12, p1

    :goto_35
    move/from16 v29, v5

    goto/16 :goto_3d

    :pswitch_1a
    const/4 v1, 0x3

    if-ne v9, v1, :cond_79

    and-int/lit8 v2, v30, -0x8

    or-int/lit8 v13, v2, 0x4

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v22

    invoke-virtual {v2, v3, v4, v5}, Lq0j;->K(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v5}, Lq0j;->G(I)Lu1j;

    move-result-object v9

    move/from16 v19, v1

    move-object v8, v11

    move v1, v10

    move-object/from16 v10, p2

    move-object v1, v11

    move/from16 v0, v30

    move v11, v12

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lqph;->m(Ljava/lang/Object;Lu1j;[BIIILqoh;)I

    move-result v8

    invoke-virtual {v2, v3, v4, v5, v1}, Lq0j;->l(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object v14, v2

    move-object v12, v3

    move v11, v8

    move-object/from16 v13, v29

    move v8, v4

    :goto_36
    move/from16 v29, v5

    goto/16 :goto_3e

    :cond_79
    move/from16 v19, v1

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v4, v22

    move-object/from16 v14, p0

    move-object/from16 v12, p1

    move v8, v4

    move-object/from16 v13, v29

    goto :goto_35

    :pswitch_1b
    move-object/from16 v2, p0

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v8, v22

    move/from16 v0, v30

    const/16 v19, 0x3

    move-object/from16 v12, p1

    if-nez v9, :cond_7a

    invoke-static {v15, v7, v6}, Lqph;->l([BILqoh;)I

    move-result v1

    iget-wide v13, v6, Lqoh;->b:J

    invoke-static {v13, v14}, La2i;->b(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v13, v29

    invoke-virtual {v13, v12, v3, v4, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_37
    move/from16 v30, v0

    move v11, v1

    move-object v14, v2

    goto :goto_36

    :cond_7a
    move-object/from16 v13, v29

    :cond_7b
    move/from16 v30, v0

    move-object v14, v2

    goto :goto_35

    :pswitch_1c
    move-object/from16 v2, p0

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    move/from16 v0, v30

    const/16 v19, 0x3

    move-object/from16 v12, p1

    if-nez v9, :cond_7b

    invoke-static {v15, v7, v6}, Lqph;->i([BILqoh;)I

    move-result v1

    iget v9, v6, Lqoh;->a:I

    invoke-static {v9}, La2i;->a(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v12, v3, v4, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_37

    :pswitch_1d
    move-object/from16 v2, p0

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    move/from16 v0, v30

    const/16 v19, 0x3

    move-object/from16 v12, p1

    if-nez v9, :cond_7b

    invoke-static {v15, v7, v6}, Lqph;->i([BILqoh;)I

    move-result v1

    iget v9, v6, Lqoh;->a:I

    invoke-virtual {v2, v5}, Lq0j;->F(I)Lcoi;

    move-result-object v14

    if-eqz v14, :cond_7d

    invoke-interface {v14, v9}, Lcoi;->zza(I)Z

    move-result v14

    if-eqz v14, :cond_7c

    goto :goto_38

    :cond_7c
    invoke-static/range {p1 .. p1}, Lq0j;->x(Ljava/lang/Object;)Li3j;

    move-result-object v3

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Li3j;->j(ILjava/lang/Object;)V

    goto :goto_37

    :cond_7d
    :goto_38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v12, v3, v4, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_37

    :pswitch_1e
    move-object/from16 v2, p0

    move v1, v0

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    move/from16 v0, v30

    const/16 v19, 0x3

    move-object/from16 v12, p1

    if-ne v9, v1, :cond_7b

    invoke-static {v15, v7, v6}, Lqph;->a([BILqoh;)I

    move-result v9

    iget-object v14, v6, Lqoh;->c:Ljava/lang/Object;

    invoke-virtual {v13, v12, v3, v4, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v30, v0

    move-object v14, v2

    move/from16 v29, v5

    move v11, v9

    goto/16 :goto_3e

    :pswitch_1f
    move-object/from16 v2, p0

    move v1, v0

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    move/from16 v0, v30

    const/16 v19, 0x3

    move-object/from16 v12, p1

    if-ne v9, v1, :cond_7b

    invoke-virtual {v2, v12, v8, v5}, Lq0j;->K(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v5}, Lq0j;->G(I)Lu1j;

    move-result-object v3

    move v14, v0

    move v10, v1

    move-object v0, v9

    const/4 v11, 0x1

    move-object v1, v3

    move-object v4, v2

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v30, v14

    move-object v14, v4

    move/from16 v4, p4

    move v10, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->n(Ljava/lang/Object;Lu1j;[BIILqoh;)I

    move-result v0

    invoke-virtual {v14, v12, v8, v10, v9}, Lq0j;->l(Ljava/lang/Object;IILjava/lang/Object;)V

    move v11, v0

    move/from16 v29, v10

    goto/16 :goto_3e

    :pswitch_20
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v31, v5

    move v5, v0

    move-wide v0, v10

    const/4 v11, 0x1

    move/from16 v10, v31

    if-ne v9, v5, :cond_81

    invoke-static {v15, v7, v6}, Lqph;->i([BILqoh;)I

    move-result v2

    iget v9, v6, Lqoh;->a:I

    if-nez v9, :cond_7e

    move-object/from16 v5, v27

    invoke-virtual {v13, v12, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v29, v10

    goto :goto_3a

    :cond_7e
    and-int v5, v28, v18

    add-int v11, v2, v9

    if-eqz v5, :cond_80

    invoke-static {v15, v2, v11}, Ll4j;->b([BII)Z

    move-result v5

    if-eqz v5, :cond_7f

    goto :goto_39

    :cond_7f
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    :goto_39
    new-instance v5, Ljava/lang/String;

    move/from16 v29, v10

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v15, v2, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v13, v12, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v11

    :goto_3a
    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3b
    move v11, v2

    goto/16 :goto_3e

    :cond_81
    move/from16 v29, v10

    goto/16 :goto_3d

    :pswitch_21
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move-wide v0, v10

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v29, v5

    if-nez v9, :cond_83

    invoke-static {v15, v7, v6}, Lqph;->l([BILqoh;)I

    move-result v2

    iget-wide v9, v6, Lqoh;->b:J

    cmp-long v5, v9, v25

    if-eqz v5, :cond_82

    const/4 v5, 0x1

    goto :goto_3c

    :cond_82
    move/from16 v5, v24

    :goto_3c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v12, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_22
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move-wide v0, v10

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/4 v2, 0x5

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v29, v5

    if-ne v9, v2, :cond_83

    add-int/lit8 v11, v7, 0x4

    invoke-static {v15, v7}, Lqph;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v12, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3e

    :pswitch_23
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move-wide v0, v10

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/4 v2, 0x1

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v29, v5

    if-ne v9, v2, :cond_83

    add-int/lit8 v11, v7, 0x8

    invoke-static {v15, v7}, Lqph;->p([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v12, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3e

    :pswitch_24
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move-wide v0, v10

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v29, v5

    if-nez v9, :cond_83

    invoke-static {v15, v7, v6}, Lqph;->i([BILqoh;)I

    move-result v2

    iget v5, v6, Lqoh;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v12, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_25
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move-wide v0, v10

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v29, v5

    if-nez v9, :cond_83

    invoke-static {v15, v7, v6}, Lqph;->l([BILqoh;)I

    move-result v2

    iget-wide v9, v6, Lqoh;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v12, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_26
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move-wide v0, v10

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/4 v2, 0x5

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v29, v5

    if-ne v9, v2, :cond_83

    add-int/lit8 v11, v7, 0x4

    invoke-static {v15, v7}, Lqph;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v13, v12, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3e

    :pswitch_27
    move-object/from16 v14, p0

    move-object/from16 p3, v7

    move-wide v0, v10

    move v7, v12

    move/from16 v8, v22

    move-object/from16 v13, v29

    const/4 v2, 0x1

    const/16 v19, 0x3

    move-object/from16 v12, p1

    move/from16 v29, v5

    if-ne v9, v2, :cond_83

    add-int/lit8 v11, v7, 0x8

    invoke-static {v15, v7}, Lqph;->p([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v13, v12, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3e

    :cond_83
    :goto_3d
    move v11, v7

    :goto_3e
    if-eq v11, v7, :cond_84

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v6

    move v9, v8

    move v8, v11

    move-object v7, v12

    move-object v6, v14

    move/from16 v12, v16

    move/from16 v1, v19

    move/from16 v16, v23

    move/from16 v10, v29

    move/from16 v18, v30

    const/4 v0, 0x1

    move-object v14, v13

    move/from16 v13, v24

    goto/16 :goto_0

    :cond_84
    move/from16 v7, p5

    move v2, v11

    move/from16 v10, v29

    move/from16 v11, v30

    :goto_3f
    if-ne v11, v7, :cond_85

    if-eqz v7, :cond_85

    move v8, v2

    move/from16 v1, v17

    :goto_40
    move/from16 v0, v23

    const v2, 0xfffff

    goto/16 :goto_42

    :cond_85
    iget-boolean v0, v14, Lq0j;->f:Z

    if-eqz v0, :cond_86

    iget-object v0, v6, Lqoh;->d:Lc8i;

    sget-object v1, Lc8i;->b:Lc8i;

    sget v1, Lonh;->a:I

    sget-object v1, Lc8i;->b:Lc8i;

    if-eq v0, v1, :cond_86

    iget-object v1, v14, Lq0j;->e:Lg0j;

    sget v3, Lqph;->a:I

    invoke-virtual {v0, v1, v8}, Lc8i;->a(Lg0j;I)Liki;

    invoke-static/range {p1 .. p1}, Lq0j;->x(Ljava/lang/Object;)Li3j;

    move-result-object v4

    move v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p4

    const/4 v9, 0x2

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->h(I[BIILi3j;Lqoh;)I

    move-result v0

    goto :goto_41

    :cond_86
    const/4 v9, 0x2

    invoke-static/range {p1 .. p1}, Lq0j;->x(Ljava/lang/Object;)Li3j;

    move-result-object v4

    move v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lqph;->h(I[BIILi3j;Lqoh;)I

    move-result v0

    :goto_41
    move/from16 v4, p4

    move-object v2, v6

    move v5, v7

    move v9, v8

    move/from16 v18, v11

    move-object v7, v12

    move-object v6, v14

    move/from16 v12, v16

    move/from16 v1, v19

    move/from16 v16, v23

    move v8, v0

    move-object v14, v13

    move/from16 v13, v24

    goto/16 :goto_11

    :cond_87
    move-object/from16 p3, v3

    move-object v12, v7

    move-object v13, v14

    move/from16 v23, v16

    move v7, v5

    move-object v14, v6

    move/from16 v1, v17

    move/from16 v11, v18

    goto :goto_40

    :goto_42
    if-eq v0, v2, :cond_88

    int-to-long v2, v0

    invoke-virtual {v13, v12, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_88
    iget v0, v14, Lq0j;->h:I

    move v6, v0

    move-object/from16 v3, v20

    :goto_43
    iget v0, v14, Lq0j;->i:I

    if-ge v6, v0, :cond_89

    iget-object v0, v14, Lq0j;->g:[I

    iget-object v4, v14, Lq0j;->j:Lg3j;

    aget v2, v0, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lq0j;->H(Ljava/lang/Object;ILjava/lang/Object;Lg3j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Li3j;

    const/4 v0, 0x1

    add-int/2addr v6, v0

    goto :goto_43

    :cond_89
    if-eqz v3, :cond_8a

    move-object v0, v12

    check-cast v0, Lkli;

    iput-object v3, v0, Lkli;->zzc:Li3j;

    :cond_8a
    if-nez v7, :cond_8c

    move/from16 v0, p4

    if-ne v8, v0, :cond_8b

    goto :goto_44

    :cond_8b
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    move-object/from16 v1, p3

    move/from16 v0, p4

    if-gt v8, v0, :cond_8d

    if-ne v11, v7, :cond_8d

    :goto_44
    return v8

    :cond_8d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    sget-object v9, Lq0j;->m:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    move v1, v10

    move v12, v1

    move v13, v12

    move v0, v11

    :goto_0
    iget-object v2, v6, Lq0j;->a:[I

    array-length v3, v2

    if-ge v12, v3, :cond_1b

    invoke-virtual {v6, v12}, Lq0j;->D(I)I

    move-result v3

    invoke-static {v3}, Lq0j;->C(I)I

    move-result v4

    aget v14, v2, v12

    add-int/lit8 v5, v12, 0x2

    aget v2, v2, v5

    and-int v5, v2, v11

    const/16 v15, 0x11

    if-gt v4, v15, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v11, :cond_0

    move v1, v10

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v9, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    shl-int v2, v8, v2

    move v15, v0

    move/from16 v16, v1

    move v5, v2

    goto :goto_2

    :cond_2
    move v15, v0

    move/from16 v16, v1

    move v5, v10

    :goto_2
    and-int v0, v3, v11

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgi;->zzJ:Lcom/google/android/gms/internal/play_billing/zzgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgi;->zzW:Lcom/google/android/gms/internal/play_billing/zzgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()I

    :cond_3
    int-to-long v2, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1b

    :pswitch_0
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0j;

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    invoke-static {v14, v0, v1}, Ly1j;->f(ILg0j;Lu1j;)I

    move-result v0

    :goto_3
    add-int/2addr v13, v0

    goto/16 :goto_1b

    :pswitch_1
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    goto :goto_4

    :pswitch_3
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    :goto_5
    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    :goto_6
    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto :goto_4

    :pswitch_6
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    goto :goto_4

    :pswitch_7
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    :goto_7
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v2

    sget-object v3, Ly1j;->a:Lg3j;

    check-cast v1, Lplh;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-virtual {v1, v2}, Lplh;->c(Lu1j;)I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    goto :goto_7

    :pswitch_9
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    goto :goto_7

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    sget v2, Ll4j;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/s;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    goto :goto_7

    :pswitch_a
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    :goto_8
    add-int/2addr v0, v8

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_c
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lq0j;->z(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lq0j;->E(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_11
    invoke-virtual {v6, v7, v14, v12}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v12}, Lq0j;->I(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhm;

    check-cast v1, Lrzi;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_9
    move v2, v10

    goto :goto_b

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhm;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v10

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v14, v4, v3}, Lrzi;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a

    :cond_6
    :goto_b
    add-int/2addr v13, v2

    goto/16 :goto_1b

    :pswitch_13
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    sget-object v2, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    move v4, v10

    goto :goto_d

    :cond_7
    move v3, v10

    move v4, v3

    :goto_c
    if-ge v3, v2, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg0j;

    invoke-static {v14, v5, v1}, Ly1j;->f(ILg0j;Lu1j;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v8

    goto :goto_c

    :cond_8
    :goto_d
    add-int/2addr v13, v4

    goto/16 :goto_1b

    :pswitch_14
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->o(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    :goto_e
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_9
    :goto_f
    add-int/2addr v13, v1

    goto/16 :goto_1b

    :pswitch_15
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->n(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_16
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->k(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_17
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_18
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->g(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_19
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->p(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto :goto_e

    :pswitch_1a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->k(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1d
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->l(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->q(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->m(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_20
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_21
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ly1j;->k(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_22
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :goto_10
    move v0, v10

    goto/16 :goto_3

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Ly1j;->o(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    :goto_11
    mul-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_10

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Ly1j;->n(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    goto :goto_11

    :pswitch_24
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Ly1j;->j(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Ly1j;->h(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_10

    :cond_c
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Ly1j;->g(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    goto :goto_11

    :pswitch_27
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_10

    :cond_d
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Ly1j;->p(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    goto :goto_11

    :pswitch_28
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v10

    goto/16 :goto_f

    :cond_e
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v10

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    invoke-static {v3}, Lo4i;->w(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/2addr v2, v8

    goto :goto_12

    :pswitch_29
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    sget-object v2, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    move v3, v10

    goto :goto_14

    :cond_f
    shl-int/lit8 v3, v14, 0x3

    invoke-static {v3}, Lo4i;->w(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v10

    :goto_13
    if-ge v4, v2, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lplh;

    invoke-virtual {v5, v1}, Lplh;->c(Lu1j;)I

    move-result v5

    invoke-static {v5}, Lo4i;->w(I)I

    move-result v14

    add-int/2addr v14, v5

    add-int/2addr v3, v14

    add-int/2addr v4, v8

    goto :goto_13

    :cond_10
    :goto_14
    add-int/2addr v13, v3

    goto/16 :goto_1b

    :pswitch_2a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_9

    :cond_11
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lmwi;

    if-eqz v3, :cond_13

    check-cast v0, Lmwi;

    move v3, v10

    :goto_15
    if-ge v3, v1, :cond_6

    invoke-interface {v0}, Lmwi;->zza()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v5, :cond_12

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v4

    invoke-static {v4}, Lo4i;->w(I)I

    move-result v5

    :goto_16
    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_17

    :cond_12
    check-cast v4, Ljava/lang/String;

    sget v5, Ll4j;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/s;->b(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lo4i;->w(I)I

    move-result v5

    goto :goto_16

    :goto_17
    add-int/2addr v3, v8

    goto :goto_15

    :cond_13
    move v3, v10

    :goto_18
    if-ge v3, v1, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v4

    invoke-static {v4}, Lo4i;->w(I)I

    move-result v5

    :goto_19
    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_1a

    :cond_14
    check-cast v4, Ljava/lang/String;

    sget v5, Ll4j;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/s;->b(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lo4i;->w(I)I

    move-result v5

    goto :goto_19

    :goto_1a
    add-int/2addr v3, v8

    goto :goto_18

    :pswitch_2b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_10

    :cond_15
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    add-int/2addr v1, v8

    mul-int/2addr v0, v1

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Ly1j;->h(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Ly1j;->j(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_10

    :cond_16
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Ly1j;->l(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_11

    :pswitch_2f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_10

    :cond_17
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Ly1j;->q(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_11

    :pswitch_30
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Ly1j;->a:Lg3j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_9

    :cond_18
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Ly1j;->m(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    goto/16 :goto_b

    :pswitch_31
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Ly1j;->h(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Ly1j;->j(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v12

    move-wide v10, v3

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0j;

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v1

    invoke-static {v14, v0, v1}, Ly1j;->f(ILg0j;Lu1j;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_35
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_38
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_39
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3a
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3b
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v12}, Lq0j;->G(I)Lu1j;

    move-result-object v2

    sget-object v3, Ly1j;->a:Lg3j;

    check-cast v1, Lplh;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-virtual {v1, v2}, Lplh;->c(Lu1j;)I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3c
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v2, :cond_19

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_7

    :cond_19
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    sget v2, Ll4j;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/s;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_40
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_41
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_42
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lq0j;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    goto/16 :goto_5

    :cond_1a
    :goto_1b
    add-int/lit8 v12, v12, 0x3

    move v0, v15

    move/from16 v1, v16

    const/4 v10, 0x0

    const v11, 0xfffff

    goto/16 :goto_0

    :cond_1b
    move-object v0, v7

    check-cast v0, Lkli;

    iget-object v0, v0, Lkli;->zzc:Li3j;

    invoke-virtual {v0}, Li3j;->a()I

    move-result v0

    add-int/2addr v13, v0

    iget-boolean v0, v6, Lq0j;->f:Z

    if-nez v0, :cond_1c

    return v13

    :cond_1c
    invoke-static/range {p1 .. p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lq0j;->a:[I

    array-length v3, v3

    const v4, 0xfffff

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lq0j;->D(I)I

    move-result v3

    invoke-static {v3}, Lq0j;->C(I)I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_0

    const/16 v6, 0x45

    if-lt v5, v6, :cond_2

    :cond_0
    and-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_4

    :pswitch_1
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_2
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_1
    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_4

    :pswitch_3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Llqi;->a:[B

    :goto_3
    ushr-long v5, v3, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_1

    :pswitch_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Llqi;->a:[B

    goto :goto_3

    :pswitch_6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_9
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_2

    :pswitch_b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_c
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->t(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Llqi;->a(Z)I

    move-result v3

    goto :goto_1

    :pswitch_d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Llqi;->a:[B

    goto :goto_3

    :pswitch_f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Llqi;->a:[B

    goto :goto_3

    :pswitch_11
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Llqi;->a:[B

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->b(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lx3j;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Llqi;->a:[B

    goto/16 :goto_3

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lq0j;->i:I

    :goto_5
    iget-object v3, p0, Lq0j;->g:[I

    array-length v5, v3

    if-ge v1, v5, :cond_5

    aget v3, v3, v1

    invoke-virtual {p0, p1, v0, v3}, Lq0j;->s(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_4

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {p0, v3}, Lq0j;->D(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lx3j;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    mul-int/lit8 v2, v2, 0x35

    move-object v0, p1

    check-cast v0, Lkli;

    iget-object v0, v0, Lkli;->zzc:Li3j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean p0, p0, Lq0j;->f:Z

    if-nez p0, :cond_6

    return v2

    :cond_6
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lq0j;->e:Lg0j;

    check-cast p0, Lkli;

    invoke-virtual {p0}, Lkli;->r()Lkli;

    move-result-object p0

    return-object p0
.end method
