.class public final Lcom/transsion/home/enum/HomeTabId$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/enum/HomeTabId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/enum/HomeTabId$a;-><init>()V

    return-void
.end method

.method private final c()I
    .locals 1

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lij/o;->a:Lij/o;

    .line 10
    .line 11
    invoke-virtual {v0}, Lij/o;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Kids_Education:Lcom/transsion/home/enum/HomeTabId;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Education:Lcom/transsion/home/enum/HomeTabId;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Education:Lcom/transsion/home/enum/HomeTabId;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {}, Lcom/transsion/home/enum/HomeTabId;->access$getEducationList$cp()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    sget-object v0, Lij/o;->a:Lij/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/o;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Kids_Animation:Lcom/transsion/home/enum/HomeTabId;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Animation:Lcom/transsion/home/enum/HomeTabId;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lij/o;->a:Lij/o;

    .line 10
    .line 11
    invoke-virtual {v0}, Lij/o;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Kids_Movie:Lcom/transsion/home/enum/HomeTabId;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Movie:Lcom/transsion/home/enum/HomeTabId;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Movie:Lcom/transsion/home/enum/HomeTabId;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Music:Lcom/transsion/home/enum/HomeTabId;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->MusicOperate:Lcom/transsion/home/enum/HomeTabId;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_TVShow:Lcom/transsion/home/enum/HomeTabId;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->TVShow:Lcom/transsion/home/enum/HomeTabId;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public final h(Ljava/lang/Integer;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    sget-object p2, Lcom/transsion/home/enum/HomeTabId;->Education:Lcom/transsion/home/enum/HomeTabId;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eq v2, p2, :cond_2

    .line 19
    .line 20
    :goto_0
    invoke-static {}, Lcom/transsion/home/enum/HomeTabId;->access$getEducationList$cp()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    :cond_2
    :goto_1
    return v0

    .line 35
    :cond_3
    invoke-direct {p0}, Lcom/transsion/home/enum/HomeTabId$a;->c()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eq v2, p2, :cond_6

    .line 47
    .line 48
    :goto_2
    invoke-static {}, Lcom/transsion/home/enum/HomeTabId;->access$getEducationList$cp()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    move v0, v1

    .line 62
    :cond_6
    :goto_3
    return v0
.end method
