.class public final Lwki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltji;


# static fields
.field public static final a:Lwki;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwki;

    invoke-direct {v0}, Lwki;-><init>()V

    sput-object v0, Lwki;->a:Lwki;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lwki;->a:Lwki;

    invoke-virtual {v0, v1}, Lnii;->d(Ltji;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lohi;Lxhi;Lf9i;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Lohi;->zze()Lnhi;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p2, Lbji;

    invoke-direct {p2}, Lbji;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lohi;->zza()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Lohi;->d(I)Lnhi;

    move-result-object v1

    invoke-virtual {p3, v1}, Lf9i;->a(Lnhi;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltki;

    invoke-interface {v1}, Lnhi;->zzb()Lb9i;

    move-result-object v1

    instance-of v3, v1, Lnli;

    if-eqz v3, :cond_0

    check-cast v1, Lnli;

    invoke-virtual {v1}, Lnli;->b()Leri;

    move-result-object v1

    goto :goto_1

    :cond_0
    instance-of v3, v1, Lthi;

    if-eqz v3, :cond_1

    check-cast v1, Lthi;

    invoke-virtual {v1}, Lthi;->c()Leri;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1, v2}, Lbji;->a(Leri;Ljava/lang/Object;)Lbji;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lb9i;->a()Lp9i;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot get output prefix for key of class "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with parameters "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p3, p0}, Lf9i;->a(Lnhi;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltki;

    new-instance p1, Luki;

    invoke-virtual {p2}, Lbji;->b()Leji;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Luki;-><init>(Leji;Ltki;Lvki;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "no primary in primitive set"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zza()Ljava/lang/Class;
    .locals 0

    const-class p0, Ltki;

    return-object p0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 0

    const-class p0, Ltki;

    return-object p0
.end method
