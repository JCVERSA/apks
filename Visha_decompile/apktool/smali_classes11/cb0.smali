.class public final synthetic Lcb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Leb0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/widgets/popup/ISelectCallback;


# direct methods
.method public synthetic constructor <init>(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb0;->b:Leb0;

    iput-object p2, p0, Lcb0;->c:Ljava/util/List;

    iput-object p3, p0, Lcb0;->d:Lcom/transsion/widgets/popup/ISelectCallback;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcb0;->b:Leb0;

    iget-object v1, p0, Lcb0;->c:Ljava/util/List;

    iget-object v2, p0, Lcb0;->d:Lcom/transsion/widgets/popup/ISelectCallback;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Leb0;->b(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
