.class public final Lcom/cloud/tmc/integration/model/AppInfoModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008+\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00a5\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00a5\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u00a0\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u00a1\u0001\u001a\u00020\tH\u0016J\u001b\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0007\u0010\u00a4\u0001\u001a\u00020\u000fH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000b\"\u0004\u0008 \u0010\rR\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000b\"\u0004\u0008#\u0010\rR\u001c\u0010$\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000b\"\u0004\u0008&\u0010\rR\u001c\u0010\'\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000b\"\u0004\u0008)\u0010\rR\u001c\u0010*\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000b\"\u0004\u0008,\u0010\rR\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0011\"\u0004\u0008;\u0010\u0013R\u001a\u0010<\u001a\u00020=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u000b\"\u0004\u0008C\u0010\rR\u001c\u0010D\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u000b\"\u0004\u0008F\u0010\rR\u001c\u0010G\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u000b\"\u0004\u0008I\u0010\rR\u001c\u0010J\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u000b\"\u0004\u0008L\u0010\rR\u001c\u0010M\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u000b\"\u0004\u0008O\u0010\rR\"\u0010P\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u0018\"\u0004\u0008R\u0010\u001aR\u001c\u0010S\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010\u000b\"\u0004\u0008U\u0010\rR\u001c\u0010V\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u000b\"\u0004\u0008X\u0010\rR\u001e\u0010Y\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010^\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u001c\u0010_\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010\u000b\"\u0004\u0008a\u0010\rR\u001c\u0010b\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010\u000b\"\u0004\u0008d\u0010\rR\u001c\u0010e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010\u000b\"\u0004\u0008g\u0010\rR\u001c\u0010h\u001a\u0004\u0018\u00010iX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u001e\u0010n\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010^\u001a\u0004\u0008o\u0010[\"\u0004\u0008p\u0010]R\u001c\u0010q\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u0010\u000b\"\u0004\u0008s\u0010\rR\u001c\u0010t\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010\u000b\"\u0004\u0008v\u0010\rR\u001c\u0010w\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010\u000b\"\u0004\u0008y\u0010\rR\u001a\u0010z\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u00100\"\u0004\u0008|\u00102R\u001c\u0010}\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008~\u0010\u000b\"\u0004\u0008\u007f\u0010\rR&\u0010\u0080\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010\u0018\"\u0005\u0008\u0083\u0001\u0010\u001aRA\u0010\u0084\u0001\u001a$\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u0085\u0001j\u0011\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0086\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008c\u0001\u0010\u000b\"\u0005\u0008\u008d\u0001\u0010\rR\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u0010\u000b\"\u0005\u0008\u0090\u0001\u0010\rR\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0092\u0001\u0010\u000b\"\u0005\u0008\u0093\u0001\u0010\rR\u001f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0095\u0001\u0010\u000b\"\u0005\u0008\u0096\u0001\u0010\rR\u001f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0098\u0001\u0010\u000b\"\u0005\u0008\u0099\u0001\u0010\rR\u001f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009b\u0001\u0010\u000b\"\u0005\u0008\u009c\u0001\u0010\rR\u001f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009e\u0001\u0010\u000b\"\u0005\u0008\u009f\u0001\u0010\r\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "appId",
        "",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "appinfoCategoryType",
        "",
        "getAppinfoCategoryType",
        "()I",
        "setAppinfoCategoryType",
        "(I)V",
        "classification",
        "",
        "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
        "getClassification",
        "()Ljava/util/List;",
        "setClassification",
        "(Ljava/util/List;)V",
        "classificationNames",
        "getClassificationNames",
        "setClassificationNames",
        "compatiblePackageUrl",
        "getCompatiblePackageUrl",
        "setCompatiblePackageUrl",
        "deployVersion",
        "getDeployVersion",
        "setDeployVersion",
        "desc",
        "getDesc",
        "setDesc",
        "developer",
        "getDeveloper",
        "setDeveloper",
        "developerVersion",
        "getDeveloperVersion",
        "setDeveloperVersion",
        "expiresTime",
        "",
        "getExpiresTime",
        "()J",
        "setExpiresTime",
        "(J)V",
        "extend",
        "Lcom/cloud/tmc/integration/model/ExtendModel;",
        "getExtend",
        "()Lcom/cloud/tmc/integration/model/ExtendModel;",
        "setExtend",
        "(Lcom/cloud/tmc/integration/model/ExtendModel;)V",
        "forceUpdate",
        "getForceUpdate",
        "setForceUpdate",
        "isTestVersion",
        "",
        "()Z",
        "setTestVersion",
        "(Z)V",
        "linkAndButtonColor",
        "getLinkAndButtonColor",
        "setLinkAndButtonColor",
        "logo",
        "getLogo",
        "setLogo",
        "lowestOpenedVersion",
        "getLowestOpenedVersion",
        "setLowestOpenedVersion",
        "lowestSupportTemplateVersion",
        "getLowestSupportTemplateVersion",
        "setLowestSupportTemplateVersion",
        "lowestSupportVersion",
        "getLowestSupportVersion",
        "setLowestSupportVersion",
        "mainPackagePages",
        "getMainPackagePages",
        "setMainPackagePages",
        "mainPackageUrl",
        "getMainPackageUrl",
        "setMainPackageUrl",
        "mainUrl",
        "getMainUrl",
        "setMainUrl",
        "miniappSubtype",
        "getMiniappSubtype",
        "()Ljava/lang/Integer;",
        "setMiniappSubtype",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "name",
        "getName",
        "setName",
        "packageSize",
        "getPackageSize",
        "setPackageSize",
        "packageUrl",
        "getPackageUrl",
        "setPackageUrl",
        "permissions",
        "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
        "getPermissions",
        "()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
        "setPermissions",
        "(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V",
        "popupStyle",
        "getPopupStyle",
        "setPopupStyle",
        "privacyPolicyUrl",
        "getPrivacyPolicyUrl",
        "setPrivacyPolicyUrl",
        "processingMethod",
        "getProcessingMethod",
        "setProcessingMethod",
        "registerType",
        "getRegisterType",
        "setRegisterType",
        "releaseTime",
        "getReleaseTime",
        "setReleaseTime",
        "slogan",
        "getSlogan",
        "setSlogan",
        "subPackagePages",
        "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
        "getSubPackagePages",
        "setSubPackagePages",
        "subPackageUrls",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getSubPackageUrls",
        "()Ljava/util/HashMap;",
        "setSubPackageUrls",
        "(Ljava/util/HashMap;)V",
        "templateDeployVersion",
        "getTemplateDeployVersion",
        "setTemplateDeployVersion",
        "templateMiniappId",
        "getTemplateMiniappId",
        "setTemplateMiniappId",
        "templatePackageUrl",
        "getTemplatePackageUrl",
        "setTemplatePackageUrl",
        "userAgreement",
        "getUserAgreement",
        "setUserAgreement",
        "userAgreementUrl",
        "getUserAgreementUrl",
        "setUserAgreementUrl",
        "userAgreementVersion",
        "getUserAgreementVersion",
        "setUserAgreementVersion",
        "vhost",
        "getVhost",
        "setVhost",
        "describeContents",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;


# instance fields
.field private appId:Ljava/lang/String;

.field private appinfoCategoryType:I

.field private classification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classificationNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private compatiblePackageUrl:Ljava/lang/String;

.field private deployVersion:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private developerVersion:Ljava/lang/String;

.field private expiresTime:J

.field private extend:Lcom/cloud/tmc/integration/model/ExtendModel;

.field private forceUpdate:I

.field private isTestVersion:Z

.field private linkAndButtonColor:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private lowestOpenedVersion:Ljava/lang/String;

.field private lowestSupportTemplateVersion:Ljava/lang/String;

.field private lowestSupportVersion:Ljava/lang/String;

.field private mainPackagePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainPackageUrl:Ljava/lang/String;

.field private mainUrl:Ljava/lang/String;

.field private miniappSubtype:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private packageSize:Ljava/lang/String;

.field private packageUrl:Ljava/lang/String;

.field private permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

.field private popupStyle:Ljava/lang/Integer;

.field private privacyPolicyUrl:Ljava/lang/String;

.field private processingMethod:Ljava/lang/String;

.field private registerType:Ljava/lang/String;

.field private releaseTime:J

.field private slogan:Ljava/lang/String;

.field private subPackagePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private subPackageUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templateDeployVersion:Ljava/lang/String;

.field private templateMiniappId:Ljava/lang/String;

.field private templatePackageUrl:Ljava/lang/String;

.field private userAgreement:Ljava/lang/String;

.field private userAgreementUrl:Ljava/lang/String;

.field private userAgreementVersion:Ljava/lang/String;

.field private vhost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->CREATOR:Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/AppInfoModel;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    .line 23
    const-class v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    .line 28
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x0

    .line 33
    :cond_4
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    .line 34
    sget-object v0, Lcom/cloud/tmc/integration/model/SubPackageInfo;->CREATOR:Lcom/cloud/tmc/integration/model/SubPackageInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    .line 36
    sget-object v0, Lcom/cloud/tmc/integration/model/ClassificationInfo;->CREATOR:Lcom/cloud/tmc/integration/model/ClassificationInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppinfoCategoryType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getClassification()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClassificationNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCompatiblePackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeployVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeveloper()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeveloperVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpiresTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getForceUpdate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLinkAndButtonColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestOpenedVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestSupportTemplateVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestSupportVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainPackagePages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainPackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMiniappSubtype()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPopupStyle()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProcessingMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRegisterType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReleaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSlogan()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubPackagePages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubPackageUrls()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateDeployVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateMiniappId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplatePackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserAgreementUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserAgreementVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVhost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isTestVersion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppinfoCategoryType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setClassification(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setClassificationNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setCompatiblePackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeployVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeveloper(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeveloperVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpiresTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setExtend(Lcom/cloud/tmc/integration/model/ExtendModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setForceUpdate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLinkAndButtonColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestOpenedVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestSupportTemplateVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestSupportVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainPackagePages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainPackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMiniappSubtype(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPermissions(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setPopupStyle(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrivacyPolicyUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setProcessingMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRegisterType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setReleaseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSlogan(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubPackagePages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubPackageUrls(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public final setTemplateDeployVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTemplateMiniappId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTemplatePackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTestVersion(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUserAgreement(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserAgreementUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserAgreementVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVhost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 26
    .line 27
    iget-wide v13, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    .line 28
    .line 29
    move-wide v15, v13

    .line 30
    iget-wide v13, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    .line 31
    .line 32
    move-wide/from16 v17, v15

    .line 33
    .line 34
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    .line 35
    .line 36
    move-object/from16 v16, v15

    .line 37
    .line 38
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 39
    .line 40
    move-object/from16 v19, v15

    .line 41
    .line 42
    iget v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    .line 43
    .line 44
    move/from16 v20, v15

    .line 45
    .line 46
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    .line 47
    .line 48
    move-object/from16 v21, v15

    .line 49
    .line 50
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    .line 51
    .line 52
    move-object/from16 v22, v15

    .line 53
    .line 54
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    .line 55
    .line 56
    move-object/from16 v23, v15

    .line 57
    .line 58
    iget v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    .line 59
    .line 60
    move/from16 v24, v15

    .line 61
    .line 62
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 63
    .line 64
    move-object/from16 v25, v15

    .line 65
    .line 66
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    .line 67
    .line 68
    move-object/from16 v26, v15

    .line 69
    .line 70
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    .line 71
    .line 72
    move-object/from16 v27, v15

    .line 73
    .line 74
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 75
    .line 76
    move-object/from16 v28, v15

    .line 77
    .line 78
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    .line 79
    .line 80
    move-object/from16 v29, v15

    .line 81
    .line 82
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    .line 83
    .line 84
    move-object/from16 v30, v15

    .line 85
    .line 86
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    .line 87
    .line 88
    move-object/from16 v31, v15

    .line 89
    .line 90
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    .line 91
    .line 92
    move-object/from16 v32, v15

    .line 93
    .line 94
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    .line 95
    .line 96
    move-object/from16 v33, v15

    .line 97
    .line 98
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    .line 99
    .line 100
    move-object/from16 v34, v15

    .line 101
    .line 102
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    .line 103
    .line 104
    move-object/from16 v35, v15

    .line 105
    .line 106
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 107
    .line 108
    move-object/from16 v36, v15

    .line 109
    .line 110
    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    const-string v15, "AppInfoModel(appId="

    .line 120
    .line 121
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", deployVersion="

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ", desc="

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", slogan="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ", developerVersion="

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, ", logo="

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ", mainUrl="

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ", name="

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", packageUrl="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", vhost="

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v1, ", developer="

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, ", permissions="

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, ", expiresTime="

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    move-wide/from16 v1, v17

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v1, ", releaseTime="

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, ", lowestSupportVersion="

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    move-object/from16 v1, v16

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, ", lowestOpenedVersion="

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-object/from16 v1, v19

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, ", forceUpdate="

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    move/from16 v1, v20

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v1, ", packageSize="

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-object/from16 v1, v21

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v1, ", classificationNames="

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    move-object/from16 v1, v22

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v1, ", registerType="

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    move-object/from16 v1, v23

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v1, ", appinfoCategoryType="

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    move/from16 v1, v24

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v1, ", extend="

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    move-object/from16 v1, v25

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v1, ", mainPackageUrl="

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    move-object/from16 v1, v26

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v1, ", userAgreement="

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-object/from16 v1, v27

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v1, ", privacyPolicyUrl="

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    move-object/from16 v1, v28

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v1, ", linkAndButtonColor="

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    move-object/from16 v1, v29

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v1, ", processingMethod="

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    move-object/from16 v1, v30

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v1, ",popupStyle="

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    move-object/from16 v1, v31

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v1, ",miniappSubtype="

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    move-object/from16 v1, v32

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v1, ",templateMiniappId="

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    move-object/from16 v1, v33

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v1, ",templatePackageUrl="

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    move-object/from16 v1, v34

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v1, ",templateDeployVersion="

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    move-object/from16 v1, v35

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v1, ",lowestSupportTemplateVersion="

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    move-object/from16 v1, v36

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v1, ",compatiblePackageUrl="

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    move-object/from16 v1, v37

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 62
    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    .line 65
    .line 66
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    .line 70
    .line 71
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 102
    .line 103
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    .line 115
    .line 116
    iget-boolean p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    .line 177
    .line 178
    const/4 v0, 0x0

    .line 179
    if-eqz p2, :cond_0

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    goto :goto_0

    .line 186
    :cond_0
    move p2, v0

    .line 187
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    .line 189
    .line 190
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    .line 191
    .line 192
    if-eqz p2, :cond_1

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    .line 200
    .line 201
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method
