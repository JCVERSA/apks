.class public final synthetic Lq5d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/v;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5d;->b:Lcom/cloud/hisavana/sdk/v;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lq5d;->b:Lcom/cloud/hisavana/sdk/v;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/v;->m(Lcom/cloud/hisavana/sdk/v;Landroid/view/View;)V

    return-void
.end method
