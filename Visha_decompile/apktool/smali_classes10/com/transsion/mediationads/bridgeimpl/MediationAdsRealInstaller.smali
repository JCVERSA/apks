.class public final Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;",
        "",
        "<init>",
        "()V",
        "Lzfb;",
        "install",
        "mediationads-impl_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;

    invoke-direct {v0}, Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;-><init>()V

    sput-object v0, Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;->a:Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mediationads/bridgeimpl/MediationAdsRealInstaller;->b(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;
    .locals 1

    new-instance v0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final install()V
    .locals 2

    sget-object v0, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    sget-object v1, Ldda;->a:Ldda;

    invoke-virtual {v0, v1}, Lcom/transsion/mediationads/manager/b$a;->b(Lkw4;)V

    sget-object v0, Lrab;->a:Lrab$a;

    sget-object v1, Lsab;->a:Lsab;

    invoke-virtual {v0, v1}, Lrab$a;->b(Lsw4;)V

    sget-object v0, Lcom/transsion/mediationads/beans/AdMediaItem;->Companion:Lcom/transsion/mediationads/beans/AdMediaItem$Companion;

    new-instance v1, Lvm6;

    invoke-direct {v1}, Lvm6;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/mediationads/beans/AdMediaItem$Companion;->installFactory(Ls74;)V

    sget-object v0, Lkm6;->a:Lkm6$a;

    sget-object v1, Lmm6;->a:Lmm6;

    invoke-virtual {v0, v1}, Lkm6$a;->b(Lkv4;)V

    sget-object v0, Ls45;->a:Ls45$a;

    sget-object v1, Lt45;->a:Lt45;

    invoke-virtual {v0, v1}, Ls45$a;->b(Lgv4;)V

    sget-object v0, Lo34;->a:Lo34;

    invoke-static {v0}, Ln34;->b(Lbv4;)V

    sget-object v0, Ldv9;->a:Ldv9$a;

    sget-object v1, Lcv9;->a:Lcv9;

    invoke-virtual {v0, v1}, Ldv9$a;->b(Liw4;)V

    const-class v0, Lcom/transsion/mediationads/activity/MediaAdsActivity;

    sput-object v0, Lhb6;->b:Ljava/lang/Class;

    return-void
.end method
