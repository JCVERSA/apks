.class public final Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;I)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;->c(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;->d(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(I)J
    .locals 2

    int-to-long p0, p1

    const-wide/32 v0, 0xf4240

    add-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0
.end method

.method public final d(J)I
    .locals 2

    neg-long p0, p1

    const-wide/32 v0, 0xf4240

    sub-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
