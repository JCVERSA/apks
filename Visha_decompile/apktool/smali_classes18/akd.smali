.class public final synthetic Lakd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn5;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakd;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lakd;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j20;->e(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
