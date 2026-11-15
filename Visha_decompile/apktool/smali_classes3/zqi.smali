.class public final Lzqi;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lari;


# direct methods
.method public constructor <init>(Lari;)V
    .locals 0

    iput-object p1, p0, Lzqi;->a:Lari;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljavax/crypto/Mac;
    .locals 2

    :try_start_0
    sget-object v0, Lmqi;->c:Lmqi;

    iget-object p0, p0, Lzqi;->a:Lari;

    invoke-static {p0}, Lari;->b(Lari;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmqi;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-static {p0}, Lari;->c(Lari;)Ljava/security/Key;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lzqi;->a()Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method
