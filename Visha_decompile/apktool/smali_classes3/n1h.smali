.class public final synthetic Ln1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lr1h;

.field public final synthetic b:Lhmh;

.field public final synthetic c:Lvmh;

.field public final synthetic d:Lxjg;


# direct methods
.method public synthetic constructor <init>(Lr1h;Lhmh;Lvmh;Lxjg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1h;->a:Lr1h;

    iput-object p2, p0, Ln1h;->b:Lhmh;

    iput-object p3, p0, Ln1h;->c:Lvmh;

    iput-object p4, p0, Ln1h;->d:Lxjg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 3

    iget-object v0, p0, Ln1h;->a:Lr1h;

    iget-object v1, p0, Ln1h;->b:Lhmh;

    iget-object v2, p0, Ln1h;->c:Lvmh;

    iget-object p0, p0, Ln1h;->d:Lxjg;

    invoke-static {v0, v1, v2, p0, p1}, Lr1h;->c(Lr1h;Lhmh;Lvmh;Lxjg;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
