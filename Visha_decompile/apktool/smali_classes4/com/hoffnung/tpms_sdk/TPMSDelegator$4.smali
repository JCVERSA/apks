.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoffnung/tpms_sdk/TPMSDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

.field final synthetic b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$4;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    iput-object p2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$4;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$4;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    const/4 v0, -0x4

    invoke-interface {p0, v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;->a(I)V

    return-void
.end method
