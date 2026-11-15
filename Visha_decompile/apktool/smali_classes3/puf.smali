.class public final Lpuf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvmh;

.field public final b:Lhmh;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lvmh;Lhmh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpuf;->a:Lvmh;

    iput-object p2, p0, Lpuf;->b:Lhmh;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_0
    iput-object p3, p0, Lpuf;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lhmh;
    .locals 0

    iget-object p0, p0, Lpuf;->b:Lhmh;

    return-object p0
.end method

.method public final b()Lkmh;
    .locals 0

    iget-object p0, p0, Lpuf;->a:Lvmh;

    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    return-object p0
.end method

.method public final c()Lvmh;
    .locals 0

    iget-object p0, p0, Lpuf;->a:Lvmh;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lpuf;->c:Ljava/lang/String;

    return-object p0
.end method
