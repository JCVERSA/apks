.class public final synthetic Log7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

.field public final synthetic c:Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iput-object p2, p0, Log7;->c:Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Log7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iget-object p0, p0, Log7;->c:Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->d(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Lcom/transsion/onlinevideo/adapter/SearchVideoTagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
