.class public final Landroidx/core/app/NotificationCompat$l;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$l$b;,
        Landroidx/core/app/NotificationCompat$l$a;,
        Landroidx/core/app/NotificationCompat$l$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:Landroid/app/PendingIntent;

.field private c:Landroidx/core/graphics/drawable/IconCompat;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$l;->a:Landroid/app/PendingIntent;

    .line 4
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$l;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    iput p4, p0, Landroidx/core/app/NotificationCompat$l;->d:I

    .line 6
    iput p5, p0, Landroidx/core/app/NotificationCompat$l;->e:I

    .line 7
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$l;->b:Landroid/app/PendingIntent;

    .line 8
    iput p6, p0, Landroidx/core/app/NotificationCompat$l;->f:I

    .line 9
    iput-object p7, p0, Landroidx/core/app/NotificationCompat$l;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/core/app/NotificationCompat$l;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$l;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1e

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$l$b;->a(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$l;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    const/16 v2, 0x1d

    .line 17
    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$l$a;->a(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$l;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_2
    return-object v0
.end method

.method public static k(Landroidx/core/app/NotificationCompat$l;)Landroid/app/Notification$BubbleMetadata;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1e

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$l$b;->b(Landroidx/core/app/NotificationCompat$l;)Landroid/app/Notification$BubbleMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    const/16 v2, 0x1d

    .line 17
    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$l$a;->b(Landroidx/core/app/NotificationCompat$l;)Landroid/app/Notification$BubbleMetadata;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_2
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$l;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$l;->b:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$l;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$l;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$l;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$l;->a:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$l;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$l;->f:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/NotificationCompat$l;->f:I

    .line 2
    .line 3
    return-void
.end method
