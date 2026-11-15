.class public final Loai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltji;


# static fields
.field public static final a:Loai;

.field public static final b:Ljji;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loai;

    invoke-direct {v0}, Loai;-><init>()V

    sput-object v0, Loai;->a:Loai;

    new-instance v0, Lkai;

    invoke-direct {v0}, Lkai;-><init>()V

    const-class v1, Lthi;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Loai;->b:Ljji;

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

    sget-object v1, Loai;->a:Loai;

    invoke-virtual {v0, v1}, Lnii;->d(Ltji;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Loai;->b:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    return-void
.end method

.method public static c(Lkji;)V
    .locals 1

    sget-object v0, Loai;->a:Loai;

    invoke-virtual {p0, v0}, Lkji;->b(Ltji;)Lkji;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lohi;Lxhi;Lf9i;)Ljava/lang/Object;
    .locals 8

    new-instance p0, Lbji;

    invoke-direct {p0}, Lbji;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lohi;->zza()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Lohi;->d(I)Lnhi;

    move-result-object v1

    invoke-interface {v1}, Lnhi;->zzb()Lb9i;

    move-result-object v2

    instance-of v3, v2, Liai;

    if-eqz v3, :cond_0

    check-cast v2, Liai;

    invoke-virtual {v2}, Liai;->b()Leri;

    move-result-object v2

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lthi;

    if-eqz v3, :cond_1

    check-cast v2, Lthi;

    invoke-virtual {v2}, Lthi;->c()Leri;

    move-result-object v2

    :goto_1
    new-instance v3, Llai;

    invoke-virtual {p3, v1}, Lf9i;->a(Lnhi;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq8i;

    invoke-interface {v1}, Lnhi;->zza()I

    move-result v1

    invoke-direct {v3, v4, v1}, Llai;-><init>(Lq8i;I)V

    invoke-virtual {p0, v2, v3}, Lbji;->a(Leri;Ljava/lang/Object;)Lbji;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Lb9i;->a()Lp9i;

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
    invoke-virtual {p2}, Lxhi;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Llii;->b()Llii;

    move-result-object v0

    invoke-virtual {v0}, Llii;->a()Lzhi;

    move-result-object v0

    const-string v1, "encrypt"

    const-string v2, "aead"

    invoke-interface {v0, p1, p2, v2, v1}, Lzhi;->a(Lohi;Lxhi;Ljava/lang/String;Ljava/lang/String;)Lyhi;

    move-result-object v1

    const-string v3, "decrypt"

    invoke-interface {v0, p1, p2, v2, v3}, Lzhi;->a(Lohi;Lxhi;Ljava/lang/String;Ljava/lang/String;)Lyhi;

    move-result-object p2

    move-object v6, p2

    move-object v5, v1

    goto :goto_2

    :cond_3
    sget-object v1, Lcii;->a:Lyhi;

    move-object v5, v1

    move-object v6, v5

    :goto_2
    new-instance p2, Lmai;

    new-instance v3, Llai;

    invoke-interface {p1}, Lohi;->zze()Lnhi;

    move-result-object v0

    invoke-virtual {p3, v0}, Lf9i;->a(Lnhi;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lq8i;

    invoke-interface {p1}, Lohi;->zze()Lnhi;

    move-result-object p1

    invoke-interface {p1}, Lnhi;->zza()I

    move-result p1

    invoke-direct {v3, p3, p1}, Llai;-><init>(Lq8i;I)V

    invoke-virtual {p0}, Lbji;->b()Leji;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lmai;-><init>(Llai;Leji;Lyhi;Lyhi;Lnai;)V

    return-object p2
.end method

.method public final zza()Ljava/lang/Class;
    .locals 0

    const-class p0, Lq8i;

    return-object p0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 0

    const-class p0, Lq8i;

    return-object p0
.end method
