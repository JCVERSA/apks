.class public Lo/lz5;
.super Ldalvik/system/DexClassLoader;


# instance fields
.field public a:Ljava/lang/ClassLoader;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lo/lz5;->b:Ljava/lang/String;

    iput-object p5, p0, Lo/lz5;->a:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lo/lz5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return-object p1

    :catch_0
    iget-object v0, p0, Lo/lz5;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    return-object p1
.end method
