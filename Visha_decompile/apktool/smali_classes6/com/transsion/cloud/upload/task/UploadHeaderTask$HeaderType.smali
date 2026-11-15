.class public final enum Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/upload/task/UploadHeaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

.field public static final enum FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

.field public static final enum NOT_FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;
    .locals 2

    sget-object v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    sget-object v1, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->NOT_FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    filled-new-array {v0, v1}, [Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    const-string v1, "FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    new-instance v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    const-string v1, "NOT_FAILED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->NOT_FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    invoke-static {}, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->$values()[Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->$VALUES:[Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;
    .locals 1

    const-class v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;
    .locals 1

    sget-object v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->$VALUES:[Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    invoke-virtual {v0}, [Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    return-object v0
.end method
