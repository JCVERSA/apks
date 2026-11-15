.class public final synthetic Landroidx/room/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/room/a;

.field public final synthetic b:Landroidx/room/a$b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/b;->a:Landroidx/room/a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/room/b;->b:Landroidx/room/a$b;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/b;->a:Landroidx/room/a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/b;->b:Landroidx/room/a$b;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/room/a$b;->a(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)Ly3/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
