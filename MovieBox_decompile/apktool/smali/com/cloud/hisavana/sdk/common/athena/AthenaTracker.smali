.class public Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;,
        Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field public static b:Z = true

.field public static c:Ljava/security/SecureRandom;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c:Ljava/security/SecureRandom;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$26;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$26;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getLogEnable()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "halfScreenLogEnable"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lk7/b;->b(Ljava/util/List;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/b;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/b;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$36;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$36;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static E(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static H(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/f;-><init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static I(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;-><init>(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v7}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static K(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static L(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$6;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static M(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$5;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static P(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$25;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$25;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static Q(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/c;-><init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static R()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$29;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$29;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static T(Lcom/cloud/hisavana/sdk/p3;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;-><init>(Lcom/cloud/hisavana/sdk/p3;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/a;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/g;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->X(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static X(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setVideoPlayTimeType(Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->m0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$20;

    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$20;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static Y(Ljava/lang/String;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;-><init>(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$3;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->r(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c0(Ljava/lang/String;IIJ)V
    .locals 7

    .line 1
    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move-wide v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;-><init>(Ljava/lang/String;IIJ)V

    .line 9
    .line 10
    .line 11
    invoke-static {v6}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->t(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic e(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->f0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->s(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$23;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$23;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g0(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;-><init>(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic h(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;

    .line 29
    .line 30
    move-object v0, p0

    .line 31
    move-object v2, p1

    .line 32
    move-object v3, p2

    .line 33
    move v4, p3

    .line 34
    move-object v5, p4

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;-><init>(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getLogEnable()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "showTrackingUrlsLogEnable"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lk7/b;->b(Ljava/util/List;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getShowTrackingUrlsLogEnable()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/e;

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    move-object v2, p0

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move v5, p3

    .line 40
    move-object v6, p4

    .line 41
    move-object v7, p5

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/e;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method private static j(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const-string v1, "screen_angular"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static j0(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 11
    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "compliance"

    .line 16
    .line 17
    const-string v0, "1"

    .line 18
    .line 19
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return-void
.end method

.method public static k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "android_id"

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    move-object p0, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/transsion/core/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    sput-object p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    return-object p0

    .line 49
    :catch_0
    :cond_2
    return-object v0
.end method

.method public static l0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$31;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$31;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/h0;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ps_version"

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string v1, "net"

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "app_id"

    .line 45
    .line 46
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lk7/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static m0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static n(Landroid/content/Context;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x64

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    sput-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sput-boolean v4, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    .line 22
    .line 23
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    rem-int/2addr p0, v1

    .line 49
    if-ltz p0, :cond_3

    .line 50
    .line 51
    if-gt p0, p1, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move v0, v4

    .line 55
    :cond_4
    :goto_2
    return v0
.end method

.method public static n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move-object v2, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move v5, p3

    .line 15
    move-object v6, p4

    .line 16
    move-object/from16 v7, p5

    .line 17
    .line 18
    move/from16 v8, p6

    .line 19
    .line 20
    move-wide/from16 v9, p7

    .line 21
    .line 22
    invoke-direct/range {v1 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static o(ZLandroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x223d

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "ssp"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lk7/c;->l()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->a0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    const/16 v1, 0x96b

    .line 32
    .line 33
    const-string v2, "SSP"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {p1, v2, v1, p0, v3}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v2, v0, p0, v3}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    sput-boolean p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a:Z

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public static o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p4, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    move-wide v7, p5

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static synthetic p(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->c(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static synthetic q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static q0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$17;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$17;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic r(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->d(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic s(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->e(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic t(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 9

    .line 1
    new-instance v8, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    move v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    .line 12
    .line 13
    .line 14
    invoke-static {v8}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$27;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$27;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static z(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/d;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
