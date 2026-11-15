.class public abstract Lhai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lhai;->b()Lbhi;

    move-result-object v0

    sput-object v0, Lhai;->a:Lbhi;

    return-void
.end method

.method public static a()Lw8i;
    .locals 2

    invoke-static {}, Lugi;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lhai;->a:Lbhi;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant AeadConfigurationV0 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lbhi;
    .locals 4

    const-class v0, Lq8i;

    :try_start_0
    invoke-static {}, Lnji;->a()Lkji;

    move-result-object v1

    invoke-static {v1}, Loai;->c(Lkji;)V

    new-instance v2, Laai;

    invoke-direct {v2}, Laai;-><init>()V

    const-class v3, Lrai;

    invoke-static {v2, v3, v0}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkji;->a(Ljji;)Lkji;

    new-instance v2, Lbai;

    invoke-direct {v2}, Lbai;-><init>()V

    const-class v3, Lobi;

    invoke-static {v2, v3, v0}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkji;->a(Ljji;)Lkji;

    new-instance v2, Lcai;

    invoke-direct {v2}, Lcai;-><init>()V

    const-class v3, Lbci;

    invoke-static {v2, v3, v0}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkji;->a(Ljji;)Lkji;

    new-instance v2, Ldai;

    invoke-direct {v2}, Ldai;-><init>()V

    const-class v3, Lebi;

    invoke-static {v2, v3, v0}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkji;->a(Ljji;)Lkji;

    new-instance v2, Leai;

    invoke-direct {v2}, Leai;-><init>()V

    const-class v3, Lkci;

    invoke-static {v2, v3, v0}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkji;->a(Ljji;)Lkji;

    new-instance v2, Lfai;

    invoke-direct {v2}, Lfai;-><init>()V

    const-class v3, Liei;

    invoke-static {v2, v3, v0}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkji;->a(Ljji;)Lkji;

    new-instance v2, Lgai;

    invoke-direct {v2}, Lgai;-><init>()V

    const-class v3, Lcei;

    invoke-static {v2, v3, v0}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkji;->a(Ljji;)Lkji;

    invoke-virtual {v1}, Lkji;->c()Lnji;

    move-result-object v0

    invoke-static {v0}, Lbhi;->d(Lnji;)Lbhi;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
