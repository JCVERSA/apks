.class Lcom/transsion/tools/activities/SkinsActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsActivity$4;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/tools/activities/SkinsActivity$4;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$4$1;->this$1:Lcom/transsion/tools/activities/SkinsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity$4$1;->this$1:Lcom/transsion/tools/activities/SkinsActivity$4;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity$4;->c:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsActivity;->y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd(Z)V

    return-void
.end method
