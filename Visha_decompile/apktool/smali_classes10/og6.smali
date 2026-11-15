.class public final synthetic Log6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log6;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 0

    iget-object p0, p0, Log6;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    invoke-static {p0}, Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;->V(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)V

    return-void
.end method
