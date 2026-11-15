.class public Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$b;->b:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$b;->b:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->onBackPressed()V

    return-void
.end method
