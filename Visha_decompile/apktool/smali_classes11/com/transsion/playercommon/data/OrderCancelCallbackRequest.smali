.class public Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
.field private orderStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_status"
    .end annotation
.end field

.field private vishaOrderNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visha_order_no"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;->vishaOrderNo:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;->orderStatus:I

    return-void
.end method
