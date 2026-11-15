.class abstract Lcom/cloud/hisavana/sdk/O$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/cloud/hisavana/sdk/O;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/O;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/O;-><init>(Lcom/cloud/hisavana/sdk/O$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/O$c;->a:Lcom/cloud/hisavana/sdk/O;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic a()Lcom/cloud/hisavana/sdk/O;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/O$c;->a:Lcom/cloud/hisavana/sdk/O;

    .line 2
    .line 3
    return-object v0
.end method
