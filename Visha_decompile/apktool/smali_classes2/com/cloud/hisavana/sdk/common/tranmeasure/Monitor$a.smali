.class public abstract Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;

    return-void
.end method

.method public static synthetic a()Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;

    return-object v0
.end method
