.class public Lcom/transsion/playercommon/widgets/SearchFileView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/SearchFileView;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/playercommon/widgets/SearchFileView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$a;->c:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$a;->c:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    return-void
.end method
