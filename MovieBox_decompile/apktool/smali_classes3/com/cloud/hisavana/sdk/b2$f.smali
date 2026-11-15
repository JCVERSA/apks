.class Lcom/cloud/hisavana/sdk/b2$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/b2;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b2$f;->a:Lcom/cloud/hisavana/sdk/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/b2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2$f;-><init>(Lcom/cloud/hisavana/sdk/b2;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2$f;->a:Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/b2;->e(Lcom/cloud/hisavana/sdk/b2;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
