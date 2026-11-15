.class public final Lkxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhyperion/hap/IStoreManager;
.implements Lhyperion/hap/ICryptoManager;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljxa;

.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljxa;Ljava/lang/Object;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkxa;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lkxa;->b:Ljxa;

    .line 4
    iput-object p3, p0, Lkxa;->c:Ljava/lang/Object;

    .line 5
    iput-boolean p4, p0, Lkxa;->d:Z

    .line 6
    iput-boolean p5, p0, Lkxa;->e:Z

    .line 7
    const-string p1, "HapInstr"

    iput-object p1, p0, Lkxa;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljxa;Ljava/lang/Object;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lkxa;-><init>(Landroid/content/Context;Ljxa;Ljava/lang/Object;ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lkxa;->e:Z

    return p0
.end method

.method public aliases()Ljava/util/List;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0}, Lhyperion/hap/ICryptoManager;->aliases()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v1, v0}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw v0
.end method

.method public decrypt(Ljava/lang/String;[B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/ICryptoManager;->decrypt(Ljava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public encrypt(Ljava/lang/String;[B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/ICryptoManager;->encrypt(Ljava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public exportKey(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1}, Lhyperion/hap/ICryptoManager;->exportKey(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v0, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public generateKey(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/ICryptoManager;->generateKey(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public getImportKeyAAD(I)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1}, Lhyperion/hap/ICryptoManager;->getImportKeyAAD(I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v0, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public getKeys(I)Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1}, Lhyperion/hap/IStoreManager;->getKeys(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v0, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public importKey(Ljava/lang/String;ILjava/lang/String;[B[B[B[B[B)V
    .locals 11

    move-object v1, p0

    const-string v0, "alias"

    move-object v3, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decryptKeyAlias"

    move-object v5, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedTmpKey"

    move-object v6, p4

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedKey"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aad"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lkxa;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lhyperion/hap/ICryptoManager;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lhyperion/hap/ICryptoManager;->importKey(Ljava/lang/String;ILjava/lang/String;[B[B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, v1, Lkxa;->b:Ljxa;

    invoke-virtual {v2, v0}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw v0
.end method

.method public loadByteArray(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1}, Lhyperion/hap/IStoreManager;->loadByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v0, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public loadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/IStoreManager;->loadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public loadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v0, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public loadStringPersist(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1}, Lhyperion/hap/IStoreManager;->loadStringPersist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v0, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public remove(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/IStoreManager;->remove(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1}, Lhyperion/hap/ICryptoManager;->removeKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lkxa;->b:Ljxa;

    invoke-virtual {v0, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public saveByteArray(Ljava/lang/String;[B)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/IStoreManager;->saveByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public saveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/IStoreManager;->saveFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public saveStringPersist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/IStoreManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/IStoreManager;->saveStringPersist(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/ICryptoManager;->sign(Ljava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p1
.end method

.method public updateKey(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1, p2}, Lhyperion/hap/ICryptoManager;->updateKey(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    throw p1
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkxa;->c:Ljava/lang/Object;

    check-cast v0, Lhyperion/hap/ICryptoManager;

    invoke-interface {v0, p1, p2, p3}, Lhyperion/hap/ICryptoManager;->verify(Ljava/lang/String;[B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkxa;->b:Ljxa;

    invoke-virtual {p2, p1}, Ljxa;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0}, Lkxa;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lkxa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    throw p1
.end method
