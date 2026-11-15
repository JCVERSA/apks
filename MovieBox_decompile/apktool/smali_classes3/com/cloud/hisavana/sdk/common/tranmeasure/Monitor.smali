.class public abstract Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor$a;->a()Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public abstract end()V
.end method

.method public abstract start()V
.end method
