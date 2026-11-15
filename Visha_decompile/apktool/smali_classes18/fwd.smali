.class public final synthetic Lfwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vh$a;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vh$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iput-boolean p2, p0, Lfwd;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iget-boolean p0, p0, Lfwd;->c:Z

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/vh$a;->f(Lcom/yandex/mobile/ads/impl/vh$a;Z)V

    return-void
.end method
