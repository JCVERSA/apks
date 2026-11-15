.class public final Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$initRecyclerView$1;
.super Lcom/transsion/utils/CustomGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->X1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/tools/filetrans/fragments/FileTransAudioFragment$initRecyclerView$1",
        "Lcom/transsion/utils/CustomGridLayoutManager;",
        "canScrollVertically",
        "",
        "tools_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$initRecyclerView$1;->e:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$initRecyclerView$1;->e:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    invoke-static {v0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->P1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method
