.class public Lcom/cloud/hisavana/sdk/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$i;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/b;Lcom/cloud/hisavana/sdk/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b$i;-><init>(Lcom/cloud/hisavana/sdk/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$i;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/b;->k(Lcom/cloud/hisavana/sdk/b;Landroid/view/View;)V

    return-void
.end method
