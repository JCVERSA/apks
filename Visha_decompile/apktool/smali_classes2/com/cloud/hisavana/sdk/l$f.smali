.class public abstract Lcom/cloud/hisavana/sdk/l$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/l;-><init>(Lcom/cloud/hisavana/sdk/l$a;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/l$f;->a:Lcom/cloud/hisavana/sdk/l;

    return-void
.end method

.method public static synthetic a()Lcom/cloud/hisavana/sdk/l;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/l$f;->a:Lcom/cloud/hisavana/sdk/l;

    return-object v0
.end method
