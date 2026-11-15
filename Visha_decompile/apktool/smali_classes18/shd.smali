.class public final synthetic Lshd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t32;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lshd;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lshd;->b:I

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh$a;->d(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method
