.class public final Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/share/share/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomDetailFragmentNew;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomDetailFragmentNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;->a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V
    .locals 0

    .line 1
    const-string p2, "id"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/share/share/a$a;->b(Lcom/transsion/share/share/a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "fileName"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "fileSize"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "fileImage"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const-wide/16 v1, 0x7d0

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;->a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/transsion/room/fragment/RoomDetailFragmentNew;->O0(Lcom/transsion/room/fragment/RoomDetailFragmentNew;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;->a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/room/fragment/RoomBaseFragment;->p0()Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->x(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/share/share/a$a;->c(Lcom/transsion/share/share/a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
