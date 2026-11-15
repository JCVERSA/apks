.class public final Lcom/cloud/tmc/ad/Constants$HOST$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/Constants$HOST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/Constants$HOST$Companion;",
        "",
        "()V",
        "ADN_FAT_SERVER_IMPRESSSION",
        "",
        "getADN_FAT_SERVER_IMPRESSSION",
        "()Ljava/lang/String;",
        "setADN_FAT_SERVER_IMPRESSSION",
        "(Ljava/lang/String;)V",
        "ADN_PRE_SERVER_IMPRESSSION",
        "getADN_PRE_SERVER_IMPRESSSION",
        "setADN_PRE_SERVER_IMPRESSSION",
        "ADN_RELEASE_SERVER_IMPRESSSION",
        "getADN_RELEASE_SERVER_IMPRESSSION",
        "setADN_RELEASE_SERVER_IMPRESSSION",
        "ADN_TEST_SERVER_IMPRESSSION",
        "getADN_TEST_SERVER_IMPRESSSION",
        "setADN_TEST_SERVER_IMPRESSSION",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/cloud/tmc/ad/Constants$HOST$Companion;

.field private static ADN_FAT_SERVER_IMPRESSSION:Ljava/lang/String;

.field private static ADN_PRE_SERVER_IMPRESSSION:Ljava/lang/String;

.field private static ADN_RELEASE_SERVER_IMPRESSSION:Ljava/lang/String;

.field private static ADN_TEST_SERVER_IMPRESSSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/ad/Constants$HOST$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->$$INSTANCE:Lcom/cloud/tmc/ad/Constants$HOST$Companion;

    .line 7
    .line 8
    const-string v0, "api.fat1.eagllwin.com"

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_FAT_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "api.test.eagllwin.com"

    .line 13
    .line 14
    sput-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_TEST_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "api.pre.eagllwin.com"

    .line 17
    .line 18
    sput-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_PRE_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "api.eagllwin.com"

    .line 21
    .line 22
    sput-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_RELEASE_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getADN_FAT_SERVER_IMPRESSSION()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_FAT_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getADN_PRE_SERVER_IMPRESSSION()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_PRE_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getADN_RELEASE_SERVER_IMPRESSSION()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_RELEASE_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getADN_TEST_SERVER_IMPRESSSION()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_TEST_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setADN_FAT_SERVER_IMPRESSSION(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_FAT_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setADN_PRE_SERVER_IMPRESSSION(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_PRE_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setADN_RELEASE_SERVER_IMPRESSSION(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_RELEASE_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setADN_TEST_SERVER_IMPRESSSION(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/cloud/tmc/ad/Constants$HOST$Companion;->ADN_TEST_SERVER_IMPRESSSION:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
