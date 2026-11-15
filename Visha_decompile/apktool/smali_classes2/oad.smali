.class public final synthetic Load;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/e;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Load;->b:Lcom/cloud/hisavana/sdk/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Load;->b:Lcom/cloud/hisavana/sdk/e;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/e;->a(Lcom/cloud/hisavana/sdk/e;)V

    return-void
.end method
