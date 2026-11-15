.class final enum Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

.field public static final enum END_OF_BODY:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

.field public static final enum SUCCESS:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->SUCCESS:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 10
    .line 11
    new-instance v1, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 12
    .line 13
    const-string v3, "END_OF_BODY"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->$VALUES:[Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;
    .locals 1

    .line 1
    const-class v0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->$VALUES:[Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 8
    .line 9
    return-object v0
.end method
