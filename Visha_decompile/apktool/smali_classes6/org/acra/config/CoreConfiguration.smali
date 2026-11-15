.class public final Lorg/acra/config/CoreConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/acra/config/Configuration;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u00082\u0018\u00002\u00020\u00012\u00020\u0002B\u00ed\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u0012\u0010\u0008\u0002\u0010\u001d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001c0\u0016\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0010\u0008\u0002\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020 0\u0016\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010%\u001a\u00020$\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010(\u001a\u00020\'\u0012\u000e\u0008\u0002\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008,\u0010-R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010.\u001a\u0004\u0008/\u00100R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u00101\u001a\u0004\u00082\u0010-R\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u00103\u001a\u0004\u00084\u00105R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u00106\u001a\u0004\u00087\u00108R\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u00103\u001a\u0004\u00089\u00105R\u001d\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u00103\u001a\u0004\u0008:\u00105R\u0017\u0010\u000e\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u00101\u001a\u0004\u0008;\u0010-R\u0017\u0010\u000f\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u00101\u001a\u0004\u0008<\u0010-R\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u00103\u001a\u0004\u0008=\u00105R\u0017\u0010\u0011\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u00101\u001a\u0004\u0008>\u0010-R\u0017\u0010\u0012\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u00101\u001a\u0004\u0008?\u0010-R\u0017\u0010\u0013\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u00101\u001a\u0004\u0008@\u0010-R\u001d\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u00103\u001a\u0004\u0008A\u00105R\u001d\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u00103\u001a\u0004\u0008B\u00105R\u001d\u0010\u0017\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010C\u001a\u0004\u0008D\u0010ER\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010.\u001a\u0004\u0008F\u00100R\u0017\u0010\u0019\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u00106\u001a\u0004\u0008G\u00108R\u0017\u0010\u001b\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010H\u001a\u0004\u0008I\u0010JR\u001f\u0010\u001d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001c0\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010C\u001a\u0004\u0008K\u0010ER\u0017\u0010\u001e\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u00101\u001a\u0004\u0008L\u0010-R\u001d\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u00103\u001a\u0004\u0008M\u00105R\u001f\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020 0\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010C\u001a\u0004\u0008N\u0010ER\u0019\u0010\"\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010.\u001a\u0004\u0008O\u00100R\u0019\u0010#\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010.\u001a\u0004\u0008P\u00100R\u0017\u0010%\u001a\u00020$8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010Q\u001a\u0004\u0008R\u0010SR\u0017\u0010&\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u00101\u001a\u0004\u0008T\u0010-R\u0017\u0010(\u001a\u00020\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010U\u001a\u0004\u0008V\u0010WR\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u00103\u001a\u0004\u0008X\u00105\u00a8\u0006Y"
    }
    d2 = {
        "Lorg/acra/config/CoreConfiguration;",
        "Ljava/io/Serializable;",
        "Lorg/acra/config/Configuration;",
        "",
        "sharedPreferencesName",
        "",
        "includeDropBoxSystemTags",
        "",
        "additionalDropBoxTags",
        "",
        "dropboxCollectionMinutes",
        "logcatArguments",
        "Lorg/acra/ReportField;",
        "reportContent",
        "deleteUnapprovedReportsOnApplicationStart",
        "alsoReportToAndroidFramework",
        "additionalSharedPreferences",
        "logcatFilterByPid",
        "logcatReadNonBlocking",
        "sendReportsInDevMode",
        "excludeMatchingSharedPreferencesKeys",
        "excludeMatchingSettingsKeys",
        "Ljava/lang/Class;",
        "buildConfigClass",
        "applicationLogFile",
        "applicationLogFileLines",
        "Lorg/acra/file/Directory;",
        "applicationLogFileDir",
        "Luu8;",
        "retryPolicyClass",
        "stopServicesOnCrash",
        "attachmentUris",
        "Lcl;",
        "attachmentUriProvider",
        "reportSendSuccessToast",
        "reportSendFailureToast",
        "Lorg/acra/data/StringFormat;",
        "reportFormat",
        "parallel",
        "Lorg/acra/plugins/PluginLoader;",
        "pluginLoader",
        "pluginConfigurations",
        "<init>",
        "(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V",
        "enabled",
        "()Z",
        "Ljava/lang/String;",
        "getSharedPreferencesName",
        "()Ljava/lang/String;",
        "Z",
        "getIncludeDropBoxSystemTags",
        "Ljava/util/List;",
        "getAdditionalDropBoxTags",
        "()Ljava/util/List;",
        "I",
        "getDropboxCollectionMinutes",
        "()I",
        "getLogcatArguments",
        "getReportContent",
        "getDeleteUnapprovedReportsOnApplicationStart",
        "getAlsoReportToAndroidFramework",
        "getAdditionalSharedPreferences",
        "getLogcatFilterByPid",
        "getLogcatReadNonBlocking",
        "getSendReportsInDevMode",
        "getExcludeMatchingSharedPreferencesKeys",
        "getExcludeMatchingSettingsKeys",
        "Ljava/lang/Class;",
        "getBuildConfigClass",
        "()Ljava/lang/Class;",
        "getApplicationLogFile",
        "getApplicationLogFileLines",
        "Lorg/acra/file/Directory;",
        "getApplicationLogFileDir",
        "()Lorg/acra/file/Directory;",
        "getRetryPolicyClass",
        "getStopServicesOnCrash",
        "getAttachmentUris",
        "getAttachmentUriProvider",
        "getReportSendSuccessToast",
        "getReportSendFailureToast",
        "Lorg/acra/data/StringFormat;",
        "getReportFormat",
        "()Lorg/acra/data/StringFormat;",
        "getParallel",
        "Lorg/acra/plugins/PluginLoader;",
        "getPluginLoader",
        "()Lorg/acra/plugins/PluginLoader;",
        "getPluginConfigurations",
        "acra-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final additionalDropBoxTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final additionalSharedPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final alsoReportToAndroidFramework:Z

.field private final applicationLogFile:Ljava/lang/String;

.field private final applicationLogFileDir:Lorg/acra/file/Directory;

.field private final applicationLogFileLines:I

.field private final attachmentUriProvider:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcl;",
            ">;"
        }
    .end annotation
.end field

.field private final attachmentUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final buildConfigClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final deleteUnapprovedReportsOnApplicationStart:Z

.field private final dropboxCollectionMinutes:I

.field private final excludeMatchingSettingsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final excludeMatchingSharedPreferencesKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final includeDropBoxSystemTags:Z

.field private final logcatArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logcatFilterByPid:Z

.field private final logcatReadNonBlocking:Z

.field private final parallel:Z

.field private final pluginConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/acra/config/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLoader:Lorg/acra/plugins/PluginLoader;

.field private final reportContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field

.field private final reportFormat:Lorg/acra/data/StringFormat;

.field private final reportSendFailureToast:Ljava/lang/String;

.field private final reportSendSuccessToast:Ljava/lang/String;

.field private final retryPolicyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Luu8;",
            ">;"
        }
    .end annotation
.end field

.field private final sendReportsInDevMode:Z

.field private final sharedPreferencesName:Ljava/lang/String;

.field private final stopServicesOnCrash:Z


# direct methods
.method public constructor <init>()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    const v29, 0xfffffff

    const/16 v30, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v30}, Lorg/acra/config/CoreConfiguration;-><init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/acra/ReportField;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Lorg/acra/file/Directory;",
            "Ljava/lang/Class<",
            "+",
            "Luu8;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/acra/data/StringFormat;",
            "Z",
            "Lorg/acra/plugins/PluginLoader;",
            "Ljava/util/List<",
            "+",
            "Lorg/acra/config/Configuration;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p18

    move-object/from16 v8, p19

    move-object/from16 v9, p21

    move-object/from16 v10, p22

    move-object/from16 v11, p25

    move-object/from16 v12, p27

    move-object/from16 v13, p28

    const-string v14, "additionalDropBoxTags"

    invoke-static {v1, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "logcatArguments"

    invoke-static {v2, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reportContent"

    invoke-static {v3, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "additionalSharedPreferences"

    invoke-static {v4, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "excludeMatchingSharedPreferencesKeys"

    invoke-static {v5, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "excludeMatchingSettingsKeys"

    invoke-static {v6, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "applicationLogFileDir"

    invoke-static {v7, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "retryPolicyClass"

    invoke-static {v8, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "attachmentUris"

    invoke-static {v9, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "attachmentUriProvider"

    invoke-static {v10, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reportFormat"

    invoke-static {v11, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "pluginLoader"

    invoke-static {v12, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "pluginConfigurations"

    invoke-static {v13, v14}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v14, p1

    .line 3
    iput-object v14, v0, Lorg/acra/config/CoreConfiguration;->sharedPreferencesName:Ljava/lang/String;

    move/from16 v14, p2

    .line 4
    iput-boolean v14, v0, Lorg/acra/config/CoreConfiguration;->includeDropBoxSystemTags:Z

    .line 5
    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->additionalDropBoxTags:Ljava/util/List;

    move/from16 v1, p4

    .line 6
    iput v1, v0, Lorg/acra/config/CoreConfiguration;->dropboxCollectionMinutes:I

    .line 7
    iput-object v2, v0, Lorg/acra/config/CoreConfiguration;->logcatArguments:Ljava/util/List;

    .line 8
    iput-object v3, v0, Lorg/acra/config/CoreConfiguration;->reportContent:Ljava/util/List;

    move/from16 v1, p7

    .line 9
    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    move/from16 v1, p8

    .line 10
    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->alsoReportToAndroidFramework:Z

    .line 11
    iput-object v4, v0, Lorg/acra/config/CoreConfiguration;->additionalSharedPreferences:Ljava/util/List;

    move/from16 v1, p10

    .line 12
    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->logcatFilterByPid:Z

    move/from16 v1, p11

    .line 13
    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->logcatReadNonBlocking:Z

    move/from16 v1, p12

    .line 14
    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->sendReportsInDevMode:Z

    .line 15
    iput-object v5, v0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSharedPreferencesKeys:Ljava/util/List;

    .line 16
    iput-object v6, v0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSettingsKeys:Ljava/util/List;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->buildConfigClass:Ljava/lang/Class;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->applicationLogFile:Ljava/lang/String;

    move/from16 v1, p17

    .line 19
    iput v1, v0, Lorg/acra/config/CoreConfiguration;->applicationLogFileLines:I

    .line 20
    iput-object v7, v0, Lorg/acra/config/CoreConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    .line 21
    iput-object v8, v0, Lorg/acra/config/CoreConfiguration;->retryPolicyClass:Ljava/lang/Class;

    move/from16 v1, p20

    .line 22
    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->stopServicesOnCrash:Z

    .line 23
    iput-object v9, v0, Lorg/acra/config/CoreConfiguration;->attachmentUris:Ljava/util/List;

    .line 24
    iput-object v10, v0, Lorg/acra/config/CoreConfiguration;->attachmentUriProvider:Ljava/lang/Class;

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->reportSendSuccessToast:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->reportSendFailureToast:Ljava/lang/String;

    .line 27
    iput-object v11, v0, Lorg/acra/config/CoreConfiguration;->reportFormat:Lorg/acra/data/StringFormat;

    move/from16 v1, p26

    .line 28
    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->parallel:Z

    .line 29
    iput-object v12, v0, Lorg/acra/config/CoreConfiguration;->pluginLoader:Lorg/acra/plugins/PluginLoader;

    .line 30
    iput-object v13, v0, Lorg/acra/config/CoreConfiguration;->pluginConfigurations:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 29

    move/from16 v0, p29

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 31
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x5

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    .line 32
    const-string v7, "-v"

    const-string v8, "time"

    const-string v9, "-t"

    const-string v10, "100"

    filled-new-array {v9, v10, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    .line 33
    sget-object v8, Ld;->c:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    .line 34
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v12

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_9

    :cond_9
    move/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    goto :goto_b

    :cond_b
    move/from16 v15, p12

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    .line 35
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_d

    .line 36
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    goto :goto_d

    :cond_d
    move-object/from16 v4, p14

    :goto_d
    and-int/lit16 v10, v0, 0x4000

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v10, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x64

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    .line 37
    sget-object v18, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    .line 38
    const-class v19, Lz32;

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    .line 39
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v21

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    .line 40
    const-class v22, Lyz1;

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    .line 41
    sget-object v25, Lorg/acra/data/StringFormat;->JSON:Lorg/acra/data/StringFormat;

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x1

    goto :goto_19

    :cond_19
    move/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    .line 42
    new-instance v27, Lorg/acra/plugins/ServicePluginLoader;

    invoke-direct/range {v27 .. v27}, Lorg/acra/plugins/ServicePluginLoader;-><init>()V

    goto :goto_1a

    :cond_1a
    move-object/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v0, v0, v28

    if-eqz v0, :cond_1b

    .line 43
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    goto :goto_1b

    :cond_1b
    move-object/from16 v0, p28

    :goto_1b
    move-object/from16 p1, v1

    move/from16 p2, v3

    move-object/from16 p3, v5

    move/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v11

    move-object/from16 p9, v12

    move/from16 p10, v13

    move/from16 p11, v14

    move/from16 p12, v15

    move-object/from16 p13, v2

    move-object/from16 p14, v4

    move-object/from16 p15, v10

    move-object/from16 p16, v16

    move/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move/from16 p26, v26

    move-object/from16 p27, v27

    move-object/from16 p28, v0

    .line 44
    invoke-direct/range {p0 .. p28}, Lorg/acra/config/CoreConfiguration;-><init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getAdditionalDropBoxTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->additionalDropBoxTags:Ljava/util/List;

    return-object p0
.end method

.method public final getAdditionalSharedPreferences()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->additionalSharedPreferences:Ljava/util/List;

    return-object p0
.end method

.method public final getAlsoReportToAndroidFramework()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->alsoReportToAndroidFramework:Z

    return p0
.end method

.method public final getApplicationLogFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFile:Ljava/lang/String;

    return-object p0
.end method

.method public final getApplicationLogFileDir()Lorg/acra/file/Directory;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    return-object p0
.end method

.method public final getApplicationLogFileLines()I
    .locals 0

    iget p0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileLines:I

    return p0
.end method

.method public final getAttachmentUriProvider()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->attachmentUriProvider:Ljava/lang/Class;

    return-object p0
.end method

.method public final getAttachmentUris()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->attachmentUris:Ljava/util/List;

    return-object p0
.end method

.method public final getBuildConfigClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->buildConfigClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final getDeleteUnapprovedReportsOnApplicationStart()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    return p0
.end method

.method public final getDropboxCollectionMinutes()I
    .locals 0

    iget p0, p0, Lorg/acra/config/CoreConfiguration;->dropboxCollectionMinutes:I

    return p0
.end method

.method public final getExcludeMatchingSettingsKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSettingsKeys:Ljava/util/List;

    return-object p0
.end method

.method public final getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSharedPreferencesKeys:Ljava/util/List;

    return-object p0
.end method

.method public final getIncludeDropBoxSystemTags()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->includeDropBoxSystemTags:Z

    return p0
.end method

.method public final getLogcatArguments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->logcatArguments:Ljava/util/List;

    return-object p0
.end method

.method public final getLogcatFilterByPid()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->logcatFilterByPid:Z

    return p0
.end method

.method public final getLogcatReadNonBlocking()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->logcatReadNonBlocking:Z

    return p0
.end method

.method public final getParallel()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->parallel:Z

    return p0
.end method

.method public final getPluginConfigurations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/acra/config/Configuration;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->pluginConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public final getPluginLoader()Lorg/acra/plugins/PluginLoader;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->pluginLoader:Lorg/acra/plugins/PluginLoader;

    return-object p0
.end method

.method public final getReportContent()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->reportContent:Ljava/util/List;

    return-object p0
.end method

.method public final getReportFormat()Lorg/acra/data/StringFormat;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->reportFormat:Lorg/acra/data/StringFormat;

    return-object p0
.end method

.method public final getReportSendFailureToast()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->reportSendFailureToast:Ljava/lang/String;

    return-object p0
.end method

.method public final getReportSendSuccessToast()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->reportSendSuccessToast:Ljava/lang/String;

    return-object p0
.end method

.method public final getRetryPolicyClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Luu8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->retryPolicyClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final getSendReportsInDevMode()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->sendReportsInDevMode:Z

    return p0
.end method

.method public final getSharedPreferencesName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->sharedPreferencesName:Ljava/lang/String;

    return-object p0
.end method

.method public final getStopServicesOnCrash()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->stopServicesOnCrash:Z

    return p0
.end method
