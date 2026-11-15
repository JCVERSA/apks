.class public abstract Lff6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lvz4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lvz4;->d()Lvz4;

    move-result-object v0

    sput-object v0, Lff6;->a:Lvz4;

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ll96;
    .locals 0

    invoke-static {p0, p1, p2}, Lff6;->m(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ll96;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lff6;->k(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lorg/schabi/newpipe/extractor/Info;)V

    return-void
.end method

.method public static synthetic c(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0

    invoke-static {p0, p1}, Lff6;->l(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method public static d(ZILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lxm9;)Lxm9;
    .locals 1

    invoke-static {p1}, Lff6;->e(I)V

    new-instance v0, Ldf6;

    invoke-direct {v0, p1, p2, p3}, Ldf6;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    invoke-virtual {p4, v0}, Lxm9;->e(Lzf1;)Lxm9;

    move-result-object p4

    if-eqz p0, :cond_0

    sget-object p0, Lff6;->a:Lvz4;

    invoke-virtual {p0, p1, p2, p3}, Lvz4;->g(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lff6;->n(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lb96;

    move-result-object p0

    invoke-virtual {p4}, Lxm9;->w()Lb96;

    move-result-object p1

    invoke-static {p0, p1}, Lb96;->b(Ll96;Ll96;)Lr14;

    move-result-object p0

    invoke-virtual {p0}, Lr14;->e()Lb96;

    move-result-object p0

    invoke-virtual {p0}, Lb96;->l()Lxm9;

    move-result-object p4

    :goto_0
    return-object p4
.end method

.method public static e(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "serviceId is NO_SERVICE_ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f()V
    .locals 1

    invoke-static {}, Lvz4;->d()Lvz4;

    move-result-object v0

    invoke-virtual {v0}, Lvz4;->i()V

    return-void
.end method

.method public static g()Lc23;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Le23;->l(Lokhttp3/OkHttpClient$Builder;)Le23;

    move-result-object v0

    invoke-static {}, Lvz4;->d()Lvz4;

    move-result-object v1

    invoke-virtual {v1}, Lvz4;->a()V

    return-object v0
.end method

.method public static h()I
    .locals 1

    sget-object v0, Lce9;->a:Lvxc;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->q()I

    move-result v0

    return v0
.end method

.method public static i(ILjava/lang/String;)Lxm9;
    .locals 3

    invoke-static {p0}, Lff6;->e(I)V

    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    new-instance v1, Lcf6;

    invoke-direct {v1, p0, p1}, Lcf6;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lxm9;->j(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, p0, p1, v0, v1}, Lff6;->d(ZILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lff6;->g()Lc23;

    move-result-object v0

    invoke-static {p0}, Lfo5;->b(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-static {p0}, Lfo5;->a(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/schabi/newpipe/extractor/a;->h(Lc23;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V

    return-void
.end method

.method public static synthetic k(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 1

    sget-object v0, Lff6;->a:Lvz4;

    invoke-virtual {v0, p0, p1, p3, p2}, Lvz4;->f(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    return-void
.end method

.method public static synthetic l(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/a;->f(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ll96;
    .locals 1

    sget-object v0, Lff6;->a:Lvz4;

    invoke-virtual {v0, p0, p1, p2}, Lvz4;->b(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lb96;->g(Ljava/lang/Object;)Lb96;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb96;->e()Lb96;

    move-result-object p0

    return-object p0
.end method

.method public static n(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lb96;
    .locals 1

    invoke-static {p0}, Lff6;->e(I)V

    new-instance v0, Lef6;

    invoke-direct {v0, p0, p1, p2}, Lef6;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    invoke-static {v0}, Lb96;->d(Ljava/util/concurrent/Callable;)Lb96;

    move-result-object p0

    return-object p0
.end method
