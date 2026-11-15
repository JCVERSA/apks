.class public final enum Lcom/mgmi/ads/api/e/h$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/ads/api/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgmi/ads/api/e/h$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgmi/ads/api/e/h$b;

.field public static final enum Idle:Lcom/mgmi/ads/api/e/h$b;

.field public static final enum Paused:Lcom/mgmi/ads/api/e/h$b;

.field public static final enum Running:Lcom/mgmi/ads/api/e/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mgmi/ads/api/e/h$b;

    const-string v1, "Running"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/e/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/e/h$b;->Running:Lcom/mgmi/ads/api/e/h$b;

    new-instance v1, Lcom/mgmi/ads/api/e/h$b;

    const-string v2, "Paused"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgmi/ads/api/e/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgmi/ads/api/e/h$b;->Paused:Lcom/mgmi/ads/api/e/h$b;

    new-instance v2, Lcom/mgmi/ads/api/e/h$b;

    const-string v3, "Idle"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgmi/ads/api/e/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgmi/ads/api/e/h$b;->Idle:Lcom/mgmi/ads/api/e/h$b;

    filled-new-array {v0, v1, v2}, [Lcom/mgmi/ads/api/e/h$b;

    move-result-object v0

    sput-object v0, Lcom/mgmi/ads/api/e/h$b;->$VALUES:[Lcom/mgmi/ads/api/e/h$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgmi/ads/api/e/h$b;
    .locals 1

    const-class v0, Lcom/mgmi/ads/api/e/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ads/api/e/h$b;

    return-object p0
.end method

.method public static values()[Lcom/mgmi/ads/api/e/h$b;
    .locals 1

    sget-object v0, Lcom/mgmi/ads/api/e/h$b;->$VALUES:[Lcom/mgmi/ads/api/e/h$b;

    invoke-virtual {v0}, [Lcom/mgmi/ads/api/e/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgmi/ads/api/e/h$b;

    return-object v0
.end method
