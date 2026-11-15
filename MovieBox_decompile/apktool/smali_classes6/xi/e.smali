.class public final synthetic Lxi/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lxi/h;

.field public final synthetic b:Lcom/transsion/baselib/db/music/MusicLikedDbBean;


# direct methods
.method public synthetic constructor <init>(Lxi/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxi/e;->a:Lxi/h;

    .line 5
    .line 6
    iput-object p2, p0, Lxi/e;->b:Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lxi/e;->a:Lxi/h;

    .line 2
    .line 3
    iget-object v1, p0, Lxi/e;->b:Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 4
    .line 5
    check-cast p1, Ly3/b;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lxi/h;->k(Lxi/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;Ly3/b;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
