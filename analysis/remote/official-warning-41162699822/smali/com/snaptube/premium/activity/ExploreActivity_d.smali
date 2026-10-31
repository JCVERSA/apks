.class public Lcom/snaptube/premium/activity/ExploreActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Lo/l3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/premium/activity/ExploreActivity;->m1(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snaptube/premium/activity/ExploreActivity;


# direct methods
.method public constructor <init>(Lcom/snaptube/premium/activity/ExploreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity$d;->a:Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/wandoujia/base/utils/CipherUtil;->a(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity$d;->a:Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {p1}, Lcom/snaptube/premium/activity/ExploreActivity;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity$d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
