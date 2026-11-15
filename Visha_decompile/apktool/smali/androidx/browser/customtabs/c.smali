.class public final synthetic Landroidx/browser/customtabs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/browser/customtabs/EngagementSignalsCallback;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/c;->b:Landroidx/browser/customtabs/EngagementSignalsCallback;

    iput p2, p0, Landroidx/browser/customtabs/c;->c:I

    iput-object p3, p0, Landroidx/browser/customtabs/c;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/c;->b:Landroidx/browser/customtabs/EngagementSignalsCallback;

    iget v1, p0, Landroidx/browser/customtabs/c;->c:I

    iget-object p0, p0, Landroidx/browser/customtabs/c;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Landroidx/browser/customtabs/CustomTabsSession$1;->c(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    return-void
.end method
