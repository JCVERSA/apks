.class public Lcom/cloud/tmc/integration/structure/Page$TaskContext;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/structure/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskContext"
.end annotation


# instance fields
.field public needToExitNum:I

.field public routeType:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method public constructor <init>(ILcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "navigateBack"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->source:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->routeType:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->needToExitNum:I

    .line 11
    .line 12
    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    .line 13
    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->source:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iput-object p4, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->routeType:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    return-void
.end method
