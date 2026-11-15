.class public final Luf1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Luf1;

.field public static final b:Ljava/lang/String;

.field public static final c:Lyi5;

.field public static final d:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luf1;

    invoke-direct {v0}, Luf1;-><init>()V

    sput-object v0, Luf1;->a:Luf1;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Luf1;->b:Ljava/lang/String;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lqf1;

    invoke-direct {v1}, Lqf1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    sput-object v1, Luf1;->c:Lyi5;

    new-instance v1, Lrf1;

    invoke-direct {v1}, Lrf1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Luf1;->d:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    invoke-static {}, Luf1;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Luf1;->d()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()Ljava/util/List;
    .locals 5

    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    invoke-virtual {v0}, Ldw6;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lkotlin/text/Regex;

    sget-object v4, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v3, v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final d()[Ljava/lang/String;
    .locals 13

    const-string v11, ".m2ts"

    const-string v12, ".divx"

    const-string v0, ".rmvb"

    const-string v1, ".rm"

    const-string v2, ".vob"

    const-string v3, ".RMVB"

    const-string v4, ".RM"

    const-string v5, ".VOB"

    const-string v6, ".asf"

    const-string v7, ".ps"

    const-string v8, ".mpg"

    const-string v9, ".mpeg"

    const-string v10, ".MP4V"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 0

    sget-object p0, Luf1;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    sget-object p0, Luf1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g()[Ljava/lang/String;
    .locals 0

    sget-object p0, Luf1;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
