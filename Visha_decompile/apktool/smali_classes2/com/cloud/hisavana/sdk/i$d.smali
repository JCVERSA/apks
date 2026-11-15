.class public abstract Lcom/cloud/hisavana/sdk/i$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/i;-><init>(Lcom/cloud/hisavana/sdk/i$a;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/i$d;->a:Lcom/cloud/hisavana/sdk/i;

    return-void
.end method

.method public static synthetic a()Lcom/cloud/hisavana/sdk/i;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/i$d;->a:Lcom/cloud/hisavana/sdk/i;

    return-object v0
.end method
