.class public final Lru/zdevs/zarchiver/ZApp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZApp$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 9
    .line 10
    iget-object v1, p0, Lru/zdevs/zarchiver/ZApp$a;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget v3, Ly0/c;->b:I

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ly0/b;

    .line 23
    .line 24
    invoke-direct {v3, v0, v1}, Ly0/b;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Ly0/c;->a(Landroid/view/View;Ly0/b;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ly0/c;

    .line 31
    .line 32
    invoke-direct {v2, v0, v1}, Ly0/c;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lru/zdevs/zarchiver/ZApp$a$a;

    .line 36
    .line 37
    invoke-direct {v0}, Lru/zdevs/zarchiver/ZApp$a$a;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ly0/c;->getView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    instance-of v3, v1, Ly0/b;

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    check-cast v1, Ly0/b;

    .line 53
    .line 54
    iput-object v0, v1, Ly0/b;->b:Ly0/a;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 58
    .line 59
    iget-object v1, p0, Lru/zdevs/zarchiver/ZApp$a;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_1
    :goto_0
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->d:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->e:Landroid/widget/Toast;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 73
    .line 74
    .line 75
    :cond_2
    sput-object v2, Lru/zdevs/zarchiver/ZApp;->e:Landroid/widget/Toast;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw v1
.end method
