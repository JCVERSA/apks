.class public final synthetic Ltvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vf2$a;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vf2$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iput-wide p2, p0, Ltvd;->c:J

    iput p4, p0, Ltvd;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iget-wide v1, p0, Ltvd;->c:J

    iget p0, p0, Ltvd;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/vf2$a;->e(Lcom/yandex/mobile/ads/impl/vf2$a;JI)V

    return-void
.end method
