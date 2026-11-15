.class public final Lwci;
.super Liai;
.source "SourceFile"


# instance fields
.field public final a:Ladi;

.field public final b:Leri;

.field public final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ladi;Leri;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Liai;-><init>()V

    iput-object p1, p0, Lwci;->a:Ladi;

    iput-object p2, p0, Lwci;->b:Leri;

    iput-object p3, p0, Lwci;->c:Ljava/lang/Integer;

    return-void
.end method

.method public static c(Ladi;Ljava/lang/Integer;)Lwci;
    .locals 2

    invoke-virtual {p0}, Ladi;->b()Lxci;

    move-result-object v0

    sget-object v1, Lxci;->b:Lxci;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Leri;->b([B)Leri;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ladi;->b()Lxci;

    move-result-object v0

    sget-object v1, Lxci;->c:Lxci;

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Leri;->b([B)Leri;

    move-result-object v0

    :goto_0
    new-instance v1, Lwci;

    invoke-direct {v1, p0, v0, p1}, Lwci;-><init>(Ladi;Leri;Ljava/lang/Integer;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ladi;->b()Lxci;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Variant: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic a()Lp9i;
    .locals 0

    iget-object p0, p0, Lwci;->a:Ladi;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lwci;->b:Leri;

    return-object p0
.end method

.method public final d()Ladi;
    .locals 0

    iget-object p0, p0, Lwci;->a:Ladi;

    return-object p0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lwci;->c:Ljava/lang/Integer;

    return-object p0
.end method
