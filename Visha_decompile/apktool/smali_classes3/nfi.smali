.class public final Lnfi;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public static final a()Ljavax/crypto/Cipher;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmqi;->b:Lmqi;

    const-string v2, "ChaCha20-Poly1305"

    invoke-virtual {v1, v2}, Lmqi;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    invoke-static {v1}, Lofi;->d(Ljavax/crypto/Cipher;)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lnfi;->a()Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method
