.class public abstract Lcom/cloud/hisavana/sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrqd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/z$a;
    }
.end annotation


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/z$a;

.field public volatile b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    return p0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/z;->d:I

    return-void
.end method

.method public d(Lcom/cloud/hisavana/sdk/z$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    return-void
.end method

.method public e()V
    .locals 1

    :try_start_0
    invoke-static {}, Lul4;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/z;->c:I

    return-void
.end method
