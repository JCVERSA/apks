.class public final synthetic Le90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le90;->b:Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;

    iput-object p2, p0, Le90;->c:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le90;->b:Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;

    iget-object p0, p0, Le90;->c:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->b(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;Landroid/view/View;)V

    return-void
.end method
