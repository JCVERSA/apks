.class public abstract Lru5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru5$a;
    }
.end annotation


# static fields
.field public static final a:Lru5$a;

.field public static final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru5;->a:Lru5$a;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "lrc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lru5;->b:Ljava/io/File;

    return-void
.end method

.method public static final synthetic a()Ljava/io/File;
    .locals 1

    sget-object v0, Lru5;->b:Ljava/io/File;

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lru5;->a:Lru5$a;

    invoke-virtual {v0, p0}, Lru5$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lru5;->a:Lru5$a;

    invoke-virtual {v0, p0, p1, p2}, Lru5$a;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
