.class final Landroidx/activity/result/ActivityResultRegistry$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResultRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/activity/result/a;

.field private final b:Lf/a;


# direct methods
.method public constructor <init>(Landroidx/activity/result/a;Lf/a;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contract"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$a;->a:Landroidx/activity/result/a;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$a;->b:Lf/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/result/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$a;->a:Landroidx/activity/result/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lf/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$a;->b:Lf/a;

    .line 2
    .line 3
    return-object v0
.end method
