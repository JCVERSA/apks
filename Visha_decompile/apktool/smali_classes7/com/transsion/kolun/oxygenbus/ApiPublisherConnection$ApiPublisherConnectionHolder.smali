.class Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ApiPublisherConnectionHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiPublisherConnectionHolder"
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;-><init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$1;)V

    sput-object v0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ApiPublisherConnectionHolder;->INSTANCE:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;
    .locals 1

    sget-object v0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ApiPublisherConnectionHolder;->INSTANCE:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    return-object v0
.end method
