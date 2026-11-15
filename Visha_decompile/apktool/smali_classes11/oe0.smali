.class public final synthetic Loe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lpe0;

.field public final synthetic c:Lcom/android/billingclient/api/ProductDetails;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lpe0;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe0;->b:Lpe0;

    iput-object p2, p0, Loe0;->c:Lcom/android/billingclient/api/ProductDetails;

    iput-object p3, p0, Loe0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Loe0;->b:Lpe0;

    iget-object v1, p0, Loe0;->c:Lcom/android/billingclient/api/ProductDetails;

    iget-object p0, p0, Loe0;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lpe0;->e(Lpe0;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)V

    return-void
.end method
