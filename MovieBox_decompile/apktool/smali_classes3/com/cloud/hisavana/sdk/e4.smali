.class public abstract Lcom/cloud/hisavana/sdk/e4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/x3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/e4$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/cloud/hisavana/sdk/e4$a;

.field protected volatile b:I

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/e4;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public d(Lcom/cloud/hisavana/sdk/e4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4$a;

    .line 2
    .line 3
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/e4;->c:I

    .line 2
    .line 3
    return-void
.end method
