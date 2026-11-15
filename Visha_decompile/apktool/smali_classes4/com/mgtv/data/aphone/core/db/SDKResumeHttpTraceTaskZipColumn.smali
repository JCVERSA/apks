.class public final enum Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/db/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;",
        ">;",
        "Lcom/mgtv/data/aphone/core/db/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final TABLE:Ljava/lang/String; = "mgtv_data_trace_zip_reporter"

.field public static final VERSION:I = 0x4

.field public static final enum create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum id:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum idx:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum localLog:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum log_path:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum logs:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum netStatus:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum reportUrl:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum sum:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum taskId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum upCount:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

.field public static final enum zip_path:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;


# instance fields
.field final columnDesc:Lcom/mgtv/data/aphone/core/db/c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v1, Lcom/mgtv/data/aphone/core/db/c;

    const-string v2, "INT"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;ZZ)V

    const-string v5, "id"

    invoke-direct {v0, v5, v4, v1}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->id:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v4, Lcom/mgtv/data/aphone/core/db/c;

    const-string v5, "TEXT"

    invoke-direct {v4, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v6, "taskId"

    invoke-direct {v1, v6, v3, v4}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->taskId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v4, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v4, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v6, "logs"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->logs:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v4, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v6, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v6, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v7, "reportUrl"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v6}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->reportUrl:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v6, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v7, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v7, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v8, "netStatus"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9, v7}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v6, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->netStatus:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v7, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v8, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v8, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v9, "localLog"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v10, v8}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v7, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->localLog:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v8, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v9, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v9, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v10, "status"

    const/4 v11, 0x6

    invoke-direct {v8, v10, v11, v9}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v8, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v9, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v10, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v10, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v11, "upCount"

    const/4 v12, 0x7

    invoke-direct {v9, v11, v12, v10}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v9, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->upCount:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v10, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v11, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v11, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v12, "idx"

    const/16 v13, 0x8

    invoke-direct {v10, v12, v13, v11}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v10, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->idx:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v11, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v12, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v12, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v2, "sum"

    const/16 v13, 0x9

    invoke-direct {v11, v2, v13, v12}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v11, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->sum:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v12, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v2, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v2, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v13, "log_path"

    const/16 v14, 0xa

    invoke-direct {v12, v13, v14, v2}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v12, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->log_path:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v13, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v2, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v2, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v14, "zip_path"

    const/16 v15, 0xb

    invoke-direct {v13, v14, v15, v2}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v13, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->zip_path:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v14, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    new-instance v2, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v2, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v5, "create_time"

    const/16 v15, 0xc

    invoke-direct {v14, v5, v15, v2}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v14, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    filled-new-array/range {v0 .. v12}, [Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->$VALUES:[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V
    .locals 0
    .param p3    # Lcom/mgtv/data/aphone/core/db/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/data/aphone/core/db/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->columnDesc:Lcom/mgtv/data/aphone/core/db/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->$VALUES:[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    return-object v0
.end method


# virtual methods
.method public getDesc()Lcom/mgtv/data/aphone/core/db/c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->columnDesc:Lcom/mgtv/data/aphone/core/db/c;

    return-object p0
.end method
