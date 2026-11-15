.class public final synthetic Lzjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/j20;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzjd;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lzjd;->c:Lcom/yandex/mobile/ads/impl/j20;

    iput-object p3, p0, Lzjd;->d:Ljava/lang/String;

    iput-object p4, p0, Lzjd;->e:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzjd;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lzjd;->c:Lcom/yandex/mobile/ads/impl/j20;

    iget-object v2, p0, Lzjd;->d:Ljava/lang/String;

    iget-object p0, p0, Lzjd;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/j20;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
