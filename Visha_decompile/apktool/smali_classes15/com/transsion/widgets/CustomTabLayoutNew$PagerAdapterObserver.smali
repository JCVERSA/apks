.class Lcom/transsion/widgets/CustomTabLayoutNew$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomTabLayoutNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/CustomTabLayoutNew;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayoutNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$PagerAdapterObserver;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$PagerAdapterObserver;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->populateFromPagerAdapter()V

    return-void
.end method
