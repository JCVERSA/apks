.class public Lcom/blankj/utilcode/util/s$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final b:Lcom/blankj/utilcode/util/s$a;


# instance fields
.field private a:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/s$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/s$a;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/blankj/utilcode/util/s$a;->b:Lcom/blankj/utilcode/util/s$a;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {p1, p2, p3}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/blankj/utilcode/util/s$a;->a:Landroid/app/NotificationChannel;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/blankj/utilcode/util/s$a;)Landroid/app/NotificationChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/blankj/utilcode/util/s$a;->a:Landroid/app/NotificationChannel;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Landroid/app/NotificationChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/s$a;->a:Landroid/app/NotificationChannel;

    .line 2
    .line 3
    return-object v0
.end method
