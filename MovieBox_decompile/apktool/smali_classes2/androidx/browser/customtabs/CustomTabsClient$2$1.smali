.class Landroidx/browser/customtabs/CustomTabsClient$2$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->K0(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$navigationEvent:I


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$1;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$1;->val$navigationEvent:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$1;->val$extras:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$1;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 4
    .line 5
    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$1;->val$navigationEvent:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$1;->val$extras:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/c;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
