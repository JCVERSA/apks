.class public final Lcom/cloud/tmc/integration/model/AppModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/AppModel$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u00089\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00c7\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00c7\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u00c3\u0001\u001a\u00020\u000fH\u0016J\u001b\u0010\u00c4\u0001\u001a\u00030\u00c5\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0007\u0010\u00c6\u0001\u001a\u00020\u000fH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000b\"\u0004\u0008 \u0010\rR\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000b\"\u0004\u0008#\u0010\rR\u001c\u0010$\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000b\"\u0004\u0008&\u0010\rR\u001c\u0010\'\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000b\"\u0004\u0008)\u0010\rR\u001a\u0010*\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0011\"\u0004\u0008,\u0010\u0013R\u001c\u0010-\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u000b\"\u0004\u0008/\u0010\rR\u001c\u00100\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u000b\"\u0004\u00082\u0010\rR\u001a\u00103\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001a\u0010E\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0011\"\u0004\u0008G\u0010\u0013R\u001a\u0010H\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u0011\"\u0004\u0008J\u0010\u0013R\u001a\u0010K\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010M\"\u0004\u0008,\u0010NR\u001a\u0010O\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010M\"\u0004\u0008G\u0010NR\u001a\u0010P\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010M\"\u0004\u0008Q\u0010NR\u001c\u0010R\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010\u000b\"\u0004\u0008T\u0010\rR\u001c\u0010U\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010\u000b\"\u0004\u0008W\u0010\rR\u001c\u0010X\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u000b\"\u0004\u0008Z\u0010\rR\u001c\u0010[\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010\u000b\"\u0004\u0008]\u0010\rR\u001c\u0010^\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010\u000b\"\u0004\u0008`\u0010\rR\"\u0010a\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u0018\"\u0004\u0008c\u0010\u001aR\u001c\u0010d\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010\u000b\"\u0004\u0008f\u0010\rR\u001c\u0010g\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010\u000b\"\u0004\u0008i\u0010\rR\u001c\u0010j\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010\u000b\"\u0004\u0008l\u0010\rR\u001c\u0010m\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010\u000b\"\u0004\u0008o\u0010\rR\u001c\u0010p\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u0010\u000b\"\u0004\u0008r\u0010\rR\u001e\u0010s\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010x\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u001c\u0010y\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010\u000b\"\u0004\u0008{\u0010\rR\u001c\u0010|\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008}\u0010\u000b\"\u0004\u0008~\u0010\rR\u001e\u0010\u007f\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010\u000b\"\u0005\u0008\u0081\u0001\u0010\rR\u001f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010\u000b\"\u0005\u0008\u0084\u0001\u0010\rR\"\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R!\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010x\u001a\u0005\u0008\u008c\u0001\u0010u\"\u0005\u0008\u008d\u0001\u0010wR\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u0010\u000b\"\u0005\u0008\u0090\u0001\u0010\rR\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0092\u0001\u0010\u000b\"\u0005\u0008\u0093\u0001\u0010\rR\u001f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0095\u0001\u0010\u000b\"\u0005\u0008\u0096\u0001\u0010\rR\u001d\u0010\u0097\u0001\u001a\u000204X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0098\u0001\u00106\"\u0005\u0008\u0099\u0001\u00108R\u001f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009b\u0001\u0010\u000b\"\u0005\u0008\u009c\u0001\u0010\rR&\u0010\u009d\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u009e\u0001\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009f\u0001\u0010\u0018\"\u0005\u0008\u00a0\u0001\u0010\u001aRA\u0010\u00a1\u0001\u001a$\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00a2\u0001j\u0011\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u0001`\u00a3\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001f\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a9\u0001\u0010\u000b\"\u0005\u0008\u00aa\u0001\u0010\rR\u001f\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00ac\u0001\u0010\u000b\"\u0005\u0008\u00ad\u0001\u0010\rR\u001f\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00af\u0001\u0010\u000b\"\u0005\u0008\u00b0\u0001\u0010\rR\u001f\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b2\u0001\u0010\u000b\"\u0005\u0008\u00b3\u0001\u0010\rR\u001f\u0010\u00b4\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b5\u0001\u0010\u000b\"\u0005\u0008\u00b6\u0001\u0010\rR\u001f\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b8\u0001\u0010\u000b\"\u0005\u0008\u00b9\u0001\u0010\rR\u001f\u0010\u00ba\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00bb\u0001\u0010\u000b\"\u0005\u0008\u00bc\u0001\u0010\rR\u001f\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00be\u0001\u0010\u000b\"\u0005\u0008\u00bf\u0001\u0010\rR\u001f\u0010\u00c0\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00c1\u0001\u0010\u000b\"\u0005\u0008\u00c2\u0001\u0010\r\u00a8\u0006\u00c8\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/AppModel;",
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
        "currentUseCommonResVersion",
        "getCurrentUseCommonResVersion",
        "setCurrentUseCommonResVersion",
        "deployVersion",
        "getDeployVersion",
        "setDeployVersion",
        "desc",
        "getDesc",
        "setDesc",
        "devMode",
        "getDevMode",
        "setDevMode",
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
        "extendInfos",
        "Lcom/google/gson/JsonObject;",
        "getExtendInfos",
        "()Lcom/google/gson/JsonObject;",
        "setExtendInfos",
        "(Lcom/google/gson/JsonObject;)V",
        "forceUpdate",
        "getForceUpdate",
        "setForceUpdate",
        "fromCacheType",
        "getFromCacheType",
        "setFromCacheType",
        "isDevMode",
        "",
        "()Z",
        "(Z)V",
        "isForceUpdate",
        "isTestVersion",
        "setTestVersion",
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
        "mainPackageUnZipFilePath",
        "getMainPackageUnZipFilePath",
        "setMainPackageUnZipFilePath",
        "mainPackageUrl",
        "getMainPackageUrl",
        "setMainPackageUrl",
        "mainPackageUrlEncryption",
        "getMainPackageUrlEncryption",
        "setMainPackageUrlEncryption",
        "mainPackageZipPath",
        "getMainPackageZipPath",
        "setMainPackageZipPath",
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
        "packageUrl_MD5",
        "getPackageUrl_MD5",
        "setPackageUrl_MD5",
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
        "unzipFilePath",
        "getUnzipFilePath",
        "setUnzipFilePath",
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
        "zipPath",
        "getZipPath",
        "setZipPath",
        "describeContents",
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
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/AppModel$CREATOR;


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

.field private currentUseCommonResVersion:Ljava/lang/String;

.field private deployVersion:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private devMode:I

.field private developer:Ljava/lang/String;

.field private developerVersion:Ljava/lang/String;

.field private expiresTime:J

.field private extend:Lcom/cloud/tmc/integration/model/ExtendModel;

.field private extendInfos:Lcom/google/gson/JsonObject;

.field private forceUpdate:I

.field private fromCacheType:I

.field private isDevMode:Z

.field private isForceUpdate:Z

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

.field private mainPackageUnZipFilePath:Ljava/lang/String;

.field private mainPackageUrl:Ljava/lang/String;

.field private mainPackageUrlEncryption:Ljava/lang/String;

.field private mainPackageZipPath:Ljava/lang/String;

.field private mainUrl:Ljava/lang/String;

.field private miniappSubtype:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private packageSize:Ljava/lang/String;

.field private packageUrl:Ljava/lang/String;

.field private packageUrl_MD5:Ljava/lang/String;

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

.field private unzipFilePath:Ljava/lang/String;

.field private userAgreement:Ljava/lang/String;

.field private userAgreementUrl:Ljava/lang/String;

.field private userAgreementVersion:Ljava/lang/String;

.field private vhost:Ljava/lang/String;

.field private zipPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/model/AppModel$CREATOR;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/model/AppModel;->CREATOR:Lcom/cloud/tmc/integration/model/AppModel$CREATOR;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->devMode:I

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->popupStyle:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/AppModel;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->logo:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->vhost:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->deployVersion:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developerVersion:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl_MD5:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->desc:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developer:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->zipPath:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->unzipFilePath:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->registerType:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->slogan:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->expiresTime:J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->releaseTime:J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->fromCacheType:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isForceUpdate:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportVersion:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageSize:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->classificationNames:Ljava/util/List;

    .line 27
    const-class v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isDevMode:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->devMode:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appinfoCategoryType:I

    .line 31
    const-class v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->forceUpdate:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/model/AppModel;->isTestVersion:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrlEncryption:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageZipPath:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUnZipFilePath:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/cloud/tmc/integration/model/SubPackageInfo;->CREATOR:Lcom/cloud/tmc/integration/model/SubPackageInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackagePages:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackagePages:Ljava/util/List;

    .line 41
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 44
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v1, 0x0

    .line 46
    :cond_6
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackageUrls:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/cloud/tmc/integration/model/ClassificationInfo;->CREATOR:Lcom/cloud/tmc/integration/model/ClassificationInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->classification:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreement:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementVersion:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->linkAndButtonColor:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->processingMethod:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->popupStyle:Ljava/lang/Integer;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->miniappSubtype:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateMiniappId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templatePackageUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateDeployVersion:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->currentUseCommonResVersion:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppinfoCategoryType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appinfoCategoryType:I

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->classification:Ljava/util/List;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->classificationNames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCompatiblePackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentUseCommonResVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->currentUseCommonResVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeployVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->deployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDevMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->devMode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDeveloper()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeveloperVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developerVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpiresTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->expiresTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtendInfos()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->extendInfos:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getForceUpdate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->forceUpdate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFromCacheType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->fromCacheType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLinkAndButtonColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->linkAndButtonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->logo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestOpenedVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestSupportTemplateVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestSupportVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportVersion:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackagePages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainPackageUnZipFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUnZipFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainPackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainPackageUrlEncryption()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrlEncryption:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainPackageZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMiniappSubtype()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->miniappSubtype:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageUrl_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPopupStyle()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->popupStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProcessingMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->processingMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRegisterType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->registerType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReleaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->releaseTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSlogan()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->slogan:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackagePages:Ljava/util/List;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackageUrls:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateDeployVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateDeployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateMiniappId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateMiniappId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplatePackageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templatePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnzipFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->unzipFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreement:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserAgreementUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserAgreementVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVhost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->vhost:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->zipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isDevMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isDevMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isForceUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isForceUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isTestVersion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isTestVersion:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppinfoCategoryType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->appinfoCategoryType:I

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->classification:Ljava/util/List;

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->classificationNames:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setCompatiblePackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentUseCommonResVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->currentUseCommonResVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeployVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->deployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDevMode(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->devMode:I

    return-void
.end method

.method public final setDevMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->isDevMode:Z

    return-void
.end method

.method public final setDeveloper(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->developer:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeveloperVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->developerVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpiresTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->expiresTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setExtend(Lcom/cloud/tmc/integration/model/ExtendModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtendInfos(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->extendInfos:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-void
.end method

.method public final setForceUpdate(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->forceUpdate:I

    return-void
.end method

.method public final setForceUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->isForceUpdate:Z

    return-void
.end method

.method public final setFromCacheType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->fromCacheType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLinkAndButtonColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->linkAndButtonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->logo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestOpenedVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestSupportTemplateVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestSupportVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportVersion:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackagePages:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainPackageUnZipFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUnZipFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainPackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainPackageUrlEncryption(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrlEncryption:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainPackageZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMiniappSubtype(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->miniappSubtype:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageUrl_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPermissions(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setPopupStyle(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->popupStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrivacyPolicyUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setProcessingMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->processingMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRegisterType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->registerType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setReleaseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->releaseTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSlogan(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->slogan:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackagePages:Ljava/util/List;

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackageUrls:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public final setTemplateDeployVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateDeployVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTemplateMiniappId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateMiniappId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTemplatePackageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->templatePackageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTestVersion(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->isTestVersion:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUnzipFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->unzipFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserAgreement(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreement:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserAgreementUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserAgreementVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVhost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->vhost:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->zipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->logo:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->vhost:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->deployVersion:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developerVersion:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl_MD5:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->desc:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developer:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->zipPath:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->unzipFilePath:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->registerType:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->slogan:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->expiresTime:J

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    .line 85
    .line 86
    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->releaseTime:J

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->fromCacheType:I

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isForceUpdate:Z

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportVersion:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageSize:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->classificationNames:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 117
    .line 118
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    .line 120
    .line 121
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isDevMode:Z

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    .line 125
    .line 126
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->devMode:I

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    .line 130
    .line 131
    iget v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appinfoCategoryType:I

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 137
    .line 138
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestOpenedVersion:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->forceUpdate:I

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    .line 150
    .line 151
    iget-boolean p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->isTestVersion:Z

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrl:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrlEncryption:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageZipPath:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUnZipFilePath:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackagePages:Ljava/util/List;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackagePages:Ljava/util/List;

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackageUrls:Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->classification:Ljava/util/List;

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreement:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementVersion:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementUrl:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->privacyPolicyUrl:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->linkAndButtonColor:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->processingMethod:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->popupStyle:Ljava/lang/Integer;

    .line 227
    .line 228
    const/4 v0, 0x0

    .line 229
    if-eqz p2, :cond_0

    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    goto :goto_0

    .line 236
    :cond_0
    move p2, v0

    .line 237
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    .line 239
    .line 240
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->miniappSubtype:Ljava/lang/Integer;

    .line 241
    .line 242
    if-eqz p2, :cond_1

    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateMiniappId:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->templatePackageUrl:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateDeployVersion:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->compatiblePackageUrl:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppModel;->currentUseCommonResVersion:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-void
.end method
