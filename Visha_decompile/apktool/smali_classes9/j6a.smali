.class public final synthetic Lj6a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lk6a$d;

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lk6a$d;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6a;->b:Lk6a$d;

    iput-object p2, p0, Lj6a;->c:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lj6a;->b:Lk6a$d;

    iget-object p0, p0, Lj6a;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, p0, p1, p2, p3}, Lk6a;->a(Lk6a$d;Landroid/widget/PopupWindow;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
