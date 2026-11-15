.class public final Llxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Lkxg;

.field public final b:Lm2i;


# direct methods
.method public constructor <init>(Lkxg;Lm2i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llxg;->a:Lkxg;

    iput-object p2, p0, Llxg;->b:Lm2i;

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 1

    iget-object v0, p0, Llxg;->a:Lkxg;

    invoke-interface {v0, p1, p2}, Lkxg;->a(Lvmh;Lhmh;)Lim5;

    move-result-object p1

    iget-object p0, p0, Llxg;->b:Lm2i;

    sget-object p2, Lzef;->a:Lg8i;

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p0, Llxg;->a:Lkxg;

    invoke-interface {p0, p1, p2}, Lkxg;->b(Lvmh;Lhmh;)Z

    move-result p0

    return p0
.end method
