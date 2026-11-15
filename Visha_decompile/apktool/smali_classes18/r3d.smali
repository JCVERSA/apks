.class public final synthetic Lr3d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ac1;

.field public final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ac1;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3d;->b:Lcom/yandex/mobile/ads/impl/ac1;

    iput-object p2, p0, Lr3d;->c:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lr3d;->b:Lcom/yandex/mobile/ads/impl/ac1;

    iget-object p0, p0, Lr3d;->c:Landroid/widget/CheckBox;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ac1;->b(Lcom/yandex/mobile/ads/impl/ac1;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
