.class public final synthetic Ll1d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1d;->b:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ll1d;->b:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    invoke-static {p0}, Ll3d;->c(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    return-void
.end method
