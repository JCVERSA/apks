.class public final synthetic Lus7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/ViewModelStoreOwner;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus7;->a:Landroidx/lifecycle/ViewModelStoreOwner;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lus7;->a:Landroidx/lifecycle/ViewModelStoreOwner;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/web/OrderManager;->a(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Integer;)V

    return-void
.end method
