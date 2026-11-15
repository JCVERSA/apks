.class public abstract Lmgtv/qt/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lm3d;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lmgtv/qt/a;->b(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLm3d;)V

    return-void
.end method

.method public static b(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLm3d;)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "\u4f20\u5165\u7684\u4e0a\u4e0b\u6587\u4e3anull"

    invoke-static {p0}, Lmgtv/qt/c;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    xor-int/lit8 p5, p5, 0x1

    sput-boolean p5, Lmgtv/qt/a;->a:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    sput-object p5, Lmgtv/qt/c;->j:Landroid/content/Context;

    sput-object p0, Lmgtv/qt/c;->k:Landroid/app/Application;

    sput-boolean p4, Lmgtv/qt/c;->c:Z

    if-nez p4, :cond_1

    const-string p0, "QuestMobile"

    const-string p1, "QuestMobile SDK \u8bbe\u7f6e\u4e3a\u4e0d\u5141\u8bb8\u4f7f\u7528\u7f51\u7edc"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p6, :cond_2

    new-instance p6, Lmvd;

    invoke-direct {p6}, Lmvd;-><init>()V

    :cond_2
    sput-object p6, Lmgtv/qt/c;->b:Lm3d;

    new-instance p0, Lmgtv/qt/w;

    invoke-direct {p0, p1, p2, p3, p4}, Lmgtv/qt/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lmgtv/qt/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lmgtv/qt/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
