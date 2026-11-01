.class public abstract Lo/c16;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static b:Ljava/lang/String;

.field public static c:J

.field public static d:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/PluginId;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Lo/c16;->a:Ljava/util/regex/Pattern;

    const-string v0, ""

    sput-object v0, Lo/c16;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lo/c16;->c:J

    new-instance v0, Lo/c16$a;

    invoke-direct {v0}, Lo/c16$a;-><init>()V

    sput-object v0, Lo/c16;->d:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic A(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x7

    const-string p0, "_"

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    shr-int/2addr v1, p0

    return p0

    :cond_0
    const/4 v1, 0x7

    sget-object v0, Lo/c16;->a:Ljava/util/regex/Pattern;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    const/4 v1, 0x6

    return p0
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    const/4 v2, 0x0

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "sasnAlys"

    const-string v1, "Analysis"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "load_plugin"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const/4 v2, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    const-string p1, "plugin"

    const/4 v2, 0x7

    invoke-interface {v0, p1, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const/4 v2, 0x6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x2

    const-string p2, "cscmuss"

    const-string p2, "success"

    invoke-interface {p0, p2, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const/4 v2, 0x7

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {p1, p0}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method

.method public static C()V
    .locals 3

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    const/4 v2, 0x1

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const/4 v2, 0x3

    const-string v1, "Ayilosns"

    const-string v1, "Analysis"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "epligbur_uyq"

    const-string v1, "plugin_query"

    const/4 v2, 0x2

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v0}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method

.method public static varargs D(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x7

    invoke-static {p0, p1}, Lo/c16;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x5

    if-eqz v0, :cond_1

    const/4 v3, 0x6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    const/4 v3, 0x4

    array-length v0, p2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v3, 0x4

    aget-object v2, p2, v1

    const/4 v3, 0x6

    invoke-static {p0, p1, v2}, Lo/c16;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    const/4 v3, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    const/4 v3, 0x3

    const-string p1, "ittn sb li derxbio"

    const-string p1, "lib dir not exists"

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    throw p0
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Lo/c16;->z(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x5

    return p0
.end method

.method public static synthetic b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lo/c16;->A(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    return p0
.end method

.method public static c(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lo/c16;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    invoke-static {v0}, Lo/yj2;->q(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x4

    invoke-static {p0, p1}, Lo/c16;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x4

    invoke-static {p0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->R0(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v3, 0x2

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 p1, 0x1

    and-int/2addr v3, p1

    new-array p1, p1, [J

    const/4 v2, 0x0

    move v3, v2

    aput-wide v0, p1, v2

    invoke-static {p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->i([J)V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/yj2;->s(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static d(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6

    const/4 v5, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x5

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    return-void

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v0}, Lo/c16;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v1, v0

    const/4 v5, 0x7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/4 v5, 0x2

    aget-object v3, v0, v2

    const/4 v5, 0x7

    sget-object v4, Lo/c16;->d:Ljava/util/Comparator;

    const/4 v5, 0x7

    invoke-interface {v4, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x6

    if-gez v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-static {p0, v3}, Lo/c16;->c(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    return-void
.end method

.method public static e()Lrx/c;
    .locals 5

    invoke-static {}, Lo/c16;->C()V

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    const/4 v4, 0x2

    array-length v1, v0

    new-array v1, v1, [Lcom/wandoujia/em/common/proto/plugin/PluginQuery;

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    array-length v3, v0

    const/4 v4, 0x7

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x4

    invoke-virtual {v3}, Lcom/snaptube/plugin/PluginId;->toPluginQuery()Lcom/wandoujia/em/common/proto/plugin/PluginQuery;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v2

    const/4 v4, 0x5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wandoujia/em/common/proto/plugin/PluginQueryRequest;

    const/4 v4, 0x0

    invoke-direct {v0}, Lcom/wandoujia/em/common/proto/plugin/PluginQueryRequest;-><init>()V

    const/4 v4, 0x4

    new-instance v2, Ljava/util/LinkedList;

    invoke-static {}, Lo/az7;->h()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string v3, "htocar"

    const-string v3, "noarch"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    invoke-virtual {v0, v2}, Lcom/wandoujia/em/common/proto/plugin/PluginQueryRequest;->setCpuAbisList(Ljava/util/List;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v0, v1}, Lcom/wandoujia/em/common/proto/plugin/PluginQueryRequest;->setPluginsList(Ljava/util/List;)V

    invoke-static {v0}, Lo/lw3;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/app/PhoenixApplication;->b()Lcom/snaptube/premium/app/d;

    move-result-object v1

    const/4 v4, 0x3

    invoke-interface {v1}, Lo/kk8;->u()Lo/j96;

    move-result-object v1

    const/4 v4, 0x5

    invoke-interface {v1, v0}, Lo/j96;->a(Ljava/lang/String;)Lrx/c;

    move-result-object v0

    const/4 v4, 0x4

    return-object v0
.end method

.method public static f(Lcom/dayuwuxian/em/api/proto/PluginInfo;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-static {v0, p0}, Lo/c16;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    const-string p0, "_"

    const/4 v1, 0x7

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string p0, "ka.p"

    const-string p0, ".apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    return-object p0

    :cond_1
    :goto_0
    const/4 v1, 0x5

    const/4 p0, 0x0

    const/4 v1, 0x5

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const-string v1, "com.snaptube.premium.plugins."

    const/4 v2, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    const-string p0, "_"

    const/4 v2, 0x3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bil"

    const-string v1, "lib"

    const/4 v2, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "so."

    const-string p2, ".so"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lo/c16;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x3

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/dayuwuxian/em/api/proto/PluginInfo;Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v5, 0x6

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v5, 0x5

    invoke-static {p0}, Lo/c16;->w(Lcom/dayuwuxian/em/api/proto/PluginInfo;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->supported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v5, 0x6

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x7

    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/plugin/PluginId;->fromName(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;

    move-result-object v1

    const/4 v5, 0x1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/snaptube/plugin/PluginId;->getRequiredMinVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v1, v2}, Lo/c16;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x4

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/c16;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    const-string v2, ".apk"

    const-string v2, ".apk"

    const/4 v5, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {}, Lo/c16;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x6

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    sget-object v2, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->APP:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    const/4 v5, 0x0

    invoke-static {v2}, Lcom/wandoujia/download/utils/StorageUtil;->e(Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x4

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const/4 v5, 0x7

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    invoke-static {v1}, Lo/wd9;->T(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :goto_0
    const/4 v5, 0x7

    new-instance v1, Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_PLUGIN:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    const/4 v5, 0x3

    invoke-direct {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;)V

    const/4 v5, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x7

    iget-object v4, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    const-string v4, "_"

    const-string v4, "_"

    const/4 v5, 0x7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    iget-object v4, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    iput-object v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    const/4 v5, 0x0

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PENDING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    iput-object v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v2, Lcom/phoenix/download/DownloadInfo$ContentType;->APP:Lcom/phoenix/download/DownloadInfo$ContentType;

    const/4 v5, 0x6

    iput-object v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    const/4 v5, 0x5

    iput-object v0, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    const/4 v5, 0x5

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    const/4 v5, 0x2

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->PLUGIN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    const/4 v5, 0x2

    iput-object v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->md5:Ljava/lang/String;

    const/4 v5, 0x1

    iput-object v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    iget-object p0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->url:Ljava/lang/String;

    const/4 v5, 0x3

    iput-object p0, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v0}, Lo/c16;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x5

    iput-object p0, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->F:Ljava/lang/String;

    iput-object p1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static k(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x7

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    return-object v1

    :cond_0
    const/4 v6, 0x1

    invoke-static {}, Lo/c16;->t()Ljava/io/File;

    move-result-object v0

    const/4 v6, 0x0

    new-instance v2, Lo/b16;

    const/4 v6, 0x7

    invoke-direct {v2, p0}, Lo/b16;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v6, 0x6

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    const/4 v6, 0x3

    aget-object v4, v0, v3

    add-int/lit8 v5, p0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    return-object v2
.end method

.method public static l()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lo/c16;->t()Ljava/io/File;

    move-result-object v0

    const/4 v6, 0x6

    sget-object v1, Lo/c16;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v6, 0x5

    if-nez v1, :cond_0

    sget-wide v1, Lo/c16;->c:J

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const/4 v6, 0x6

    cmp-long v5, v1, v3

    const/4 v6, 0x5

    if-nez v5, :cond_0

    const/4 v6, 0x1

    sget-object v0, Lo/c16;->b:Ljava/lang/String;

    const/4 v6, 0x6

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const/4 v6, 0x6

    sput-wide v1, Lo/c16;->c:J

    const/4 v6, 0x6

    new-instance v1, Lo/a16;

    invoke-direct {v1}, Lo/a16;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    if-eqz v0, :cond_2

    const/4 v6, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x6

    array-length v2, v0

    const/4 v6, 0x2

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v3, v2, :cond_1

    const/4 v6, 0x6

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    const-string v4, ","

    const/4 v6, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x2

    goto :goto_0

    :cond_1
    const/4 v6, 0x7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/c16;->b:Ljava/lang/String;

    :cond_2
    const/4 v6, 0x1

    sget-object v0, Lo/c16;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x7

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x7

    new-instance v1, Ljava/io/File;

    const/4 v3, 0x2

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x5

    const-string v2, "plugin"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x3

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v3, 0x3

    invoke-static {p0, p1}, Lo/c16;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p0, p1}, Lo/c16;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v3, 0x1

    if-nez p0, :cond_1

    const/4 v3, 0x3

    return-object v2

    :cond_1
    const/4 v3, 0x7

    new-instance p1, Ljava/io/File;

    const/4 v3, 0x3

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static o(Lcom/snaptube/plugin/PluginId;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {v0}, Lo/c16;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    sget-object v2, Lo/c16;->d:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v5, 0x6

    if-ltz v2, :cond_2

    const/4 v5, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v3}, Lo/c16;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/plugin/PluginId;->getRequiredMinVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3}, Lo/c16;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v5, 0x4

    return-object v3

    :cond_1
    const/4 v5, 0x7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    return-object v1
.end method

.method public static p(Lcom/dayuwuxian/em/api/proto/PluginInfo;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, p0}, Lo/c16;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x3

    return-object p0
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    const-string p0, "_"

    const/4 v1, 0x7

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const/4 v1, 0x5

    invoke-static {}, Lo/c16;->t()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x4

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-static {p0, p1}, Lo/c16;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    new-instance p1, Ljava/io/File;

    const-string v0, "lib"

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object p1
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v1, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    const/4 v3, 0x7

    return-object v1

    :cond_0
    const-string v0, "p.eniapspbmlu.mmtcug.ue.rnpio"

    const-string v0, "com.snaptube.premium.plugins."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, 0x3

    const/16 v2, 0x1d

    if-lt v2, v0, :cond_2

    const/4 v3, 0x5

    return-object v1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x6

    return-object p0
.end method

.method public static t()Ljava/io/File;
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x7

    const-string v1, "nitspgu"

    const-string v1, "plugins"

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x5

    return-object v0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const-string v0, "\\."

    const/4 v2, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    array-length v0, p0

    if-lez v0, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    const/4 v2, 0x7

    aget-object p1, p1, v1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v2, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v2, v1

    :cond_1
    :goto_0
    return v1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lo/c16;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lo/c16;->d:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    move v1, p0

    :goto_1
    return p0
.end method

.method public static w(Lcom/dayuwuxian/em/api/proto/PluginInfo;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x3

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x5

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->supported:Ljava/lang/Boolean;

    const/4 v4, 0x3

    if-nez v1, :cond_2

    const/4 v4, 0x4

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    const-string v3, "s!s ndlpnlu.ltIgu mnoe rs:pine pfoiu"

    const-string v3, "pluginInfo.supported is null! name: "

    const/4 v4, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const-string v3, ", version: "

    const/4 v4, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const-string v3, " l mr:u"

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "5d mo ,"

    const-string v3, ", md5: "

    const/4 v4, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->md5:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bpai:b u,c"

    const-string v3, ", cpuabi: "

    const/4 v4, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->cpu_abi:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    const-string p0, "a. :i b"

    const-string p0, ". abi: "

    const/4 v4, 0x2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-static {}, Lo/az7;->h()[Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v4, 0x7

    const-string v3, ","

    const-string v3, ","

    const/4 v4, 0x0

    invoke-static {p0, v3}, Lo/l38;->y(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    const-string p0, ", ver: "

    const/4 v4, 0x5

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->getPluginCurrentVersions()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x6

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x7

    invoke-direct {v1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return v0

    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const/4 v4, 0x7

    return v2

    :cond_3
    const/4 v4, 0x7

    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->cpu_abi:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x5

    if-nez v1, :cond_4

    const/4 v4, 0x4

    iget-object p0, p0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->md5:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v4, 0x2

    if-nez p0, :cond_4

    const/4 v4, 0x0

    const/4 v0, 0x1

    :cond_4
    const/4 v4, 0x5

    return v0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lo/c16;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x3

    return p0
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0, p1}, Lo/c16;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    sget-object v0, Lo/c16;->d:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x2

    if-gtz p0, :cond_0

    const/4 v1, 0x5

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic z(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    or-int/2addr v2, v1

    if-lt p1, v0, :cond_0

    const/4 v2, 0x4

    return v1

    :cond_0
    const/4 v2, 0x4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v2, 0x4

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x6

    if-eqz p0, :cond_1

    sget-object p0, Lo/c16;->a:Ljava/util/regex/Pattern;

    const/4 v2, 0x3

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    const/4 v2, 0x4

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    const/4 v1, 0x1

    :cond_1
    const/4 v2, 0x6

    return v1
.end method
