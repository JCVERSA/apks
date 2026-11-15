.class public final synthetic Lpg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# instance fields
.field public final synthetic a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg6;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    return-void
.end method


# virtual methods
.method public final onLoadMoreRequested()V
    .locals 0

    iget-object p0, p0, Lpg6;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    invoke-static {p0}, Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;->S(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)V

    return-void
.end method
