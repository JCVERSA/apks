.class public abstract Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;,
        Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = true

.field public static c:Ljava/security/SecureRandom;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c:Ljava/security/SecureRandom;

    const-string v0, ""

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 9

    new-instance v8, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$31;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$31;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    invoke-static {v8}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static C(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Ldk;

    invoke-direct {v0, p0, p1, p2, p3}, Ldk;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$27;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$27;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static E(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getLogEnable()Ljava/util/List;

    move-result-object v0

    const-string v1, "halfScreenLogEnable"

    invoke-static {v0, v1}, Lik;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbk;

    invoke-direct {v0, p0, p1, p2}, Lbk;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$43;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$43;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static H(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static J(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$20;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static K(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 1

    new-instance v0, Lfk;

    invoke-direct {v0, p0}, Lfk;-><init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static L(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static M(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;Ljava/lang/String;)V

    return-void
.end method

.method public static O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v6}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static P(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Q(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$8;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$8;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static R(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$6;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$6;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static S(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static T(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$26;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$26;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static V(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 1

    new-instance v0, Lck;

    invoke-direct {v0, p0}, Lck;-><init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static W()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$1;-><init>()V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static X(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Y(Lied;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;-><init>(Lied;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lak;

    invoke-direct {v0, p0, p1}, Lak;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lgk;

    invoke-direct {v0, p0, p1}, Lgk;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public static b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->s(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method public static c0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setVideoPlayTimeType(Ljava/lang/Integer;)V

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->s0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public static d0(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->q(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lzj;

    invoke-direct {v0, p0}, Lzj;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->t(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method public static f0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$5;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$5;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->r(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    return-void
.end method

.method public static g0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;

    invoke-direct {v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    invoke-static {v1}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static h0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$3;

    invoke-direct {v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$3;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    invoke-static {v1}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method public static i0(Ljava/lang/String;IIJ)V
    .locals 7

    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;-><init>(Ljava/lang/String;IIJ)V

    invoke-static {v6}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method public static j0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$29;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$29;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static k(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lhm4;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "screen_angular"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->l0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V

    return-void
.end method

.method public static l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    const-string p0, "compliance"

    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static l0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lja3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static m0(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;-><init>(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcy9;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ps_version"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "net"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lr6;->b:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lvl4;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "is_miniac"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    invoke-static {p0}, Lik;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;-><init>(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V

    invoke-static {p0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static o(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sput-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    goto :goto_0

    :cond_1
    sput-boolean v4, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rem-int/2addr p0, v1

    if-ltz p0, :cond_3

    if-gt p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v4

    :cond_4
    :goto_2
    return v0
.end method

.method public static o0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getLogEnable()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "showTrackingUrlsLogEnable"

    invoke-static {v0, v1}, Lik;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getShowTrackingUrlsLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lek;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lek;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static p(ZLandroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x223d

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ssp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd8;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->Y(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/16 v1, 0x96b

    const-string v2, "SSP"

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p0, v3}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZZ)V

    invoke-static {p1, v2, v0, p0, v3}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZZ)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a:Z

    :cond_0
    return-void
.end method

.method public static p0(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic q(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->d(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static q0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic r(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    return-void
.end method

.method public static r0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;

    invoke-direct {v1, p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-static {v1}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic s(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->e(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method public static s0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V
    .locals 2

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;

    invoke-direct {v1, p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Landroid/os/Bundle;)V

    invoke-static {v1}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic t(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->f(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method public static t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public static u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 9

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->X(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public static v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$36;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$36;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static w0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$25;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V

    invoke-static {v0}, Lik;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "show_report_time_type"

    const-string v2, "is_effective_show"

    const-string/jumbo v3, "show_area"

    const-string v4, "actual_show_rate"

    const-string/jumbo v5, "show_duration"

    const-string/jumbo v6, "show_times"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getActualShowTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getActualShowRate()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIsEffectiveShow()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowReportTimeType()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, v6, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v4, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    return-object v0
.end method
