.class public final enum Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/db/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;",
        ">;",
        "Lcom/mgtv/data/aphone/core/db/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final TABLE:Ljava/lang/String; = "mgtv_upload_failure_data_reporter"

.field public static final VERSION:I = 0x1

.field public static final enum bid:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final enum create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final enum eventId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final enum id:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final enum method:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final enum params:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final enum status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

.field public static final enum url:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;


# instance fields
.field final columnDesc:Lcom/mgtv/data/aphone/core/db/c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v1, Lcom/mgtv/data/aphone/core/db/c;

    const-string v2, "INT"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;ZZ)V

    const-string v5, "id"

    invoke-direct {v0, v5, v4, v1}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->id:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v4, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v4, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v5, "eventId"

    invoke-direct {v1, v5, v3, v4}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->eventId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v4, Lcom/mgtv/data/aphone/core/db/c;

    const-string v5, "TEXT"

    invoke-direct {v4, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v6, "bid"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->bid:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v4, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v6, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v6, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v7, "url"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v6}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->url:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v6, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v7, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v7, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v8, "params"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9, v7}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v6, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->params:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v7, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v8, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v8, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v9, "method"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v10, v8}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v7, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->method:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v8, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v9, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v9, v2}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v10, 0x6

    invoke-direct {v8, v2, v10, v9}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v8, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v9, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    new-instance v2, Lcom/mgtv/data/aphone/core/db/c;

    invoke-direct {v2, v5}, Lcom/mgtv/data/aphone/core/db/c;-><init>(Ljava/lang/String;)V

    const-string v5, "create_time"

    const/4 v10, 0x7

    invoke-direct {v9, v5, v10, v2}, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;-><init>(Ljava/lang/String;ILcom/mgtv/data/aphone/core/db/c;)V

    sput-object v9, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    filled-new-array/range {v0 .. v7}, [Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->$VALUES:[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->columnDesc:Lcom/mgtv/data/aphone/core/db/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->$VALUES:[Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;

    return-object v0
.end method


# virtual methods
.method public getDesc()Lcom/mgtv/data/aphone/core/db/c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpErrorTaskColumn;->columnDesc:Lcom/mgtv/data/aphone/core/db/c;

    return-object p0
.end method
