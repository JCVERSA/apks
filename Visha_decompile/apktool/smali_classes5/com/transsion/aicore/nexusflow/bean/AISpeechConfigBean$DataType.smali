.class public final enum Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

.field public static final enum AUDIO:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

.field public static final enum TEXT:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;
    .locals 2

    sget-object v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->TEXT:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    sget-object v1, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->AUDIO:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    filled-new-array {v0, v1}, [Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->TEXT:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    new-instance v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    const-string v1, "AUDIO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->AUDIO:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    invoke-static {}, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->$values()[Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->$VALUES:[Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;
    .locals 1

    const-class v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;
    .locals 1

    sget-object v0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->$VALUES:[Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    invoke-virtual {v0}, [Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    return-object v0
.end method
