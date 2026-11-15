.class public final synthetic Lgod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t32;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgod;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgod;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n60$b;->e(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/f62;

    move-result-object p0

    return-object p0
.end method
