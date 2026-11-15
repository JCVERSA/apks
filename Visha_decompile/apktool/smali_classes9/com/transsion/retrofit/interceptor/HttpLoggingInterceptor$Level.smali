.class public final enum Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method private static synthetic $values()[Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;
    .locals 4

    sget-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->BASIC:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    sget-object v3, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    new-instance v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->BASIC:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    new-instance v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    new-instance v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    const-string v1, "BODY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    invoke-static {}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->$values()[Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    move-result-object v0

    sput-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    const-class v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    sget-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    return-object v0
.end method
