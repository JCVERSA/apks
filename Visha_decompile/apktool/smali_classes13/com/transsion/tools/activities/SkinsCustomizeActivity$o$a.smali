.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$o$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o$a;->c:Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o$a;->c:Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    :cond_0
    return-void
.end method
