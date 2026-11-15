.class public final Liyf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvmh;

.field public final b:Lhmh;

.field public final c:Lq0h;


# direct methods
.method public constructor <init>(Lvmh;Lhmh;Lq0h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liyf;->a:Lvmh;

    iput-object p2, p0, Liyf;->b:Lhmh;

    iput-object p3, p0, Liyf;->c:Lq0h;

    return-void
.end method


# virtual methods
.method public final a()Lq0h;
    .locals 0

    iget-object p0, p0, Liyf;->c:Lq0h;

    return-object p0
.end method

.method public final b()Lhmh;
    .locals 0

    iget-object p0, p0, Liyf;->b:Lhmh;

    return-object p0
.end method

.method public final c()Lvmh;
    .locals 0

    iget-object p0, p0, Liyf;->a:Lvmh;

    return-object p0
.end method
