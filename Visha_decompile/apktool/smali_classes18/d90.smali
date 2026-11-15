.class public final synthetic Ld90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/zhpan/bannerview/BaseBannerAdapter;

.field public final synthetic c:Lcom/zhpan/bannerview/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/zhpan/bannerview/BaseBannerAdapter;Lcom/zhpan/bannerview/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld90;->b:Lcom/zhpan/bannerview/BaseBannerAdapter;

    iput-object p2, p0, Ld90;->c:Lcom/zhpan/bannerview/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ld90;->b:Lcom/zhpan/bannerview/BaseBannerAdapter;

    iget-object p0, p0, Ld90;->c:Lcom/zhpan/bannerview/BaseViewHolder;

    invoke-static {v0, p0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->b(Lcom/zhpan/bannerview/BaseBannerAdapter;Lcom/zhpan/bannerview/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
