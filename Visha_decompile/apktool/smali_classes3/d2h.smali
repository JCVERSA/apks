.class public final synthetic Ld2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpqh;


# instance fields
.field public final synthetic a:Lf2h;

.field public final synthetic b:Lvmh;

.field public final synthetic c:Lhmh;

.field public final synthetic d:Lnxg;


# direct methods
.method public synthetic constructor <init>(Lf2h;Lvmh;Lhmh;Lnxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2h;->a:Lf2h;

    iput-object p2, p0, Ld2h;->b:Lvmh;

    iput-object p3, p0, Ld2h;->c:Lhmh;

    iput-object p4, p0, Ld2h;->d:Lnxg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ld2h;->a:Lf2h;

    iget-object v1, p0, Ld2h;->b:Lvmh;

    iget-object v2, p0, Ld2h;->c:Lhmh;

    iget-object p0, p0, Ld2h;->d:Lnxg;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p0, p1}, Lf2h;->c(Lf2h;Lvmh;Lhmh;Lnxg;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
