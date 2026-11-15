.class Lv8/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Le9/a;

.field private final c:Le9/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Le9/a;Le9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv8/g;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lv8/g;->b:Le9/a;

    .line 7
    .line 8
    iput-object p3, p0, Lv8/g;->c:Le9/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lv8/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lv8/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lv8/g;->b:Le9/a;

    .line 4
    .line 5
    iget-object v2, p0, Lv8/g;->c:Le9/a;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lv8/f;->a(Landroid/content/Context;Le9/a;Le9/a;Ljava/lang/String;)Lv8/f;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
