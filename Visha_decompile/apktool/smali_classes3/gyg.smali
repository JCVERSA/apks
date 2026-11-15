.class public final synthetic Lgyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lhyg;

.field public final synthetic b:Lvmh;

.field public final synthetic c:Lhmh;


# direct methods
.method public synthetic constructor <init>(Lhyg;Lvmh;Lhmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgyg;->a:Lhyg;

    iput-object p2, p0, Lgyg;->b:Lvmh;

    iput-object p3, p0, Lgyg;->c:Lhmh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object v0, p0, Lgyg;->a:Lhyg;

    iget-object v1, p0, Lgyg;->b:Lvmh;

    iget-object p0, p0, Lgyg;->c:Lhmh;

    invoke-static {v0, v1, p0, p1}, Lhyg;->c(Lhyg;Lvmh;Lhmh;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
