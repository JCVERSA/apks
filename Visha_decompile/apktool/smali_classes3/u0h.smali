.class public final synthetic Lu0h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lz0h;

.field public final synthetic b:Lhmh;

.field public final synthetic c:Lvmh;

.field public final synthetic d:Lkxg;


# direct methods
.method public synthetic constructor <init>(Lz0h;Lhmh;Lvmh;Lkxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0h;->a:Lz0h;

    iput-object p2, p0, Lu0h;->b:Lhmh;

    iput-object p3, p0, Lu0h;->c:Lvmh;

    iput-object p4, p0, Lu0h;->d:Lkxg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 3

    iget-object v0, p0, Lu0h;->a:Lz0h;

    iget-object v1, p0, Lu0h;->b:Lhmh;

    iget-object v2, p0, Lu0h;->c:Lvmh;

    iget-object p0, p0, Lu0h;->d:Lkxg;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p0, p1}, Lz0h;->a(Lz0h;Lhmh;Lvmh;Lkxg;Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
