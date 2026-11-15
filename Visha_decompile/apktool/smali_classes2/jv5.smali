.class public final synthetic Ljv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/i;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljv5;->b:Lcom/cloud/hisavana/sdk/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ljv5;->b:Lcom/cloud/hisavana/sdk/i;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/i;->b(Lcom/cloud/hisavana/sdk/i;)V

    return-void
.end method
