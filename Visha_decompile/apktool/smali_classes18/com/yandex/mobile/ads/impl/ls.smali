.class public abstract Lcom/yandex/mobile/ads/impl/ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ls$a;,
        Lcom/yandex/mobile/ads/impl/ls$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k31;

.field private final b:Lcom/yandex/mobile/ads/impl/g31;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ls;->a:Lcom/yandex/mobile/ads/impl/k31;

    .line 3
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ls;->b:Lcom/yandex/mobile/ads/impl/g31;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ls;-><init>(Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ls;->b:Lcom/yandex/mobile/ads/impl/g31;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g31;->a()V

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls;->a:Lcom/yandex/mobile/ads/impl/k31;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k31;->b()V

    return-void
.end method
