.class public abstract Lcom/google/android/gms/internal/ads/ia;
.super Lcom/google/android/gms/internal/ads/aa;
.source "SourceFile"


# static fields
.field private static final zza:I = -0x80000000

.field private static final zzb:I = 0x7fffffff

.field private static zzc:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/ia;",
            ">;"
        }
    .end annotation
.end field

.field static final zzr:I = 0x7fffffff

.field static final zzs:I


# instance fields
.field private zzd:I

.field protected zzt:Lqui;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ia;->zzc:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aa;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ia;->zzd:I

    invoke-static {}, Lqui;->c()Lqui;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    return-void
.end method

.method public static F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ia;->E()V

    sget-object v0, Lcom/google/android/gms/internal/ads/ia;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static I(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/ia;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/ia;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/gms/internal/ads/ia;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lvui;->o(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->J()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/ia;->zzc:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static L(Lcom/google/android/gms/internal/ads/ia;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/ia;
    .locals 1

    sget-object v0, Lesi;->b:Lesi;

    sget-object v0, Lxti;->c:Lxti;

    sget-object v0, Lesi;->c:Lesi;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ia;->N(Lcom/google/android/gms/internal/ads/ia;Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ia;->X(Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public static M(Lcom/google/android/gms/internal/ads/ia;[B)Lcom/google/android/gms/internal/ads/ia;
    .locals 3

    array-length v0, p1

    sget-object v1, Lesi;->b:Lesi;

    sget-object v1, Lxti;->c:Lxti;

    sget-object v1, Lesi;->c:Lesi;

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/ia;->Z(Lcom/google/android/gms/internal/ads/ia;[BIILesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ia;->X(Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public static N(Lcom/google/android/gms/internal/ads/ia;Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/ia;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ia;->Y(Lcom/google/android/gms/internal/ads/ia;Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ia;->X(Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public static O(Lcom/google/android/gms/internal/ads/ia;Ljava/io/InputStream;Lesi;)Lcom/google/android/gms/internal/ads/ia;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Lvri;->e(Ljava/io/InputStream;I)Lvri;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ia;->R(Lcom/google/android/gms/internal/ads/ia;Lvri;Lesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ia;->X(Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public static Q(Lcom/google/android/gms/internal/ads/ia;[BLesi;)Lcom/google/android/gms/internal/ads/ia;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/ia;->Z(Lcom/google/android/gms/internal/ads/ia;[BIILesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ia;->X(Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public static R(Lcom/google/android/gms/internal/ads/ia;Lvri;Lesi;)Lcom/google/android/gms/internal/ads/ia;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->K()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    invoke-static {p1}, Lwri;->A(Lvri;)Lwri;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcui;->e(Ljava/lang/Object;Laui;Lesi;)V

    invoke-interface {v0, p0}, Lcui;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzhak; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgyk;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyk;

    throw p0

    :cond_0
    throw p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgyk;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyk;

    throw p0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhak;->zza()Lcom/google/android/gms/internal/ads/zzgyk;

    move-result-object p0

    throw p0

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyk;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    throw p0
.end method

.method public static X(Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->h()Lcom/google/android/gms/internal/ads/zzhak;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhak;->zza()Lcom/google/android/gms/internal/ads/zzgyk;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static Y(Lcom/google/android/gms/internal/ads/ia;Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/ia;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzl()Lvri;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ia;->R(Lcom/google/android/gms/internal/ads/ia;Lvri;Lesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lvri;->z(I)V

    return-object p0
.end method

.method public static Z(Lcom/google/android/gms/internal/ads/ia;[BIILesi;)Lcom/google/android/gms/internal/ads/ia;
    .locals 7

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->K()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v6

    add-int v4, p2, p3

    new-instance v5, Lmri;

    invoke-direct {v5, p4}, Lmri;-><init>(Lesi;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcui;->d(Ljava/lang/Object;[BIILmri;)V

    invoke-interface {v6, p0}, Lcui;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzhak; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgyk;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyk;

    throw p0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhak;->zza()Lcom/google/android/gms/internal/ads/zzgyk;

    move-result-object p0

    throw p0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyk;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    throw p0
.end method

.method public static final a0(Lcom/google/android/gms/internal/ads/ia;Z)Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zza:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    invoke-interface {v0, p0}, Lcui;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    if-eq v2, v0, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgxu;->zzb:Lcom/google/android/gms/internal/ads/zzgxu;

    invoke-virtual {p0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static q()Lvsi;
    .locals 1

    invoke-static {}, Losi;->i()Losi;

    move-result-object v0

    return-object v0
.end method

.method public static r(Lvsi;)Lvsi;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    invoke-interface {p0, v0}, Lvsi;->zzh(I)Lvsi;

    move-result-object p0

    return-object p0
.end method

.method public static s()Lxsi;
    .locals 1

    invoke-static {}, Leti;->j()Leti;

    move-result-object v0

    return-object v0
.end method

.method public static t(Lxsi;)Lxsi;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    invoke-interface {p0, v0}, Lxsi;->zze(I)Lxsi;

    move-result-object p0

    return-object p0
.end method

.method public static u()Lysi;
    .locals 1

    invoke-static {}, Lyti;->c()Lyti;

    move-result-object v0

    return-object v0
.end method

.method public static v(Lysi;)Lysi;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    invoke-interface {p0, v0}, Lysi;->e(I)Lysi;

    move-result-object p0

    return-object p0
.end method

.method public static varargs y(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lzti;

    invoke-direct {v0, p0, p1, p2}, Lzti;-><init>(Lrti;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aa;->zzq:I

    return-void
.end method

.method public B()V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aa;->j(I)V

    return-void
.end method

.method public C()V
    .locals 2

    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    invoke-interface {v0, p0}, Lcui;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->E()V

    return-void
.end method

.method public E()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/ia;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ia;->zzd:I

    return-void
.end method

.method public final G()Llsi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zze:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llsi;

    return-object p0
.end method

.method public final H()Llsi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zze:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llsi;

    invoke-virtual {v0, p0}, Llsi;->o(Lcom/google/android/gms/internal/ads/ia;)Llsi;

    return-object v0
.end method

.method public final J()Lcom/google/android/gms/internal/ads/ia;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zzf:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public K()Lcom/google/android/gms/internal/ads/ia;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zzd:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public final P()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/ia;->a0(Lcom/google/android/gms/internal/ads/ia;Z)Z

    move-result p0

    return p0
.end method

.method public final S(Lcui;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object p1

    invoke-interface {p1, p0}, Lcui;->zza(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1, p0}, Lcui;->zza(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public T(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/aa;->zzq:I

    return-void
.end method

.method public U()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->o()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public V()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/ia;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aa;->f(Lcui;)I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/ia;->zzd:I

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public c(Lcom/google/android/gms/internal/ads/ha;)V
    .locals 2

    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    invoke-static {p1}, Lasi;->a(Lcom/google/android/gms/internal/ads/ha;)Lasi;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcui;->c(Ljava/lang/Object;Lbvi;)V

    return-void
.end method

.method public bridge synthetic d()Lrti;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->J()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e()Lqti;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->G()Llsi;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p0, p1}, Lcui;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(Lcui;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ia;->S(Lcui;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serialized size must be non-negative, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->b()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->b()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ia;->S(Lcui;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aa;->j(I)V

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->n()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ia;->T(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->o()I

    move-result p0

    return p0
.end method

.method public j(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/ia;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ia;->zzd:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serialized size must be non-negative, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n()I
    .locals 2

    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    invoke-interface {v0, p0}, Lcui;->zzb(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/aa;->zzq:I

    return p0
.end method

.method public final p()Llsi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zze:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llsi;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/ja;->a(Lrti;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lvti;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zzg:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvti;

    return-object p0
.end method

.method public x()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxu;->zzc:Lcom/google/android/gms/internal/ads/zzgxu;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/ia;->W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
