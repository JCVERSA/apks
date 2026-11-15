.class public interface abstract Lhyperion/hap/ICryptoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract aliases()Ljava/util/List;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract decrypt(Ljava/lang/String;[B)[B
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;[B)[B
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract exportKey(Ljava/lang/String;)[B
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract generateKey(Ljava/lang/String;I)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract getImportKeyAAD(I)[B
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract importKey(Ljava/lang/String;ILjava/lang/String;[B[B[B[B[B)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract removeKey(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract sign(Ljava/lang/String;[B)[B
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract updateKey(Ljava/lang/String;I)V
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method

.method public abstract verify(Ljava/lang/String;[B[B)Z
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "hyperion.permission.USE_SECURE_CRYPTO"
    .end annotation
.end method
