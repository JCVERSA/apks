.class public final synthetic Landroidx/activity/result/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/activity/result/a;

.field public final synthetic d:Lf/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/a;Lf/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/result/c;->a:Landroidx/activity/result/ActivityResultRegistry;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/result/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/a;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/activity/result/c;->d:Lf/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/activity/result/c;->a:Landroidx/activity/result/ActivityResultRegistry;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/result/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/a;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/activity/result/c;->d:Lf/a;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Landroidx/activity/result/ActivityResultRegistry;->a(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/a;Lf/a;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
