.class public final synthetic Lndd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lndd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-boolean p2, p0, Lndd;->b:Z

    iput p3, p0, Lndd;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lndd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-boolean v1, p0, Lndd;->b:Z

    iget p0, p0, Lndd;->c:I

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->m(Lcom/yandex/mobile/ads/impl/ld$a;ZILcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
