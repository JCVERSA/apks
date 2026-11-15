.class public final synthetic Lle0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field public final synthetic a:Lpe0;


# direct methods
.method public synthetic constructor <init>(Lpe0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lle0;->a:Lpe0;

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    iget-object p0, p0, Lle0;->a:Lpe0;

    invoke-static {p0, p1}, Lpe0;->g(Lpe0;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
