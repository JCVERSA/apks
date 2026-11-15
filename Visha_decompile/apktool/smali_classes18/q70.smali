.class public final synthetic Lq70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/youth/banner/adapter/BannerAdapter;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/youth/banner/adapter/BannerAdapter;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq70;->b:Lcom/youth/banner/adapter/BannerAdapter;

    iput-object p2, p0, Lq70;->c:Ljava/lang/Object;

    iput p3, p0, Lq70;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lq70;->b:Lcom/youth/banner/adapter/BannerAdapter;

    iget-object v1, p0, Lq70;->c:Ljava/lang/Object;

    iget p0, p0, Lq70;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/youth/banner/adapter/BannerAdapter;->b(Lcom/youth/banner/adapter/BannerAdapter;Ljava/lang/Object;ILandroid/view/View;)V

    return-void
.end method
