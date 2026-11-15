.class public abstract Lcom/transsion/dbdata/utils/FolderLabelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/FolderLabelUtils;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(ZLjava/lang/String;Lcom/transsion/dbdata/beans/FolderLabelItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->d(ZLjava/lang/String;Lcom/transsion/dbdata/beans/FolderLabelItem;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/FolderLabelItem;
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj24;

    invoke-direct {v1, p2, p0}, Lj24;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/FolderLabelItem;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/FolderLabelItem;->matchName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/FolderLabelItem;->matchName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    goto :goto_1

    :cond_1
    move-object p2, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public static c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/FolderLabelUtils;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic d(ZLjava/lang/String;Lcom/transsion/dbdata/beans/FolderLabelItem;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/FolderLabelItem;->getMatchPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/FolderLabelItem;->getMatchName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/FolderLabelItem;->getMatchPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/dbdata/R$string;->default_folder_label_list:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/transsion/dbdata/utils/FolderLabelUtils$1;

    invoke-direct {v1}, Lcom/transsion/dbdata/utils/FolderLabelUtils$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object v0, Lcom/transsion/dbdata/utils/FolderLabelUtils;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
