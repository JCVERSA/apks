.class Landroidx/browser/customtabs/CustomTabsClient$2$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->T0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$relation:I

.field final synthetic val$requestedOrigin:Landroid/net/Uri;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$relation:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$result:Z

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 4
    .line 5
    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$relation:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    .line 8
    .line 9
    iget-boolean v3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$result:Z

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/browser/customtabs/c;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
