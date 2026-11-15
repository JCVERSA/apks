.class public final Lcom/transsion/security/api/hap/TranCryptoManagerLite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhyperion/hap/ICryptoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;


# instance fields
.field public final synthetic a:Lkxa;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;

    invoke-direct {v0}, Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;-><init>()V

    sput-object v0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->b:Lcom/transsion/security/api/hap/TranCryptoManagerLite$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls6d;

    invoke-direct {v0}, Ls6d;-><init>()V

    new-instance v5, Lhyperion/interstore/impl/TranStorePrefs;

    sget-object v0, Luwa;->a:Luwa;

    invoke-virtual {v0}, Luwa;->a()Ljava/lang/String;

    move-result-object v0

    move-object v8, p1

    invoke-direct {v5, p1, v0}, Lhyperion/interstore/impl/TranStorePrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v9, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;

    new-instance v3, Ltwa;

    invoke-direct {v3}, Ltwa;-><init>()V

    new-instance v4, Li5b;

    invoke-direct {v4}, Li5b;-><init>()V

    new-instance v6, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;

    invoke-direct {v6, v5}, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;-><init>(Lpw4;)V

    sget-object v7, Lb3d;->a:Lb3d;

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;-><init>(Landroid/content/Context;Lmw4;Lqw4;Lpw4;Low4;Lnw4;)V

    new-instance v0, Lkxa;

    sget-object v1, Ljxa;->a:Ljxa;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v6, v0

    move-object v7, p1

    move-object v8, v1

    move/from16 v11, p2

    invoke-direct/range {v6 .. v13}, Lkxa;-><init>(Landroid/content/Context;Ljxa;Ljava/lang/Object;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    iput-object v0, v1, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    return-void
.end method


# virtual methods
.method public final aliases()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    invoke-virtual {p0}, Lkxa;->aliases()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final decrypt(Ljava/lang/String;[B)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    invoke-virtual {p0, p1, p2}, Lkxa;->decrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final encrypt(Ljava/lang/String;[B)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    invoke-virtual {p0, p1, p2}, Lkxa;->encrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final exportKey(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    invoke-virtual {p0, p1}, Lkxa;->exportKey(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final generateKey(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    const-string v0, "generateKey(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->generateKey(Ljava/lang/String;I)V

    return-void
.end method

.method public final getImportKeyAAD(I)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    invoke-virtual {p0, p1}, Lkxa;->getImportKeyAAD(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final importKey(Ljava/lang/String;ILjava/lang/String;[B[B[B[B[B)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    const-string v1, "importKey(...)"

    move-object v2, p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p3

    invoke-static {p3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p4

    invoke-static {p4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p5

    invoke-static {p5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p6

    invoke-static {p6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lkxa;->importKey(Ljava/lang/String;ILjava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public final removeKey(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    const-string v0, "removeKey(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkxa;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public final sign(Ljava/lang/String;[B)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    invoke-virtual {p0, p1, p2}, Lkxa;->sign(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final updateKey(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    const-string v0, "updateKey(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->updateKey(Ljava/lang/String;I)V

    return-void
.end method

.method public final verify(Ljava/lang/String;[B[B)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranCryptoManagerLite;->a:Lkxa;

    invoke-virtual {p0, p1, p2, p3}, Lkxa;->verify(Ljava/lang/String;[B[B)Z

    move-result p0

    return p0
.end method
