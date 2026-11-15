.class public final synthetic Lx1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/util/List;Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lx1c;->c:Ljava/util/List;

    iput-object p3, p0, Lx1c;->d:Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lx1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Lx1c;->c:Ljava/util/List;

    iget-object v2, p0, Lx1c;->d:Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->n0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/util/List;Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
