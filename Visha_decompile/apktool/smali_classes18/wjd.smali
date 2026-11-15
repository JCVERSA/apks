.class public final synthetic Lwjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/j20;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lrk2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Lrk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwjd;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lwjd;->c:Lcom/yandex/mobile/ads/impl/j20;

    iput-object p3, p0, Lwjd;->d:Ljava/lang/String;

    iput-object p4, p0, Lwjd;->e:Lrk2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lwjd;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lwjd;->c:Lcom/yandex/mobile/ads/impl/j20;

    iget-object v2, p0, Lwjd;->d:Ljava/lang/String;

    iget-object p0, p0, Lwjd;->e:Lrk2;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/j20;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/mobile/ads/impl/j20;Ljava/lang/String;Lrk2;)V

    return-void
.end method
