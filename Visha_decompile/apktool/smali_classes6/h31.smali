.class public final synthetic Lh31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh31;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 0

    iget-object p0, p0, Lh31;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->z0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    return-void
.end method
