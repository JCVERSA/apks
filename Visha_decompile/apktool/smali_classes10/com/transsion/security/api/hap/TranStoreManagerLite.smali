.class public final Lcom/transsion/security/api/hap/TranStoreManagerLite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhyperion/hap/IStoreManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;


# instance fields
.field public final synthetic a:Lkxa;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    invoke-direct {v0}, Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;-><init>()V

    sput-object v0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->b:Lcom/transsion/security/api/hap/TranStoreManagerLite$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls6d;

    invoke-direct {v0}, Ls6d;-><init>()V

    new-instance v0, Lcom/transsion/security/aosp/hap/base/impl/TranHapStoreManagerImpl;

    new-instance v3, Ltwa;

    invoke-direct {v3}, Ltwa;-><init>()V

    new-instance v4, Li5b;

    invoke-direct {v4}, Li5b;-><init>()V

    new-instance v5, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;

    new-instance v1, Lhyperion/interstore/impl/TranStorePrefs;

    sget-object v2, Luwa;->a:Luwa;

    invoke-virtual {v2}, Luwa;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v6}, Lhyperion/interstore/impl/TranStorePrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v5, v1}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;-><init>(Lpw4;)V

    new-instance v6, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;

    new-instance v1, Lhyperion/interstore/impl/TranStorePrefs;

    invoke-virtual {v2}, Luwa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lhyperion/interstore/impl/TranStorePrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v6, v1}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;-><init>(Lpw4;)V

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/security/aosp/hap/base/impl/TranHapStoreManagerImpl;-><init>(Landroid/content/Context;Lmw4;Lqw4;Lpw4;Lpw4;)V

    new-instance v9, Lkxa;

    sget-object v3, Ljxa;->a:Ljxa;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v4, v0

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lkxa;-><init>(Landroid/content/Context;Ljxa;Ljava/lang/Object;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    return-void
.end method


# virtual methods
.method public final getKeys(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    invoke-virtual {p0, p1}, Lkxa;->getKeys(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadByteArray(Ljava/lang/String;)[B
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "loadByteArray(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkxa;->loadByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final loadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "loadFile(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->loadFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "loadString(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkxa;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadStringPersist(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "loadStringPersist(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkxa;->loadStringPersist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "remove(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->remove(Ljava/lang/String;I)V

    return-void
.end method

.method public final saveByteArray(Ljava/lang/String;[B)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "saveByteArray(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->saveByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public final saveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "saveFile(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "saveString(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveStringPersist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/security/api/hap/TranStoreManagerLite;->a:Lkxa;

    const-string v0, "saveStringPersist(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkxa;->saveStringPersist(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
