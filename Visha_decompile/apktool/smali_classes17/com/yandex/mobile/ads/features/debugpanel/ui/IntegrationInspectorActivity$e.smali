.class final Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$e;->b:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/yandex/mobile/ads/impl/hy;

    iget-object v1, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$e;->b:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    new-instance v2, Lcom/yandex/mobile/ads/features/debugpanel/ui/a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$e;->b:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-static {v0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->d(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lcom/yandex/mobile/ads/impl/fp0;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/a;-><init>(Lcom/yandex/mobile/ads/impl/fp0;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$e;->b:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-static {p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->a(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lcom/yandex/mobile/ads/impl/dx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/dx;->a()Lcom/yandex/mobile/ads/impl/lx;

    move-result-object v3

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-direct {v4, v1, p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/qw;

    new-instance p0, Lcom/yandex/mobile/ads/impl/hh2;

    invoke-direct {p0, v2, v3}, Lcom/yandex/mobile/ads/impl/hh2;-><init>(Le74;Lcom/yandex/mobile/ads/impl/lx;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/vh2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vh2;-><init>()V

    invoke-direct {v5, v2, v3, p0, v0}, Lcom/yandex/mobile/ads/impl/qw;-><init>(Le74;Lcom/yandex/mobile/ads/impl/lx;Lcom/yandex/mobile/ads/impl/hh2;Lcom/yandex/mobile/ads/impl/vh2;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/hy;-><init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Le74;Lcom/yandex/mobile/ads/impl/lx;Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/yandex/mobile/ads/impl/qw;)V

    return-object v6
.end method
