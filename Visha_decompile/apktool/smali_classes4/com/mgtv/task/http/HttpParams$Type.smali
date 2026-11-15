.class public final enum Lcom/mgtv/task/http/HttpParams$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/task/http/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/task/http/HttpParams$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/task/http/HttpParams$Type;

.field public static final enum BODY:Lcom/mgtv/task/http/HttpParams$Type;

.field public static final enum GET:Lcom/mgtv/task/http/HttpParams$Type;

.field public static final enum HEADER:Lcom/mgtv/task/http/HttpParams$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mgtv/task/http/HttpParams$Type;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgtv/task/http/HttpParams$Type;->GET:Lcom/mgtv/task/http/HttpParams$Type;

    new-instance v1, Lcom/mgtv/task/http/HttpParams$Type;

    const-string v2, "HEADER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgtv/task/http/HttpParams$Type;->HEADER:Lcom/mgtv/task/http/HttpParams$Type;

    new-instance v2, Lcom/mgtv/task/http/HttpParams$Type;

    const-string v3, "BODY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgtv/task/http/HttpParams$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    filled-new-array {v0, v1, v2}, [Lcom/mgtv/task/http/HttpParams$Type;

    move-result-object v0

    sput-object v0, Lcom/mgtv/task/http/HttpParams$Type;->$VALUES:[Lcom/mgtv/task/http/HttpParams$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams$Type;
    .locals 1

    const-class v0, Lcom/mgtv/task/http/HttpParams$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/task/http/HttpParams$Type;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/task/http/HttpParams$Type;
    .locals 1

    sget-object v0, Lcom/mgtv/task/http/HttpParams$Type;->$VALUES:[Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v0}, [Lcom/mgtv/task/http/HttpParams$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/task/http/HttpParams$Type;

    return-object v0
.end method
