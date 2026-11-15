.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcFragmentManagerFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFragmentManager(Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;

    .line 7
    .line 8
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->main:I

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
