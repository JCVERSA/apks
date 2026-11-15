.class public final synthetic Lck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/ext/attr/AttrData;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck;->b:Lcom/cloud/hisavana/sdk/ext/attr/AttrData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lck;->b:Lcom/cloud/hisavana/sdk/ext/attr/AttrData;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->f(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method
