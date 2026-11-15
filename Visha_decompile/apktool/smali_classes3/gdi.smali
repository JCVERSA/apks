.class public final Lgdi;
.super Liai;
.source "SourceFile"


# instance fields
.field public final a:Lldi;

.field public final b:Leri;

.field public final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lldi;Leri;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Liai;-><init>()V

    iput-object p1, p0, Lgdi;->a:Lldi;

    iput-object p2, p0, Lgdi;->b:Leri;

    iput-object p3, p0, Lgdi;->c:Ljava/lang/Integer;

    return-void
.end method

.method public static c(Lldi;Ljava/lang/Integer;)Lgdi;
    .locals 2

    invoke-virtual {p0}, Lldi;->c()Ljdi;

    move-result-object v0

    sget-object v1, Ljdi;->c:Ljdi;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lrii;->a:Leri;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lldi;->c()Ljdi;

    move-result-object v0

    sget-object v1, Ljdi;->b:Ljdi;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lrii;->b(I)Leri;

    move-result-object v0

    :goto_0
    new-instance v1, Lgdi;

    invoke-direct {v1, p0, v0, p1}, Lgdi;-><init>(Lldi;Leri;Ljava/lang/Integer;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lldi;->c()Ljdi;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    iget-object p0, p0, Lgdi;->a:Lldi;

    return-object p0
.end method

.method public final b()Leri;
    .locals 0

    iget-object p0, p0, Lgdi;->b:Leri;

    return-object p0
.end method

.method public final d()Lldi;
    .locals 0

    iget-object p0, p0, Lgdi;->a:Lldi;

    return-object p0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lgdi;->c:Ljava/lang/Integer;

    return-object p0
.end method
