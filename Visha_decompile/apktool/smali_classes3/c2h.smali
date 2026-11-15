.class public final synthetic Lc2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqqh;


# instance fields
.field public final synthetic a:Lf2h;

.field public final synthetic b:Lvmh;

.field public final synthetic c:Lhmh;

.field public final synthetic d:Lnxg;


# direct methods
.method public synthetic constructor <init>(Lf2h;Lvmh;Lhmh;Lnxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2h;->a:Lf2h;

    iput-object p2, p0, Lc2h;->b:Lvmh;

    iput-object p3, p0, Lc2h;->c:Lhmh;

    iput-object p4, p0, Lc2h;->d:Lnxg;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lc2h;->a:Lf2h;

    iget-object v1, p0, Lc2h;->b:Lvmh;

    iget-object v2, p0, Lc2h;->c:Lhmh;

    iget-object p0, p0, Lc2h;->d:Lnxg;

    invoke-static {v0, v1, v2, p0}, Lf2h;->d(Lf2h;Lvmh;Lhmh;Lnxg;)V

    return-void
.end method
