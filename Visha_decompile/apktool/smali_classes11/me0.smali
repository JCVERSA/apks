.class public final synthetic Lme0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic a:Lpe0;


# direct methods
.method public synthetic constructor <init>(Lpe0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme0;->a:Lpe0;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lme0;->a:Lpe0;

    invoke-static {p0, p1, p2}, Lpe0;->d(Lpe0;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
