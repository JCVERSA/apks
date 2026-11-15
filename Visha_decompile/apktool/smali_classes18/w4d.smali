.class public final synthetic Lw4d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic c:I

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/as0$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/yandex/mobile/ads/impl/as0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4d;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lw4d;->c:I

    iput-object p3, p0, Lw4d;->d:Lcom/yandex/mobile/ads/impl/as0$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lw4d;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lw4d;->c:I

    iget-object p0, p0, Lw4d;->d:Lcom/yandex/mobile/ads/impl/as0$a;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/as0;->b(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/yandex/mobile/ads/impl/as0$a;)V

    return-void
.end method
