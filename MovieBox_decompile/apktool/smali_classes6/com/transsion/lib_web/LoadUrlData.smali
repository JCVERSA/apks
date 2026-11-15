.class public final Lcom/transsion/lib_web/LoadUrlData;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0012\u001a\u00020\u0011J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00112\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/lib_web/LoadUrlData;",
        "",
        "originUrl",
        "",
        "source",
        "Lcom/transsion/lib_web/download_render/utils/RenderSource;",
        "<init>",
        "(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)V",
        "getOriginUrl",
        "()Ljava/lang/String;",
        "setOriginUrl",
        "(Ljava/lang/String;)V",
        "getSource",
        "()Lcom/transsion/lib_web/download_render/utils/RenderSource;",
        "setSource",
        "(Lcom/transsion/lib_web/download_render/utils/RenderSource;)V",
        "htmlUseRemote",
        "",
        "htmlUseRemoteEnable",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private htmlUseRemote:Z

.field private originUrl:Ljava/lang/String;

.field private source:Lcom/transsion/lib_web/download_render/utils/RenderSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)V
    .locals 4

    const-string v0, "originUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 2
    :try_start_0
    sget-object p1, Lcm/f;->c:Lcm/f$a;

    invoke-virtual {p1}, Lcm/f$a;->a()Lcm/f;

    move-result-object p1

    const-string p2, "dr_config"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    move-object v2, p1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    const-string v2, "{}"

    .line 3
    :cond_2
    const-class p1, Lcom/transsion/lib_web/download_render/data/config/ConfigData;

    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/data/config/ConfigData;

    .line 4
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->getHtmlUseRemote()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/lib_web/LoadUrlData;->htmlUseRemote:Z

    .line 5
    sget-object p2, Lpl/h;->a:Lpl/h;

    const-string v0, "DR_Config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", htmlUseRemote:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 6
    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/lib_web/LoadUrlData;-><init>(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/lib_web/LoadUrlData;Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;ILjava/lang/Object;)Lcom/transsion/lib_web/LoadUrlData;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/LoadUrlData;->copy(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)Lcom/transsion/lib_web/LoadUrlData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/lib_web/download_render/utils/RenderSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)Lcom/transsion/lib_web/LoadUrlData;
    .locals 1

    .line 1
    const-string v0, "originUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/lib_web/LoadUrlData;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/transsion/lib_web/LoadUrlData;-><init>(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/lib_web/LoadUrlData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/lib_web/LoadUrlData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 27
    .line 28
    if-eq v1, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getOriginUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lcom/transsion/lib_web/download_render/utils/RenderSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final htmlUseRemoteEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/LoadUrlData;->htmlUseRemote:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setOriginUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSource(Lcom/transsion/lib_web/download_render/utils/RenderSource;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/LoadUrlData;->originUrl:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/lib_web/LoadUrlData;->source:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "LoadUrlData(originUrl="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", source="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
